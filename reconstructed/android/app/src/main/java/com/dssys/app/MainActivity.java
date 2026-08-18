package com.dssys.app

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

/**
 * 大师兄影视 - 主 Activity
 *
 * 注册原生插件:
 *   - flutter_android_sign: 获取 APK 签名证书 SHA1
 */
class MainActivity : FlutterActivity() {

    companion object {
        const val CHANNEL_FLUTTER_ANDROID_SIGN = "flutter_android_sign"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // 注册 flutter_android_sign 插件
        val channel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL_FLUTTER_ANDROID_SIGN
        )
        channel.setMethodCallHandler(SignPlugin(context))
    }
}