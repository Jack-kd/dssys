package com.anythink.core.basead.ui.web;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.anythink.core.common.d.u;
import com.anythink.core.common.res.d;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.o;

/* loaded from: classes.dex */
public class BaseWebView extends WebView {

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1658b = false;

    /* renamed from: a, reason: collision with root package name */
    protected boolean f1659a;

    public BaseWebView(Context context) {
        super(context);
        a();
    }

    private static void a(Context context) {
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void b() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setCacheMode(-1);
    }

    private void c() {
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (this.f1659a) {
            return;
        }
        this.f1659a = true;
        ak.a((View) this);
        stopLoading();
        setWebChromeClient(null);
        setWebViewClient(null);
        clearHistory();
        clearCache(true);
        getSettings().setJavaScriptEnabled(false);
        loadUrl(d.f7446a);
        removeAllViews();
        super.destroy();
    }

    public boolean isDestroyed() {
        return this.f1659a;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, u.a(getContext()).b());
    }

    private void a() {
        c();
        com.anythink.core.basead.ui.a.a.a(this);
        o.a(this);
        if (f1658b) {
            return;
        }
        a(getContext());
        f1658b = true;
    }

    public BaseWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public BaseWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
