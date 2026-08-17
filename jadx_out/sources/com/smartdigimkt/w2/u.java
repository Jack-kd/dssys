package com.smartdigimkt.w2;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class u extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public c f44905a;

    /* renamed from: b, reason: collision with root package name */
    public g f44906b;

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        c cVar = this.f44905a;
        if (cVar != null) {
            cVar.a(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        c cVar = this.f44905a;
        if (cVar != null) {
            cVar.a(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
        c cVar = this.f44905a;
        if (cVar != null) {
            cVar.a(webView, i2, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        sslError.toString();
        c cVar = this.f44905a;
        if (cVar != null) {
            cVar.a(webView, sslErrorHandler, sslError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (("onRenderProcessGone:" + renderProcessGoneDetail) != null) {
            renderProcessGoneDetail.toString();
        }
        if (webView != null) {
            try {
                ViewGroup viewGroup = (ViewGroup) webView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(webView);
                }
                if (webView instanceof WTWebView) {
                    ((WTWebView) webView).release();
                } else {
                    webView.destroy();
                }
            } catch (Throwable unused) {
            }
        }
        c cVar = this.f44905a;
        if (cVar != null) {
            cVar.a(webView);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00f9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fa  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w2.u.shouldInterceptRequest(android.webkit.WebView, java.lang.String):android.webkit.WebResourceResponse");
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) throws com.smartdigimkt.b3.a {
        if (TextUtils.isEmpty(str) || !str.startsWith("atwt:")) {
            c cVar = this.f44905a;
            if (cVar != null) {
                cVar.b(webView, str);
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
        if (!TextUtils.isEmpty(str) && str.startsWith("atwt:")) {
            g gVar = this.f44906b;
            gVar.getClass();
            if (h.f44887a[0].equals("atwt:")) {
                gVar.f44884a = h.f44888b;
                this.f44906b.a(str);
            }
        }
        return true;
    }
}
