package io.flutter.plugins.webviewflutter;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.FlutterEngine;

/* loaded from: classes5.dex */
public interface WebViewFlutterAndroidExternalApi {
    @Nullable
    static WebView getWebView(@NonNull FlutterEngine flutterEngine, long j2) {
        WebViewFlutterPlugin webViewFlutterPlugin = (WebViewFlutterPlugin) flutterEngine.getPlugins().get(WebViewFlutterPlugin.class);
        if (webViewFlutterPlugin == null || webViewFlutterPlugin.getInstanceManager() == null) {
            return null;
        }
        Object androidWebkitLibraryPigeonInstanceManager = webViewFlutterPlugin.getInstanceManager().getInstance(j2);
        if (androidWebkitLibraryPigeonInstanceManager instanceof WebView) {
            return (WebView) androidWebkitLibraryPigeonInstanceManager;
        }
        return null;
    }
}
