package com.ubix.ssp.ad.e.c0;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.w.k;
import com.ubix.ssp.ad.e.y.a.a;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class c extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private a.b f46802a;

    /* renamed from: b, reason: collision with root package name */
    private long f46803b;

    public c(Activity activity) {
        super(activity);
        this.f46803b = 0L;
        a(activity);
    }

    public void a(int i2, HashMap<String, String> map) {
        try {
            if (this.f46802a != null) {
                k.a(getContext().getApplicationContext()).a(this.f46802a, map, i2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMaterial(a.b bVar) {
        this.f46802a = bVar;
    }

    public c(Context context) {
        super(context);
        this.f46803b = 0L;
        a(context);
    }

    @SuppressLint({"SetJavaScriptEnabled", "JavascriptInterface"})
    private void a(Context context) {
        setAnimationCacheEnabled(true);
        setDrawingCacheEnabled(true);
        setOverScrollMode(2);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        CookieManager.getInstance().setAcceptCookie(true);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setGeolocationEnabled(true);
        settings.setAllowContentAccess(false);
        settings.setSavePassword(false);
        settings.setSaveFormData(true);
        settings.setCacheMode(-1);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setLoadsImagesAutomatically(true);
        settings.setBlockNetworkImage(false);
        settings.setBlockNetworkLoads(false);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setSaveFormData(true);
        settings.setMixedContentMode(0);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        try {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMaterial(byte[] bArr) {
        try {
            this.f46803b = System.currentTimeMillis();
            if (bArr == null) {
                u.b("adBytes==null");
            } else {
                this.f46802a = com.ubix.ssp.ad.e.y.a.a.a(bArr).f47442d;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46803b = 0L;
        a(context);
    }

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46803b = 0L;
        a(context);
    }
}
