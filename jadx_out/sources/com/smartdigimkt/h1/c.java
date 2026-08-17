package com.smartdigimkt.h1;

import android.webkit.WebView;
import com.smartdigimkt.m3.q;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;

/* loaded from: classes5.dex */
public final class c implements com.smartdigimkt.s2.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40426a;

    public c(i iVar) {
        this.f40426a = iVar;
    }

    @Override // com.smartdigimkt.s2.b
    public final void callbackClickResult(q qVar) {
    }

    @Override // com.smartdigimkt.s2.b
    public final com.smartdigimkt.m3.c getBaseAdContent() {
        return null;
    }

    @Override // com.smartdigimkt.s2.b
    public final com.smartdigimkt.l3.a getBaseAdRequestInfo() {
        return null;
    }

    @Override // com.smartdigimkt.s2.b
    public final String getOriginalUrl() {
        return "";
    }

    @Override // com.smartdigimkt.s2.b
    public final WebProgressBarView getWebProgressBarView() {
        return null;
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebFinish() {
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebPageFinish(WebView webView, String str) {
        i iVar = this.f40426a;
        String str2 = iVar.f40432a;
        if (iVar.f40454w) {
            return;
        }
        iVar.f40454w = true;
        i.a(iVar);
        i iVar2 = this.f40426a;
        com.smartdigimkt.y3.h.a("1", iVar2.f40433b, iVar2.f40434c);
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebPageLoadError(WebView webView, String str) {
        i iVar = this.f40426a;
        if (iVar.f40454w) {
            return;
        }
        iVar.f40454w = true;
        iVar.f40436e.setVisibility(0);
        iVar.f40451t.setVisibility(8);
        i iVar2 = this.f40426a;
        com.smartdigimkt.y3.h.a("2", iVar2.f40433b, iVar2.f40434c);
    }

    @Override // com.smartdigimkt.s2.b
    public final void onWebPageStart(WebView webView, String str) {
    }

    @Override // com.smartdigimkt.s2.b
    public final void recordRedirectUrl(String str) {
    }

    @Override // com.smartdigimkt.s2.b
    public final boolean supportDeeplinkJump() {
        return true;
    }
}
