package com.smartdigimkt.s2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.smartdigimkt.m3.q;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;

/* loaded from: classes5.dex */
public final class a extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final b f43109a;

    /* renamed from: b, reason: collision with root package name */
    public int f43110b = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f43111c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43112d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f43113e = 0;

    public a(b bVar) {
        this.f43109a = bVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        b bVar = this.f43109a;
        if (bVar != null) {
            bVar.onWebPageFinish(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        b bVar = this.f43109a;
        if (bVar != null) {
            bVar.onWebPageStart(webView, str);
            WebProgressBarView webProgressBarView = this.f43109a.getWebProgressBarView();
            if (webProgressBarView != null) {
                webProgressBarView.setVisibility(0);
                webProgressBarView.setProgress(0);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i2, String str, String str2) {
        b bVar = this.f43109a;
        if (bVar != null) {
            bVar.onWebPageLoadError(webView, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        b bVar = this.f43109a;
        if (bVar == null) {
            return true;
        }
        bVar.onWebFinish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int i2;
        if (!this.f43111c) {
            if (this.f43112d && (i2 = this.f43113e) > 0) {
                int i3 = this.f43110b + 1;
                this.f43110b = i3;
                if (i3 > i2) {
                    this.f43111c = true;
                    b bVar = this.f43109a;
                    if (bVar != null) {
                        com.smartdigimkt.m3.c baseAdContent = bVar.getBaseAdContent();
                        com.smartdigimkt.l3.a baseAdRequestInfo = this.f43109a.getBaseAdRequestInfo();
                        if (baseAdContent != null && baseAdRequestInfo != null) {
                            com.smartdigimkt.y3.h.a(baseAdContent, baseAdRequestInfo, "3", this.f43109a.getOriginalUrl());
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(str) && !com.anythink.core.common.res.d.f7446a.equals(str)) {
                b bVar2 = this.f43109a;
                if (bVar2 != null) {
                    bVar2.recordRedirectUrl(str);
                }
                b bVar3 = this.f43109a;
                if (bVar3 != null && bVar3.supportDeeplinkJump()) {
                    q qVarA = com.smartdigimkt.c0.e.a(webView.getContext(), str, this.f43109a.getBaseAdContent());
                    if (qVarA.f42141b) {
                        b bVar4 = this.f43109a;
                        if (bVar4 != null) {
                            bVar4.callbackClickResult(qVarA);
                        }
                        return true;
                    }
                    b bVar5 = this.f43109a;
                    if (bVar5 != null) {
                        bVar5.callbackClickResult(qVarA);
                    }
                    q qVarD = com.smartdigimkt.c0.e.d(str);
                    b bVar6 = this.f43109a;
                    if (bVar6 != null) {
                        bVar6.callbackClickResult(qVarD);
                    }
                    if (!TextUtils.equals(qVarD.f42143d, str)) {
                        webView.loadUrl(qVarD.f42143d);
                        return true;
                    }
                }
                char[] cArr = com.smartdigimkt.c5.k.f39779a;
                if (!com.smartdigimkt.c5.k.f39786h.matcher(str.toLowerCase()).matches()) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}
