package com.kwad.components.core.offline.b.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.webview.BaseKsWebView;
import com.kwad.sdk.core.response.helper.c;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.webview.KsAdWebView;
import com.kwad.sdk.utils.ce;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a extends BaseKsWebView {
    private KsAdWebView acV;
    private boolean enableScroll;

    public a(@NonNull Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        setBackgroundColor(0);
        this.acV = new KsAdWebView(context);
        this.acV.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.acV.setBackgroundColor(0);
        this.acV.setClientConfig(this.acV.getClientConfig().b(new KsAdWebView.e() { // from class: com.kwad.components.core.offline.b.d.a.3
            @Override // com.kwad.sdk.core.webview.KsAdWebView.e
            public final void onPageFinished() {
                if (a.this.mWebLoadListener != null) {
                    a.this.mWebLoadListener.onPageFinished();
                }
            }

            @Override // com.kwad.sdk.core.webview.KsAdWebView.e
            public final void onPageStart() {
                if (a.this.mWebLoadListener != null) {
                    a.this.mWebLoadListener.onPageStart();
                }
            }

            @Override // com.kwad.sdk.core.webview.KsAdWebView.e
            public final void onReceivedHttpError(int i2, String str, String str2) {
                if (a.this.mWebLoadListener != null) {
                    a.this.mWebLoadListener.onReceivedHttpError(i2, str, str2);
                }
            }
        }).a(new KsAdWebView.b() { // from class: com.kwad.components.core.offline.b.d.a.2
            @Override // com.kwad.sdk.core.webview.KsAdWebView.b
            public final void onFailed() {
                if (a.this.mDeeplinkListener != null) {
                    a.this.mDeeplinkListener.onFailed();
                }
            }

            @Override // com.kwad.sdk.core.webview.KsAdWebView.b
            public final void onSuccess() {
                if (a.this.mDeeplinkListener != null) {
                    a.this.mDeeplinkListener.onSuccess();
                }
            }
        }).a(new KsAdWebView.d() { // from class: com.kwad.components.core.offline.b.d.a.1
            @Override // com.kwad.sdk.core.webview.KsAdWebView.d
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (a.this.mWebLoadListener != null) {
                    return a.this.mWebLoadListener.shouldOverrideUrlLoading(webView, str);
                }
                return false;
            }
        }));
        addView(this.acV);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public final void addJavascriptInterface(Object obj, String str) {
        this.acV.addJavascriptInterface(obj, str);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void callJs(String str) {
        ce.a(this.acV, str, (String) null);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final boolean canGoBack() {
        return this.acV.canGoBack();
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final boolean canGoForward() {
        return this.acV.canGoForward();
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void destroy() {
        this.acV.destroy();
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void goBack() {
        this.acV.goBack();
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void goForward() {
        this.acV.goForward();
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void loadUrl(String str) {
        this.acV.loadUrl(str);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView, android.view.View
    public final void scrollBy(int i2, int i3) {
        if (this.enableScroll) {
            this.acV.scrollBy(i2, i3);
        }
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView, android.view.View
    public final void scrollTo(int i2, int i3) {
        if (this.enableScroll) {
            this.acV.scrollTo(i2, i3);
        }
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAcceptThirdPartyCookies(boolean z2) {
        CookieManager.getInstance().setAcceptThirdPartyCookies(this.acV, z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAdCacheId(int i2, String str) {
        AdTemplate adTemplateA = c.a(com.kwad.components.core.offline.a.f.a.a.bp(i2), str);
        if (adTemplateA == null || this.acV.getClientConfig() == null) {
            return;
        }
        this.acV.getClientConfig().fo(adTemplateA);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAdTemplateString(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            AdTemplate adTemplate = new AdTemplate();
            adTemplate.parseJson(jSONObject);
            this.acV.getClientConfig().fo(adTemplate);
        } catch (Throwable unused) {
        }
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAllowContentAccess(boolean z2) {
        this.acV.getSettings().setAllowContentAccess(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAllowFileAccess(boolean z2) {
        this.acV.getSettings().setAllowFileAccess(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAllowFileAccessFromFileURLs(boolean z2) {
        this.acV.getSettings().setAllowFileAccessFromFileURLs(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setAllowUniversalAccessFromFileURLs(boolean z2) {
        this.acV.getSettings().setAllowUniversalAccessFromFileURLs(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setCacheMode(int i2) {
        this.acV.getSettings().setCacheMode(i2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setContextUniqId(int i2) {
        AdTemplate adTemplateR = c.r(com.kwad.components.core.offline.a.f.a.a.bp(i2));
        if (adTemplateR == null || this.acV.getClientConfig() == null) {
            return;
        }
        this.acV.getClientConfig().fo(adTemplateR);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setDebugEnabled(boolean z2) {
        WebView.setWebContentsDebuggingEnabled(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setDeeplinkEnabled(boolean z2) {
        if (this.acV.getClientConfig() != null) {
            this.acV.getClientConfig().bR(z2);
        }
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setEnableScroll(boolean z2) {
        this.enableScroll = z2;
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setEnableWebCache(boolean z2) {
        this.acV.setNeedHybridLoad(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setInnerDownloadEnabled(boolean z2) {
        if (this.acV.getClientConfig() != null) {
            this.acV.getClientConfig().bU(z2);
        }
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setJavaScriptEnabled(boolean z2) {
        this.acV.getSettings().setJavaScriptEnabled(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setMixedContentMode(int i2) {
        this.acV.getSettings().setMixedContentMode(i2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setSavePassword(boolean z2) {
        this.acV.getSettings().setSavePassword(z2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void setTextZoom(int i2) {
        this.acV.getSettings().setTextZoom(i2);
    }

    @Override // com.kwad.components.offline.api.core.webview.BaseKsWebView
    public final void callJs(String str, String str2) {
        ce.a(this.acV, str, str2);
    }
}
