/// RSA 配置解密模块
///
/// 从 libapp.so 偏移 0x404e94 (RSA decrypt) 和 0x79773c (config builder) 逆向工程
///
/// 流程:
///   1. App 启动时通过 SECRET_PARSE_API_URL 获取加密的 secret
///   2. 使用 RSA 私钥解密 secret，得到 API 域名
///   3. 将 URL 中的 "https://xdd" 占位符替换为真实域名
///
/// RSA 私钥:
///   从 _Ajg 类 (libapp.so, zXa 静态字段) 的 pp+0x160d8 载荷中提取
///   通过两阶段解码: hex→bytes → XOR/ror 解密
///   1024-bit RSA 密钥, 指数 65537

import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:pointycastle/asymmetric/pkcs1.dart';
import 'package:pointycastle/asymmetric/rsa.dart';
import 'constants.dart';

/// RSA 私钥参数
/// 从 _Ajg 载荷 (pp+0x160d8) 恢复的 1024-bit RSA 密钥, 指数 65537
///
/// 参数均为十六进制字符串 (去除冒号):
///   modulus          = n = p*q
///   privateExponent  = d
///   prime1           = p
///   prime2           = q
class RsaPrivateKeyParams {
  static const String modulusHex =
      '00ef689ac8becacedf9811f7c357740dfbd1010963d302c1d412375ec6fd59'
      '28aee2511cd4c7be5ee6e7cd3c5a40f0816e7b995117ab46b3bdf359fd1a1b'
      '109037169ad5be5f59a90a594e5adf1b6e75b028fb07a9e9911719dc0d613f'
      '7749c0f72ad99fa9cb572fc9ec327771526522cf5b34b02ba84891f0a56b01'
      'fd4f3522d7';

  static const String privateExponentHex =
      '463e7df3daaf2ce5c3fbb9a3921c5622059ff53e59e25c36ba258ee479df58'
      '257ff7e6aab3f4b269b3a7af4697f93930ce891c9702451b65e76a06ee4af4'
      'a02b486572c69fd5ca6e1bd2c88455e33caaaf466dfef89473c7f8bf97fcd9'
      '977a6c9dc191d1d6553d3e22c954cb21f28e9a01ace407c8a365cb0d332619'
      '5121f7e9';

  static const String prime1Hex =
      '00fbc7ab9d75533e39971e41b554990a57149ea3d115298d9d17630138a40f'
      '315339b7a69c6254dde2ffed520f5ad8c48fd2ef18ffd6c97ea0ca8d7329cf'
      '0146d5';

  static const String prime2Hex =
      '00f36bda059d298c1cf92fae597fcccc5ccb715e3935b485cb4185d20c6c19'
      'a3249ca195f4e604ebf1c26f08f75174e72764499d722ee2e10232f16e3aac'
      'd9f0fb';
}

class ConfigManager {
  static final ConfigManager _instance = ConfigManager._();
  factory ConfigManager() => _instance;
  ConfigManager._();

  String? _apiDomain;
  bool _initialized = false;

  /// 获取 API 基础 URL
  String get apiBaseUrl {
    if (_apiDomain != null) {
      return 'https://$_apiDomain';
    }
    // 回退到占位符
    return 'https://xdd';
  }

  /// 是否已初始化
  bool get isInitialized => _initialized;

  /// 初始化配置
  ///
  /// 对应 native 函数: 0x79773c (config builder)
  /// 流程:
  ///   1. 从 SECRET_PARSE_API_URL 获取加密的 secret
  ///   2. 使用 RSA 私钥解密
  ///   3. 解析出 API 域名
  Future<void> initialize() async {
    if (_initialized) return;

    try {
      // 1. 获取加密的 secret
      final encryptedSecret = await _fetchSecret();

      // 2. RSA 解密
      final decrypted = _rsaDecrypt(encryptedSecret);

      // 3. 解析域名
      _apiDomain = _parseDomain(decrypted);

      _initialized = true;
    } catch (e) {
      // 解密失败时使用默认域名
      _initialized = true;
    }
  }

  /// 获取加密的 secret
  /// 对应 native 函数: parse_secret (pp+0x1eac8)
  Future<String> _fetchSecret() async {
    // 实际实现中会通过 HTTP 请求获取
    // 这里返回占位符，实际值由网络请求获取
    return '';
  }

  /// RSA 解密
  /// 对应 native 函数: 0x404e94 (RSA decrypt)
  String _rsaDecrypt(String encryptedBase64) {
    try {
      final keyBytes = base64.decode(encryptedBase64);

      // 直接用恢复的私钥参数构造 RSAPrivateKey
      // pointycastle 3.x: RSAPrivateKey(modulus, exponent, p, q)
      final key = RSAPrivateKey(
        BigInt.parse(RsaPrivateKeyParams.modulusHex, radix: 16),
        BigInt.parse(RsaPrivateKeyParams.privateExponentHex, radix: 16),
        BigInt.parse(RsaPrivateKeyParams.prime1Hex, radix: 16),
        BigInt.parse(RsaPrivateKeyParams.prime2Hex, radix: 16),
      );

      final cipher = PKCS1Encoding(RSAEngine())
        ..init(false, PrivateKeyParameter<RSAPrivateKey>(key));

      final decrypted = cipher.process(Uint8List.fromList(keyBytes));
      return utf8.decode(decrypted);
    } catch (e) {
      return '';
    }
  }

  /// 从解密后的 secret 中解析 API 域名
  String _parseDomain(String decrypted) {
    // secret 格式: JSON 或特定格式的配置字符串
    // 提取域名部分
    try {
      final json = jsonDecode(decrypted) as Map<String, dynamic>;
      return json['domain'] as String? ?? '';
    } catch (_) {
      return decrypted.trim();
    }
  }

  /// 替换 URL 中的占位符
  /// 将 "https://xdd" 替换为真实 API 域名
  String resolveUrl(String url) {
    if (url.startsWith(API_PLACEHOLDER)) {
      return url.replaceFirst(API_PLACEHOLDER, apiBaseUrl);
    }
    return url;
  }
}