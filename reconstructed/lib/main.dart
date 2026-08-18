/// 大师兄影视 - 应用入口
///
/// 逆向工程重构版本 v4.0.0
///
/// 原始架构:
///   - Flutter + Riverpod 状态管理
///   - GoRouter 路由
///   - 广告 SDK: Pangle, GDT 等
///   - 网络层: 自定义 HTTP 客户端 + Dio
///   - 存储: SharedPreferences + SQLite
///
/// 启动流程:
///   1. 初始化配置 (ConfigManager)
///   2. 获取设备签名 (FlutterAndroidSign)
///   3. 初始化 API 客户端 (ApiClient)
///   4. 启动应用 UI

import 'package:flutter/material.dart';
import 'core/api_client.dart';
import 'core/config_manager.dart';
import 'core/native_sign.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 启动配置初始化
  await _initApp();

  runApp(const DsVideoApp());
}

/// 初始化应用
Future<void> _initApp() async {
  // 1. 初始化配置管理器 - 获取 API 域名
  final configManager = ConfigManager();
  await configManager.initialize();

  // 2. 获取设备签名
  String deviceId = '';
  try {
    deviceId = await FlutterAndroidSign.getDeviceId();
  } catch (_) {
    // 获取失败时使用空字符串
  }

  // 3. 初始化 API 客户端
  final apiClient = ApiClient();
  apiClient.init(deviceId: deviceId);
}

/// 应用根组件
class DsVideoApp extends StatelessWidget {
  const DsVideoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '大师兄影视',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.5,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}