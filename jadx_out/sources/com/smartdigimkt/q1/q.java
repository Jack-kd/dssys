package com.smartdigimkt.q1;

import android.net.http.SslError;
import android.webkit.WebView;
import com.smartdigimkt.sdk.basead.mraid.MraidWebView;

/* loaded from: classes5.dex */
public final class q extends c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f42699a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f42700b;

    public q(r rVar) {
        this.f42700b = rVar;
    }

    @Override // com.smartdigimkt.f1.f
    public final void a(WebView webView, String str) {
        if (this.f42699a) {
            return;
        }
        this.f42699a = true;
        if (com.anythink.core.common.res.d.f7446a.equals(str)) {
            r rVar = this.f42700b;
            String str2 = rVar.f42705e;
            s sVar = rVar.f42706f;
            if (sVar != null) {
                sVar.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4598o, com.anythink.core.common.inner.b.b.f4572O));
                return;
            }
            return;
        }
        h.a().getClass();
        com.smartdigimkt.g1.a.a(webView);
        r rVar2 = this.f42700b;
        MraidWebView mraidWebView = rVar2.f42707g;
        if (mraidWebView != null) {
            com.smartdigimkt.e0.t.f40026b.put(rVar2.f42708h, mraidWebView);
        }
        r rVar3 = this.f42700b;
        String str3 = rVar3.f42705e;
        s sVar2 = rVar3.f42706f;
        if (sVar2 != null) {
            sVar2.a();
        }
    }

    @Override // com.smartdigimkt.q1.c, com.smartdigimkt.f1.f
    public final void a(int i2, String str) {
        if (this.f42699a) {
            return;
        }
        this.f42699a = true;
        com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, i2 + "_" + str);
        String str2 = this.f42700b.f42705e;
        fVar.a();
        s sVar = this.f42700b.f42706f;
        if (sVar != null) {
            sVar.a(fVar);
        }
    }

    @Override // com.smartdigimkt.q1.c, com.smartdigimkt.f1.f
    public final void a(SslError sslError) {
        if (this.f42699a) {
            return;
        }
        this.f42699a = true;
        com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, sslError != null ? sslError.toString() : "onReceivedSslError");
        String str = this.f42700b.f42705e;
        fVar.a();
        s sVar = this.f42700b.f42706f;
        if (sVar != null) {
            sVar.a(fVar);
        }
    }
}
