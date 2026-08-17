package io.flutter.plugins.webviewflutter;

import android.webkit.GeolocationPermissions;
import androidx.annotation.NonNull;

/* loaded from: classes5.dex */
public class GeolocationPermissionsCallbackProxyApi extends PigeonApiGeolocationPermissionsCallback {
    public GeolocationPermissionsCallbackProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiGeolocationPermissionsCallback
    public void invoke(@NonNull GeolocationPermissions.Callback callback, @NonNull String str, boolean z2, boolean z3) {
        callback.invoke(str, z2, z3);
    }
}
