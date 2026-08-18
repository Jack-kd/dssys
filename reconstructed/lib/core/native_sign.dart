/// flutter_android_sign 插件
///
/// 从原始 APK 的 smali_classes3/G0/a.smali 和 G0/b.smali 逆向工程
///
/// 功能: 获取 APK 签名证书的 SHA1 指纹，作为 deviceId
///
/// 原始实现:
///   - G0/a.smali: MethodChannel 分发器，处理 "getSign" 方法调用
///   - G0/b.smali: 实际签名提取逻辑
///     - 获取 PackageManager
///     - 获取包签名信息 (GET_SIGNATURES)
///     - 解析 X509 证书
///     - 计算 SHA1 指纹
///     - 格式化为 "AA:BB:CC:..." 十六进制字符串

import 'package:flutter/services.dart';
import '../core/constants.dart';

class FlutterAndroidSign {
  static const MethodChannel _channel =
      MethodChannel(ChannelNames.flutterAndroidSign);

  /// 获取设备签名 (APK 签名证书 SHA1)
  ///
  /// 对应 Dart 层 getSign 方法 (0x7c7d40)
  /// 通过 MethodChannel 调用原生 getSign
  ///
  /// 返回格式: "AA:BB:CC:DD:EE:FF:..." (SHA1 指纹的十六进制表示)
  static Future<String> getSign() async {
    try {
      final result = await _channel.invokeMethod<String>(ChannelNames.getSign);
      return result ?? '';
    } on PlatformException catch (e) {
      throw SignException('Failed to get device sign: ${e.message}');
    }
  }

  /// 获取设备 ID (与 getSign 相同，用于 API 请求)
  static Future<String> getDeviceId() async {
    return getSign();
  }
}

/// 签名异常
class SignException implements Exception {
  final String message;
  SignException(this.message);

  @override
  String toString() => 'SignException: $message';
}