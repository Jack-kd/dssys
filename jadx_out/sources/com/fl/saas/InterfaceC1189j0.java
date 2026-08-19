package com.fl.saas;

import android.content.Context;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;

/* renamed from: com.fl.saas.j0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public interface InterfaceC1189j0 {
    InterfaceC1189j0 a(AdParams adParams);

    InterfaceC1189j0 a(NativeLoadListener nativeLoadListener);

    InterfaceC1189j0 a(String str, String str2);

    void a(Context context);

    void clearCache();

    void destroy();

    C1188j getAdSource();

    void setCache();

    InterfaceC1189j0 setContext(Context context);

    InterfaceC1189j0 setLinkId(String str);
}
