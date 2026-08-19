package io.flutter.plugins;

import F0.h;
import G0.a;
import H0.d;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.alexmercerind.media_kit_video.MediaKitVideoPlugin;
import com.github.dart_lang.jni.JniPlugin;
import com.github.dart_lang.jni_flutter.JniFlutterPlugin;
import com.tekartik.sqflite.SqflitePlugin;
import dev.fluttercommunity.plus.battery.BatteryPlusPlugin;
import g1.C1422a;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin;
import io.flutter.plugins.urllauncher.UrlLauncherPlugin;
import io.flutter.plugins.webviewflutter.WebViewFlutterPlugin;
import l.C1713a;
import o1.e;
import p0.C1750a;
import p1.C1751a;
import q0.C1757a;
import q1.f;
import r0.C1761a;
import r1.C1763b;
import s0.C1767b;
import w0.C1790a;
import x0.C1799a;

@Keep
/* loaded from: classes5.dex */
public final class GeneratedPluginRegistrant {
    private static final String TAG = "GeneratedPluginRegistrant";

    public static void registerWith(@NonNull FlutterEngine flutterEngine) {
        try {
            flutterEngine.getPlugins().add(new C1422a());
        } catch (Exception e2) {
            Log.e(TAG, "Error registering plugin app_settings, com.spencerccf.app_settings.AppSettingsPlugin", e2);
        }
        try {
            flutterEngine.getPlugins().add(new BatteryPlusPlugin());
        } catch (Exception e3) {
            Log.e(TAG, "Error registering plugin battery_plus, dev.fluttercommunity.plus.battery.BatteryPlusPlugin", e3);
        }
        try {
            flutterEngine.getPlugins().add(new e());
        } catch (Exception e4) {
            Log.e(TAG, "Error registering plugin connectivity_plus, dev.fluttercommunity.plus.connectivity.ConnectivityPlugin", e4);
        }
        try {
            flutterEngine.getPlugins().add(new C1751a());
        } catch (Exception e5) {
            Log.e(TAG, "Error registering plugin device_info_plus, dev.fluttercommunity.plus.device_info.DeviceInfoPlusPlugin", e5);
        }
        try {
            flutterEngine.getPlugins().add(new C1799a());
        } catch (Exception e6) {
            Log.e(TAG, "Error registering plugin flutter_advert_channel, com.flutter.gg.qb.flutter_gg_qb.FlutterGgPlugin", e6);
        }
        try {
            flutterEngine.getPlugins().add(new C1750a());
        } catch (Exception e7) {
            Log.e(TAG, "Error registering plugin flutter_analytics, com.flutter.analytics.flutter_analytics.FlutterAnalyticsPlugin", e7);
        }
        try {
            flutterEngine.getPlugins().add(new a());
        } catch (Exception e8) {
            Log.e(TAG, "Error registering plugin flutter_android_sign, com.flutter.sign.flutter_android_sign.FlutterAndroidSignPlugin", e8);
        }
        try {
            flutterEngine.getPlugins().add(new C1757a());
        } catch (Exception e9) {
            Log.e(TAG, "Error registering plugin flutter_back_home, com.flutter.backhome.flutter_back_home.FlutterBackHomePlugin", e9);
        }
        try {
            flutterEngine.getPlugins().add(new C1761a());
        } catch (Exception e10) {
            Log.e(TAG, "Error registering plugin flutter_brightness_volume, com.flutter.brightness_volume.BrightnessVolumePlugin", e10);
        }
        try {
            flutterEngine.getPlugins().add(new d());
        } catch (Exception e11) {
            Log.e(TAG, "Error registering plugin flutter_curl_task, com.flutter.task.flutter_curl_task.FlutterCurlTaskPlugin", e11);
        }
        try {
            flutterEngine.getPlugins().add(new C1790a());
        } catch (Exception e12) {
            Log.e(TAG, "Error registering plugin flutter_direction, com.flutter.flutter_direction.FlutterDirectionPlugin", e12);
        }
        try {
            flutterEngine.getPlugins().add(new C1767b());
        } catch (Exception e13) {
            Log.e(TAG, "Error registering plugin flutter_dlna, com.flutter.dlna.flutter_dlna.FlutterDlnaPlugin", e13);
        }
        try {
            flutterEngine.getPlugins().add(new h());
        } catch (Exception e14) {
            Log.e(TAG, "Error registering plugin flutter_pip, com.flutter.pip.flutter_pip.FlutterPipPlugin", e14);
        }
        try {
            flutterEngine.getPlugins().add(new JniPlugin());
        } catch (Exception e15) {
            Log.e(TAG, "Error registering plugin jni, com.github.dart_lang.jni.JniPlugin", e15);
        }
        try {
            flutterEngine.getPlugins().add(new JniFlutterPlugin());
        } catch (Exception e16) {
            Log.e(TAG, "Error registering plugin jni_flutter, com.github.dart_lang.jni_flutter.JniFlutterPlugin", e16);
        }
        try {
            flutterEngine.getPlugins().add(new C1713a());
        } catch (Exception e17) {
            Log.e(TAG, "Error registering plugin media_kit_libs_android_video, com.alexmercerind.media_kit_libs_android_video.MediaKitLibsAndroidVideoPlugin", e17);
        }
        try {
            flutterEngine.getPlugins().add(new MediaKitVideoPlugin());
        } catch (Exception e18) {
            Log.e(TAG, "Error registering plugin media_kit_video, com.alexmercerind.media_kit_video.MediaKitVideoPlugin", e18);
        }
        try {
            flutterEngine.getPlugins().add(new f());
        } catch (Exception e19) {
            Log.e(TAG, "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin", e19);
        }
        try {
            flutterEngine.getPlugins().add(new SharedPreferencesPlugin());
        } catch (Exception e20) {
            Log.e(TAG, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", e20);
        }
        try {
            flutterEngine.getPlugins().add(new SqflitePlugin());
        } catch (Exception e21) {
            Log.e(TAG, "Error registering plugin sqflite_android, com.tekartik.sqflite.SqflitePlugin", e21);
        }
        try {
            flutterEngine.getPlugins().add(new UrlLauncherPlugin());
        } catch (Exception e22) {
            Log.e(TAG, "Error registering plugin url_launcher_android, io.flutter.plugins.urllauncher.UrlLauncherPlugin", e22);
        }
        try {
            flutterEngine.getPlugins().add(new C1763b());
        } catch (Exception e23) {
            Log.e(TAG, "Error registering plugin wakelock_plus, dev.fluttercommunity.plus.wakelock.WakelockPlusPlugin", e23);
        }
        try {
            flutterEngine.getPlugins().add(new WebViewFlutterPlugin());
        } catch (Exception e24) {
            Log.e(TAG, "Error registering plugin webview_flutter_android, io.flutter.plugins.webviewflutter.WebViewFlutterPlugin", e24);
        }
    }
}
