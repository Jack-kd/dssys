package com.smartdigimkt.q1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.smartdigimkt.v1.p3;

/* loaded from: classes5.dex */
public final class y extends com.smartdigimkt.f1.e {

    /* renamed from: b, reason: collision with root package name */
    public final String f42714b;

    /* renamed from: c, reason: collision with root package name */
    public g f42715c;

    public y(String str) {
        this.f42714b = str;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            StringBuilder sb = new StringBuilder("javascript:");
            com.smartdigimkt.t1.h hVarA = com.smartdigimkt.t1.h.a();
            sb.append(!TextUtils.isEmpty(hVarA.f44216a) ? hVarA.f44216a : com.smartdigimkt.t1.h.f44214e);
            webView.evaluateJavascript(sb.toString(), new x());
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // com.smartdigimkt.f1.e, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        g gVar;
        try {
            if (!TextUtils.equals(str, this.f42714b) && (gVar = this.f42715c) != null) {
                ((p3) gVar).a(str);
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
