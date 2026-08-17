package com.smartdigimkt.e0;

import com.smartdigimkt.sdk.basead.mraid.MraidWebView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39992a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39993b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f39994c;

    public h(r rVar, String str, String str2) {
        this.f39994c = rVar;
        this.f39992a = str;
        this.f39993b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            String str = this.f39992a;
            String str2 = this.f39993b;
            MraidWebView mraidWebView = new MraidWebView(SDKContext.getInstance().d());
            g gVar = new g(this);
            r rVar = this.f39994c;
            com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.q1.r(rVar.f40017h, rVar.f40015f, 5, false, str2, gVar, mraidWebView, str));
        } catch (Throwable th) {
            this.f39994c.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4569L, com.anythink.core.common.inner.b.b.f4578U + th.getMessage()));
        }
    }
}
