package com.smartdigimkt.a3;

import android.text.TextUtils;
import android.webkit.WebView;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.w2.d;
import com.smartdigimkt.w2.h;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static volatile a f39314a;

    public static a a() {
        if (f39314a == null) {
            synchronized (a.class) {
                try {
                    if (f39314a == null) {
                        f39314a = new a();
                    }
                } finally {
                }
            }
        }
        return f39314a;
    }

    public final void b(WebView webView, String str, String str2) {
        try {
            if ((webView instanceof WTWebView) && ((WTWebView) webView).isDestroyed()) {
                return;
            }
            webView.loadUrl(a(str, str2));
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void b(Object obj, String str) {
        final String str2;
        if (obj instanceof d) {
            final d dVar = (d) obj;
            if (TextUtils.isEmpty(str)) {
                str2 = "javascript:window.ATWebTPL.onSuccess('" + dVar.f44880g + "','');";
            } else {
                String[] strArr = h.f44887a;
                if (!TextUtils.isEmpty(str)) {
                    str = com.smartdigimkt.c5.d.b(str);
                }
                str2 = "javascript:window.ATWebTPL.onSuccess('" + dVar.f44880g + "','" + str + "');";
            }
            String str3 = dVar.f44880g;
            e.a().a(new Runnable() { // from class: W0.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f629b.b(dVar, str2);
                }
            });
        }
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "javascript:window.ATWebTPL.fireEvent('" + str + "', '');";
        }
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str2)) {
            str2 = com.smartdigimkt.c5.d.b(str2);
        }
        return "javascript:window.ATWebTPL.fireEvent('" + str + "','" + str2 + "');";
    }

    public final void a(final WebView webView, final String str, final String str2) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        e.a().a(new Runnable() { // from class: W0.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f635b.b(webView, str, str2);
            }
        });
    }

    public final void a(Object obj, String str) {
        final String str2;
        if (obj instanceof d) {
            final d dVar = (d) obj;
            if (TextUtils.isEmpty(str)) {
                str2 = "javascript:window.ATWebTPL.onFailure('" + dVar.f44880g + "','');";
            } else {
                String[] strArr = h.f44887a;
                if (!TextUtils.isEmpty(str)) {
                    str = com.smartdigimkt.c5.d.b(str);
                }
                str2 = "javascript:window.ATWebTPL.onFailure('" + dVar.f44880g + "','" + str + "');";
            }
            String str3 = dVar.f44880g;
            e.a().a(new Runnable() { // from class: W0.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f632b.a(dVar, str2);
                }
            });
        }
    }

    public final void b(d dVar, String str) {
        WTWebView wTWebView = dVar.f44874a;
        if (wTWebView == null || wTWebView.isDestroyed()) {
            return;
        }
        try {
            dVar.f44874a.loadUrl(str);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(d dVar, String str) {
        WTWebView wTWebView = dVar.f44874a;
        if (wTWebView == null || wTWebView.isDestroyed()) {
            return;
        }
        try {
            dVar.f44874a.loadUrl(str);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
