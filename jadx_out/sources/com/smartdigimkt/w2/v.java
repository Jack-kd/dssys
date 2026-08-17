package com.smartdigimkt.w2;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class v extends b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f44907a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean[] f44908b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w f44909c;

    public v(w wVar, boolean z2, boolean[] zArr) {
        this.f44909c = wVar;
        this.f44907a = z2;
        this.f44908b = zArr;
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView) {
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.e0.s((WTWebView) com.smartdigimkt.e0.t.f40027c.remove(this.f44909c.f44915f)));
        this.f44909c.f44913d.release();
        com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, "onRenderProcessGone");
        String str = this.f44909c.f44912c;
        fVar.a();
        new Throwable();
        boolean[] zArr = this.f44908b;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        x xVar = this.f44909c.f44916g;
        if (xVar != null) {
            xVar.a(fVar);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void b(WebView webView) {
        w wVar = this.f44909c;
        if (wVar.f44914e == 1 && !this.f44907a) {
            com.smartdigimkt.e0.t.f40027c.put(wVar.f44915f, wVar.f44913d);
        }
        w wVar2 = this.f44909c;
        String str = wVar2.f44912c;
        boolean[] zArr = this.f44908b;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        x xVar = wVar2.f44916g;
        if (xVar != null) {
            xVar.a();
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, int i2, String str, String str2) {
        com.smartdigimkt.i0.f fVar;
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.e0.s((WTWebView) com.smartdigimkt.e0.t.f40027c.remove(this.f44909c.f44915f)));
        this.f44909c.f44913d.release();
        if (i2 == -999) {
            fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4604u, i2 + "_" + str);
        } else {
            fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, i2 + "_" + str);
        }
        String str3 = this.f44909c.f44912c;
        fVar.a();
        new Throwable();
        boolean[] zArr = this.f44908b;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        x xVar = this.f44909c.f44916g;
        if (xVar != null) {
            xVar.a(fVar);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.e0.s((WTWebView) com.smartdigimkt.e0.t.f40027c.remove(this.f44909c.f44915f)));
        this.f44909c.f44913d.release();
        com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4585b, sslError != null ? sslError.toString() : "onReceivedSslError");
        String str = this.f44909c.f44912c;
        fVar.a();
        new Throwable();
        boolean[] zArr = this.f44908b;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        x xVar = this.f44909c.f44916g;
        if (xVar != null) {
            xVar.a(fVar);
        }
    }
}
