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
import 'package:pointycastle/export.dart';
import 'package:pointycastle/key_parsers/rsa_parser.dart';
import 'constants.dart';

/// RSA 私钥 (PEM 格式)
/// 从 _Ajg 载荷恢复，模数:
/// 00:ef:68:9a:c8:be:ca:ce:df:98:11:f7:c3:57:74:0d:fb:...
const String RSA_PRIVATE_KEY_PEM = '''-----BEGIN PRIVATE KEY-----
MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAO9omsi+ys7fmBH3
w1d0DfvRAQlj0wLB1BI3Xsb9WSiu4lEc1Me+XubnzTxaQPCBbnuZURerRrO981n9
GhsQkDcWmtW+X1mpCllOWt8bbnWwKPsHqemRFxncDWE/d0nA9yrZn6nLVy/J7DJ3
cVJlIs9bNLArqEiR8KVrAf1PNSLXAgMBAAECgYBGPn3z2q8s5cP7uaOSHFYiBZ/1
PlniXDa6JY7ked9YJX/35qqz9LJps6evRpf5OTDOiRyXAkUbZedqBu5K9KArSGVy
xp/Vym4b0siEVeM8qq9Gbf74lHPH+L+X/NmXemydwZHR1lU9PiLJVMsh8o6aAazk
B8ijZcsNMyYZUSH36QJBAPvHq511Uz45lx5BtVSZClcUnqPRFSmNnRdjATikDzFT
ObemnGJU3eL/7VIPWtjEj9LvGP/WyX6gyo1zKc8BRtUCQQDza9oFnSmMHPkvrll/
zMxcy3FeOTW0hctBhdIMbBmjJJyhlfTmBOvxwm8I91F05ydkSZ1yLuLhAjLxbjqs
2fD7AkB/KOHQvW+UTqu22ULGfiCNyFkyrSc9/EqphBQa0ijmJX1R9nCm7Ou/eLgY
KK8eKW/l/WGn3IeZT4XdGJu185QdAkBthqmivQRktuSoP5qlllCdsCxiaPtxLoI2
CTBpxnoCngab7g0zMiO3s/Sh5CYSo69lwHnHVrFe7M5fM2nTPHzhAkEAiJETUvYF
wCVKNGTYMzUg7v3QblqYXB+IhzcU37sHZOn6a46V5eJDadavIvuEmoxJHWTybi+1
ZkN7LeUUg4ylCw==
-----END PRIVATE KEY-----''';

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
      final parser = RSAKeyParser();
      final key = parser.parse(RSA_PRIVATE_KEY_PEM) as RSAPrivateKey;

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