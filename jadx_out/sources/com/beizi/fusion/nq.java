package com.beizi.fusion;

import android.webkit.CookieManager;
import android.webkit.WebView;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public abstract class nq {
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

    public static void c(WebView webView) {
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
            webView.getSettings().setAllowFileAccess(false);
            webView.getSettings().setAllowContentAccess(false);
            webView.getSettings().setSavePassword(false);
            webView.getSettings().setLoadWithOverviewMode(true);
            webView.getSettings().setAllowFileAccessFromFileURLs(false);
            webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
            CookieManager cookieManager = CookieManager.getInstance();
            if (cookieManager != null) {
                cookieManager.setAcceptThirdPartyCookies(webView, true);
            }
            webView.getSettings().setCacheMode(-1);
            WebView.setWebContentsDebuggingEnabled(false);
            webView.getSettings().setGeolocationEnabled(false);
        } catch (Throwable unused) {
        }
    }

    public static void a(WebView webView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (webView == null) {
            return;
        }
        try {
            WebView.class.getDeclaredMethod("onPause", null).invoke(webView, null);
        } catch (Exception unused) {
        }
    }
}
