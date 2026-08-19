package com.smartdigimkt.q1;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;

/* loaded from: classes5.dex */
public final class w extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final MraidBaseWebView f42712a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.f1.f f42713b;

    public w(MraidBaseWebView mraidBaseWebView) {
        this.f42712a = mraidBaseWebView;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0141 A[Catch: all -> 0x01d4, TryCatch #2 {all -> 0x01d4, blocks: (B:81:0x013b, B:84:0x0141, B:85:0x0149, B:110:0x018c, B:114:0x0199, B:113:0x0197, B:115:0x019d, B:119:0x01aa, B:118:0x01a8, B:120:0x01ae, B:121:0x01b9, B:122:0x01c4, B:126:0x01d1, B:125:0x01cf, B:87:0x014d, B:90:0x0157, B:93:0x0161, B:96:0x016a, B:99:0x0174), top: B:137:0x013b }] */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onJsPrompt(android.webkit.WebView r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, android.webkit.JsPromptResult r14) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q1.w.onJsPrompt(android.webkit.WebView, java.lang.String, java.lang.String, java.lang.String, android.webkit.JsPromptResult):boolean");
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i2) {
        super.onProgressChanged(webView, i2);
    }
}
