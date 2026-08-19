package com.kwad.auth.login;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.kwad.sdk.api.loader.Loader;
import com.kwad.sdk.api.proxy.BaseProxyActivity;
import com.kwad.sdk.api.proxy.IActivityProxy;

@Keep
/* loaded from: classes4.dex */
public class KwadRouteHandlerActivity extends BaseProxyActivity {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f31464b = 0;

    @Override // com.kwad.sdk.api.proxy.BaseProxyActivity
    @NonNull
    public IActivityProxy getDelegate(Context context) {
        return (IActivityProxy) Loader.get().newComponentProxy(context, KwadRouteHandlerActivity.class, this);
    }
}
