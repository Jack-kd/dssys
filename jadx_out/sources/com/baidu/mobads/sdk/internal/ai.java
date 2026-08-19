package com.baidu.mobads.sdk.internal;

import android.webkit.WebView;
import org.json.JSONObject;

/* loaded from: classes2.dex */
class ai implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ JSONObject f10982a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ WebView f10983b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ ae f10984c;

    public ai(ae aeVar, JSONObject jSONObject, WebView webView) {
        this.f10984c = aeVar;
        this.f10982a = jSONObject;
        this.f10983b = webView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f10982a == null || this.f10983b == null) {
            return;
        }
        this.f10983b.loadUrl("javascript:window.sdkCallback.userInteractCb(\"" + this.f10982a.toString().replace("\"", "\\\"") + "\")");
    }
}
