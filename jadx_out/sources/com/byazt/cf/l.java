package com.byazt.cf;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.byazt.dnb.s;
import com.byazt.ymw.u;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 864, 34})
/* loaded from: classes2.dex */
public class l {
    public WeakReference<Context> hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18842l = true;
    public boolean jx = true;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18841j = true;

    /* renamed from: w, reason: collision with root package name */
    public boolean f18844w = true;

    /* renamed from: a, reason: collision with root package name */
    public boolean f18840a = true;
    public boolean eb = true;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18843s = true;

    private l(Context context) {
        this.hp = new WeakReference<>(context);
    }

    public static l hp(Context context) {
        return new l(context);
    }

    public l l(boolean z2) {
        this.jx = z2;
        return this;
    }

    private void l(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            u.hp(th.toString());
        }
    }

    public l hp(boolean z2) {
        this.f18843s = z2;
        return this;
    }

    public void hp(final com.byazt.ikh.j jVar) {
        s.hp(new Runnable() { // from class: com.byazt.cf.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.hp(jVar.getWebView());
            }
        });
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void hp(WebView webView) {
        if (webView == null || this.hp.get() == null) {
            return;
        }
        l(webView);
        WebSettings settings = webView.getSettings();
        hp(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception unused) {
        }
        try {
            if (this.jx) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable unused2) {
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(this.f18841j);
        settings.setDomStorageEnabled(this.f18844w);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(true ^ this.eb);
        settings.setDisplayZoomControls(false);
        if (Build.VERSION.SDK_INT < 28) {
            this.f18843s = false;
        }
        try {
            boolean z2 = this.f18843s;
            if (!z2) {
                webView.setLayerType(0, null);
            } else if (z2) {
                webView.setLayerType(2, null);
            }
        } catch (Throwable unused3) {
        }
    }

    private void hp(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            u.hp(th.toString());
        }
    }

    public static String hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || "0".equals(str2) || !str.contains("{{ad_id}}")) {
            return null;
        }
        return "javascript:(function () {    var JS_ACTLOG_URL = '" + str.replace("{{ad_id}}", str2) + "';    var head = document.getElementsByTagName('head')[0];    var script = document.createElement('script');    script.type = 'text/javascript';    script.src = JS_ACTLOG_URL;    head?.appendChild(script);})();";
    }
}
