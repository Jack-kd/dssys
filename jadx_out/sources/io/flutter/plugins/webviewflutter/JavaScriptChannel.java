package io.flutter.plugins.webviewflutter;

import android.webkit.JavascriptInterface;
import androidx.annotation.NonNull;
import kotlin.Result;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public class JavaScriptChannel {
    private final JavaScriptChannelProxyApi api;
    final String javaScriptChannelName;

    public JavaScriptChannel(@NonNull String str, @NonNull JavaScriptChannelProxyApi javaScriptChannelProxyApi) {
        this.javaScriptChannelName = str;
        this.api = javaScriptChannelProxyApi;
    }

    public static /* synthetic */ kotlin.j b(Result result) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postMessage$1(String str) {
        this.api.postMessage(this, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.P
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return JavaScriptChannel.b((Result) obj);
            }
        });
    }

    @JavascriptInterface
    public void postMessage(@NonNull final String str) {
        this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.Q
            @Override // java.lang.Runnable
            public final void run() {
                this.f51020b.lambda$postMessage$1(str);
            }
        });
    }
}
