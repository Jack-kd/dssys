/// MD5 签名算法
///
/// 从 libapp.so 偏移 0x7894e0 (sign_md5 函数) 逆向工程
///
/// 签名流程:
///   1. 收集所有请求参数
///   2. 按 key 字母序排序
///   3. 拼接为 "key1=value1&key2=value2&..." 格式
///   4. 追加密钥串 (SECRET_KEY)
///   5. 计算 MD5 哈希
///   6. 返回 32 位小写十六进制字符串
///
/// 对应 native 函数调用链:
///   0x7894e0 (sign_md5) -> 0x44d6a8 (deobfuscate)
///                       -> 0x722f00 (accumulate_params)
///                       -> 0x77c86c (md5_compute)

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'constants.dart';

class SignatureGenerator {
  /// 计算请求签名
  ///
  /// [params] 请求参数 Map (不包含 sign_md5)
  /// 返回 32 位 MD5 签名字符串
  static String generate(Map<String, dynamic> params) {
    // 1. 过滤掉 sign_md5 自身 (如果存在)
    final filteredParams = Map<String, dynamic>.from(params);
    filteredParams.remove(ParamNames.signMd5);

    // 2. 按 key 字母序排序
    final sortedKeys = filteredParams.keys.toList()..sort();

    // 3. 拼接参数字符串: "key1=value1&key2=value2&..."
    final paramString = sortedKeys.map((key) {
      final value = filteredParams[key]?.toString() ?? '';
      return '$key=$value';
    }).join('&');

    // 4. 追加密钥
    final signString = paramString + SECRET_KEY;

    // 5. 计算 MD5
    final bytes = utf8.encode(signString);
    final digest = md5.convert(bytes);

    return digest.toString();
  }

  /// 验证签名
  static bool verify(Map<String, dynamic> params, String expectedSign) {
    final computed = generate(params);
    return computed == expectedSign;
  }
}