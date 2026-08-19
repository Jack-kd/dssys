package io.flutter.plugins.webviewflutter;

import android.annotation.SuppressLint;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import androidx.webkit.WebSettingsCompat;

/* loaded from: classes5.dex */
public class WebSettingsCompatProxyApi extends PigeonApiWebSettingsCompat {
    public WebSettingsCompatProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebSettingsCompat
    @SuppressLint({"RequiresFeature"})
    public void setPaymentRequestEnabled(@NonNull WebSettings webSettings, boolean z2) {
        WebSettingsCompat.setPaymentRequestEnabled(webSettings, z2);
    }
}
