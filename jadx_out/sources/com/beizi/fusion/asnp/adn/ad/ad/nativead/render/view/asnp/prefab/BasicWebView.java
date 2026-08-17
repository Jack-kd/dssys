package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.CookieManager;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class BasicWebView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    protected d f12747a;

    public static class b extends WebChromeClient {
        private b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            if (callback != null) {
                callback.invoke(str, false, false);
            }
        }
    }

    public interface d {
        void a();

        void a(Context context, String str, boolean z2);
    }

    public BasicWebView(@NonNull Context context) {
        super(context);
        a();
    }

    private void a() {
        d();
        c();
    }

    private void c() {
        setWebViewClient(new c());
        setWebChromeClient(new b());
    }

    private void d() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setBuiltInZoomControls(false);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportZoom(false);
        settings.setUseWideViewPort(false);
        settings.setEnableSmoothTransition(true);
        settings.setLightTouchEnabled(false);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setSavePassword(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setMixedContentMode(0);
        WebView.setWebContentsDebuggingEnabled(false);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setGeolocationEnabled(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        CookieManager cookieManager = CookieManager.getInstance();
        if (cookieManager != null) {
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setScrollBarStyle(0);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollbarOverlay(false);
    }

    public boolean b() {
        int type = getHitTestResult().getType();
        return type == 7 || type == 8 || type == 4 || type == 2 || type == 3;
    }

    public void setWebViewClientListener(d dVar) {
        this.f12747a = dVar;
    }

    public BasicWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public boolean a(String str) {
        return str.startsWith("http");
    }

    public BasicWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    public BasicWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a();
    }

    public class c extends WebViewClient {
        private c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            d dVar = BasicWebView.this.f12747a;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            String string = webResourceRequest.getUrl().toString();
            if (!BasicWebView.this.a(string)) {
                return true;
            }
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            if (requestHeaders == null || requestHeaders.isEmpty()) {
                requestHeaders = new HashMap<>();
            }
            requestHeaders.put("X-Requested-With", "");
            webView.loadUrl(string, requestHeaders);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!BasicWebView.this.a(str)) {
                return true;
            }
            HashMap map = new HashMap();
            map.put("X-Requested-With", "");
            webView.loadUrl(str, map);
            return true;
        }
    }
}
