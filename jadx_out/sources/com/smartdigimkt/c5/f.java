package com.smartdigimkt.c5;

import android.content.Context;
import android.webkit.WebView;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f39703a;

    public f(Context context) {
        this.f39703a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            WebView webView = new WebView(this.f39703a);
            j.a(webView);
            h.f39751k = webView.getSettings().getUserAgentString();
            y.a(this.f39703a, "sdm_adx_rp_sdk", com.smartdigimkt.v4.b.f44715a, h.f39751k);
        } catch (Throwable unused) {
        }
    }
}
