package io.flutter.plugins.webviewflutter;

import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import kotlin.Result;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public class CookieManagerProxyApi extends PigeonApiCookieManager {
    public CookieManagerProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCookieManager
    @NonNull
    public String getCookies(@NonNull CookieManager cookieManager, @NonNull String str) {
        return cookieManager.getCookie(str);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCookieManager
    @NonNull
    public CookieManager instance() {
        return CookieManager.getInstance();
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCookieManager
    public void removeAllCookies(@NonNull CookieManager cookieManager, @NonNull final Function1<? super Result<Boolean>, kotlin.j> function1) {
        cookieManager.removeAllCookies(new ValueCallback() { // from class: io.flutter.plugins.webviewflutter.M
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                ResultCompat.success((Boolean) obj, function1);
            }
        });
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCookieManager
    public void setAcceptThirdPartyCookies(@NonNull CookieManager cookieManager, @NonNull WebView webView, boolean z2) {
        cookieManager.setAcceptThirdPartyCookies(webView, z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCookieManager
    public void setCookie(@NonNull CookieManager cookieManager, @NonNull String str, @NonNull String str2) {
        cookieManager.setCookie(str, str2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCookieManager
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
