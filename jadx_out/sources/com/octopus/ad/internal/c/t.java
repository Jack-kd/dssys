package com.octopus.ad.internal.c;

import android.annotation.SuppressLint;
import android.webkit.CookieManager;
import android.webkit.WebView;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes4.dex */
public class t {
    public static String a() {
        return null;
    }

    public static void b(WebView webView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (webView == null) {
            return;
        }
        try {
            WebView.class.getDeclaredMethod("onResume", null).invoke(webView, null);
        } catch (Exception unused) {
        }
    }

    public static void c(WebView webView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (webView == null) {
            return;
        }
        try {
            WebView.class.getDeclaredMethod("onPause", null).invoke(webView, null);
        } catch (Exception unused) {
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static void a(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            webView.getSettings().setBuiltInZoomControls(false);
            webView.getSettings().setSupportZoom(true);
            webView.getSettings().setUseWideViewPort(true);
            webView.getSettings().setJavaScriptEnabled(true);
            webView.getSettings().setMixedContentMode(0);
            webView.getSettings().setDomStorageEnabled(true);
            webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
            webView.getSettings().setAllowFileAccess(true);
            webView.getSettings().setAllowContentAccess(false);
            webView.getSettings().setSavePassword(false);
            webView.getSettings().setAllowFileAccessFromFileURLs(false);
            webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
            CookieManager cookieManager = CookieManager.getInstance();
            if (cookieManager != null) {
                cookieManager.setAcceptThirdPartyCookies(webView, true);
            } else {
                f.b(f.f34565a, "Failed to set Webview to accept 3rd party cookie");
            }
            webView.getSettings().setAppCachePath(webView.getContext().getCacheDir().getAbsolutePath());
            webView.getSettings().setAppCacheEnabled(true);
            webView.getSettings().setCacheMode(-1);
            WebView.setWebContentsDebuggingEnabled(false);
        } catch (Exception e2) {
            f.e(f.f34569e, "Unable update webview settings - Exception: " + e2.getMessage());
        }
    }
}
