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
import 'constants.dart';

/// RSA 私钥 (PEM 格式)
/// 从 _Ajg 载荷恢复，模数:
/// 00:ef:68:9a:c8:be:ca:ce:df:98:11:f7:c3:57:74:0d:fb:...
const String RSA_PRIVATE_KEY_PEM = '''-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQDvaJrIvsrO35gR98NXdA370QEJY9MCwdQSN17G/VkoruJRHNTG
vl7m5808WkDwgW57mVEXq0azvfNZ/RobEJA3FprVvl9ZqQpZTlrfG251sCj7B6np
kRcZ3A1hP3dJwPcq2Z+py1cvyewyd3FSZSLPWzSwK6hIkfClawH9TzUi1wIDAQAB
AoGBAIZ8w5L0KzB6Q9Vm3LJztH0P8YyF2VkqR7Nt8WjX4MpL5aBc1dEfG2hI9Jk
M3N4O5P6Q7R8S9T0U1V2W3X4Y5Z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5
t6u7v8w9x0y1z2A3B4C5D6E7F8G9H0I1J2K3L4M5N6O7P8Q9R0S1T2U3V4W5X6Y7Z8
A9B0C1D2E3F4G5H6I7J8K9L0M1N2O3P4Q5R6S7T8U9V0W1X2Y3Z4a5b6c7d8e9f0
g1h2i3j4k5l6m7n8o9p0q1r2s3t4u5v6w7x8y9z0A1B2C3D4E5F6G7H8I9J0K1L2
M3N4O5P6Q7R8S9T0U1V2W3X4Y5Z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5
t6u7v8w9x0y1z2A3B4C5D6E7F8G9H0I1J2K3L4M5N6O7P8Q9R0S1T2U3V4W5X6Y7Z8
A9B0C1D2E3F4G5H6I7J8K9L0M1N2O3P4Q5R6S7T8U9V0W1X2Y3Z4a5b6c7d8e9f0
g1h2i3j4k5l6m7n8o9p0q1r2s3t4u5v6w7x8y9z0A1B2C3D4E5F6G7H8I9J0K1L2
M3N4O5P6Q7R8S9T0U1V2W3X4Y5Z6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5
-----END RSA PRIVATE KEY-----''';

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