package com.smartdigimkt.w2;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class m implements c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebView f44894a;

    public m(WTWebView wTWebView) {
        this.f44894a = wTWebView;
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, String str, Bitmap bitmap) {
        WTWebView wTWebView = this.f44894a;
        if (wTWebView.f44094w == 0) {
            wTWebView.f44094w = System.currentTimeMillis();
        }
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.a(webView, str, bitmap);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final boolean b(WebView webView, String str) {
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            return cVar.b(webView, str);
        }
        return false;
    }

    @Override // com.smartdigimkt.w2.c
    public final void b(WebView webView) {
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.b(webView);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, int i2, String str, String str2) {
        int i3 = WTWebView.f44072B;
        this.f44894a.a("", "onReceivedError:" + i2 + "," + str);
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.a(webView, i2, str, str2);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        WTWebView wTWebView = this.f44894a;
        int i2 = WTWebView.f44072B;
        wTWebView.a("", "onReceivedSslError");
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.a(webView, sslErrorHandler, sslError);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, String str) {
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.a(webView, str);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView, int i2) {
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.a(webView, i2);
        }
    }

    @Override // com.smartdigimkt.w2.c
    public final void a(WebView webView) {
        WTWebView wTWebView = this.f44894a;
        int i2 = WTWebView.f44072B;
        wTWebView.a("", "onRenderProcessGone");
        c cVar = this.f44894a.f44081j;
        if (cVar != null) {
            cVar.a(webView);
        }
    }
}
