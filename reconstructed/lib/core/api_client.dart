/// HTTP API 客户端
///
/// 从原始 APK 逆向工程重构
/// 原始使用 Dio 或自定义 HTTP 客户端
///
/// 功能:
///   - 自动签名所有请求 (sign_md5)
///   - 请求/响应拦截
///   - 统一错误处理
///   - 域名动态替换

import 'dart:convert';
import 'package:dio/dio.dart';
import 'constants.dart';
import 'signature.dart';
import 'config_manager.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._();
  factory ApiClient() => _instance;
  ApiClient._();

  late final Dio _dio;
  final ConfigManager _config = ConfigManager();

  /// 设备标识 (APK 签名证书 SHA1)
  String? _deviceId;

  /// 用户 token
  String? _token;

  /// 初始化客户端
  void init({String? deviceId, String? token}) {
    _deviceId = deviceId;
    _token = token;

    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {
        'Content-Type': 'application/json',
        'User-Agent': 'Dalvik/2.1.0 (Linux; U; Android)',
      },
    ));

    // 请求拦截器 - 自动签名和域名替换
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        _onRequest(options);
        handler.next(options);
      },
      onResponse: (response, handler) {
        handler.next(response);
      },
      onError: (error, handler) {
        handler.next(error);
      },
    ));
  }

  /// 设置设备 ID
  void setDeviceId(String deviceId) {
    _deviceId = deviceId;
  }

  /// 设置 token
  void setToken(String token) {
    _token = token;
  }

  /// 请求拦截处理
  void _onRequest(RequestOptions options) {
    // 1. 域名替换 (https://xdd → 真实域名)
    if (options.path.startsWith(API_PLACEHOLDER)) {
      options.path = _config.resolveUrl(options.path);
    }

    // 2. 构建核心参数
    final coreParams = <String, dynamic>{
      ParamNames.deviceId: _deviceId ?? '',
      ParamNames.platform: 'android',
      ParamNames.version: '4.0.0',
      if (_token != null && _token!.isNotEmpty) ParamNames.token: _token,
      ParamNames.appKey: '',
    };

    // 3. 合并请求参数
    Map<String, dynamic> allParams;
    if (options.method == 'GET') {
      allParams = { ...coreParams, ...options.queryParameters };
      // 4. 计算签名
      final sign = SignatureGenerator.generate(allParams);
      allParams[ParamNames.signMd5] = sign;
      options.queryParameters = allParams;
    } else {
      // POST 请求
      if (options.data is Map) {
        allParams = { ...coreParams, ...options.data as Map<String, dynamic> };
      } else {
        allParams = coreParams;
      }
      final sign = SignatureGenerator.generate(allParams);
      allParams[ParamNames.signMd5] = sign;
      options.data = allParams;
    }
  }

  /// GET 请求
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get(
      path,
      queryParameters: queryParameters,
    );
    return _handleResponse(response);
  }

  /// POST 请求
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    final response = await _dio.post(
      path,
      data: data,
    );
    return _handleResponse(response);
  }

  /// 统一响应处理
  Map<String, dynamic> _handleResponse(Response response) {
    if (response.statusCode == 200) {
      if (response.data is String) {
        return jsonDecode(response.data) as Map<String, dynamic>;
      }
      return response.data as Map<String, dynamic>;
    }
    throw ApiException(
      code: response.statusCode ?? -1,
      message: response.statusMessage ?? 'Unknown error',
    );
  }

  /// 获取设备 ID
  String? get deviceId => _deviceId;

  /// 获取 token
  String? get token => _token;
}

/// API 异常
class ApiException implements Exception {
  final int code;
  final String message;

  ApiException({required this.code, required this.message});

  @override
  String toString() => 'ApiException($code): $message';
}