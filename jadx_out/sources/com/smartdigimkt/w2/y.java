package com.smartdigimkt.w2;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f44918a = 0;

    public static void a(int i2, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, WTWebView wTWebView, x xVar, Object obj, String str, String str2) {
        if (wTWebView == null) {
            com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, "wtWebView is null");
            fVar.a();
            xVar.a(fVar);
        } else {
            if (obj == null) {
                com.smartdigimkt.i0.f fVar2 = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, "h5 template not support this format");
                fVar2.a();
                xVar.a(fVar2);
            }
            com.smartdigimkt.b4.e.a().a(new w(i2, aVar, cVar, wTWebView, xVar, obj, str2, str));
        }
    }
}
