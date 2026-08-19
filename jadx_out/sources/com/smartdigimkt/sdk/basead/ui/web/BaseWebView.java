package com.smartdigimkt.sdk.basead.ui.web;

import android.content.Context;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.smartdigimkt.c5.j;
import com.smartdigimkt.r2.v;
import com.smartdigimkt.r2.y;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class BaseWebView extends WebView {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f44028b = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f44029a;

    public BaseWebView(Context context) {
        super(context);
        a();
    }

    public void a() {
        Looper.myLooper();
        Looper.getMainLooper();
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
        setWebChromeClient(new v(null));
        j.a(this);
        if (f44028b) {
            return;
        }
        getContext();
        f44028b = true;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (this.f44029a) {
            return;
        }
        this.f44029a = true;
        d.a(this);
        stopLoading();
        setWebChromeClient(null);
        setWebViewClient(null);
        clearHistory();
        clearCache(true);
        getSettings().setJavaScriptEnabled(false);
        loadUrl(com.anythink.core.common.res.d.f7446a);
        removeAllViews();
        super.destroy();
    }

    public boolean isDestroyed() {
        return this.f44029a;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        y.a(this);
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
