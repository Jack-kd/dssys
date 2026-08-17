package y0;

import B0.e;
import D0.b;
import android.app.Activity;
import io.flutter.embedding.engine.plugins.FlutterPlugin;

/* renamed from: y0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1803a {
    public static void a(FlutterPlugin.FlutterPluginBinding flutterPluginBinding, Activity activity) {
        flutterPluginBinding.getPlatformViewRegistry().registerViewFactory("com.flutter.advert/SplashAdView", new b(activity, flutterPluginBinding.getBinaryMessenger()));
        flutterPluginBinding.getPlatformViewRegistry().registerViewFactory("com.flutter.advert/NativeAdView", new e(activity, flutterPluginBinding.getBinaryMessenger()));
    }
}
