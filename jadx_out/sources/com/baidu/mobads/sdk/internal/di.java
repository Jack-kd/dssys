package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.baidu.mobads.sdk.api.BaiduHybridAdViewListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IXHybridAdRenderer;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class di extends bj {

    /* renamed from: a, reason: collision with root package name */
    private WebView f11488a;

    /* renamed from: t, reason: collision with root package name */
    private BaiduHybridAdViewListener f11489t;

    /* renamed from: u, reason: collision with root package name */
    private IXHybridAdRenderer f11490u;

    public di(WebView webView) {
        super(webView.getContext());
        this.f11488a = webView;
        webView.removeJavascriptInterface("searchBoxJavaBridge_");
        this.f11488a.removeJavascriptInterface("accessibility");
        this.f11488a.removeJavascriptInterface("accessibilityTraversal");
        this.f11488a.getSettings().setAllowContentAccess(false);
        this.f11488a.getSettings().setSavePassword(false);
        this.f11488a.getSettings().setAllowFileAccess(false);
    }

    public void a(BaiduHybridAdViewListener baiduHybridAdViewListener) {
        this.f11489t = baiduHybridAdViewListener;
    }

    public boolean b(WebView webView, String str) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f11490u;
        if (iXHybridAdRenderer == null) {
            return false;
        }
        return iXHybridAdRenderer.shouldOverrideUrlLoading(webView, str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h() throws JSONException {
        IXHybridAdRenderer iXHybridAdRenderer = (IXHybridAdRenderer) av.a(z.f11747k, bu.a(this.f11172i), (Class<?>[]) new Class[]{Context.class}, this.f11172i);
        this.f11490u = iXHybridAdRenderer;
        this.f11176m = iXHybridAdRenderer;
        if (this.f11177n) {
            return;
        }
        a();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void q() {
        super.q();
        BaiduHybridAdViewListener baiduHybridAdViewListener = this.f11489t;
        if (baiduHybridAdViewListener != null) {
            baiduHybridAdViewListener.onAdShow(0, null);
        }
    }

    public void a(WebView webView, String str, Bitmap bitmap) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f11490u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onPageStarted(webView, str, bitmap);
        }
    }

    public void a(WebView webView, String str) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f11490u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onPageFinished(webView, str);
        }
    }

    public void a(WebView webView, int i2, String str, String str2) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f11490u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onReceivedError(webView, i2, str, str2);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        super.h(iOAdEvent);
        BaiduHybridAdViewListener baiduHybridAdViewListener = this.f11489t;
        if (baiduHybridAdViewListener != null) {
            baiduHybridAdViewListener.onAdClick(0, null);
        }
    }

    public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f11490u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() throws JSONException {
        if (this.f11490u == null) {
            this.f11177n = false;
            return;
        }
        this.f11177n = true;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_JSSDK);
            this.f11490u.createProdHandler(jSONObject3);
            m();
            if (!TextUtils.isEmpty(this.f11180q)) {
                jSONObject.put("appid", this.f11180q);
            }
            jSONObject.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_JSSDK);
            jSONObject2.put("timeout", 10000);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.f11490u.loadAd(jSONObject, jSONObject2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(IOAdEvent iOAdEvent) {
        this.f11490u.setCustomerWebView(this.f11488a);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        super.a(str, i2, str2);
        BaiduHybridAdViewListener baiduHybridAdViewListener = this.f11489t;
        if (baiduHybridAdViewListener != null) {
            baiduHybridAdViewListener.onAdFailed(0, "", str);
        }
    }
}
