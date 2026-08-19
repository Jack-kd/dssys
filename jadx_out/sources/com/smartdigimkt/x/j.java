package com.smartdigimkt.x;

import android.webkit.WebView;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f45031a;

    public j(l lVar) {
        this.f45031a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView;
        String str = this.f45031a.f45033a;
        try {
            webView = new WebView(this.f45031a.f45039g);
        } catch (Throwable unused) {
            webView = null;
        }
        if (webView != null) {
            try {
                webView.destroy();
            } catch (Throwable unused2) {
            }
            this.f45031a.f45046n = Boolean.TRUE;
        } else {
            this.f45031a.f45046n = Boolean.FALSE;
        }
        String str2 = this.f45031a.f45033a;
    }
}
