package com.byazt.ikh;

import android.graphics.Paint;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
public interface j extends jx {
    void addJavascriptInterface(Object obj, String str);

    boolean canGoBack();

    void clearCache(boolean z2);

    void clearHistory();

    void clearView();

    void computeScroll();

    void destroy();

    void evaluateJavascript(String str, ValueCallback<String> valueCallback);

    int getContentHeight();

    int getProgress();

    String getUrl();

    String getUserAgentString();

    View getView();

    WebView getWebView();

    void goBack();

    void hp(String str, String str2, Object obj);

    void loadUrl(String str);

    void onPause();

    void onResume();

    void pauseTimers();

    void removeAllViews();

    void removeJavascriptInterface(String str);

    void resumeTimers();

    void setAllowFileAccess(boolean z2);

    void setAllowFileAccessFromFileURLs(boolean z2);

    void setAllowUniversalAccessFromFileURLs(boolean z2);

    void setAlpha(float f2);

    void setAppCacheEnabled(boolean z2);

    void setBackgroundColor(int i2);

    void setBlockNetworkImage(boolean z2);

    void setBuiltInZoomControls(boolean z2);

    void setCacheMode(int i2);

    void setDatabaseEnabled(boolean z2);

    void setDefaultFontSize(int i2);

    void setDefaultTextEncodingName(String str);

    void setDisplayZoomControls(boolean z2);

    void setDomStorageEnabled(boolean z2);

    void setDownloadListener(DownloadListener downloadListener);

    void setJavaScriptCanOpenWindowsAutomatically(boolean z2);

    void setJavaScriptEnabled(boolean z2);

    void setLayerType(int i2, Paint paint);

    void setLayoutAlgorithm(WebSettings.LayoutAlgorithm layoutAlgorithm);

    void setLoadWithOverviewMode(boolean z2);

    void setMediaPlaybackRequiresUserGesture(boolean z2);

    void setMixedContentMode(int i2);

    void setNetworkAvailable(boolean z2);

    void setOnScrollChangeListener(View.OnScrollChangeListener onScrollChangeListener);

    void setOverScrollMode(int i2);

    void setSavePassword(boolean z2);

    void setSupportZoom(boolean z2);

    void setUseWideViewPort(boolean z2);

    void setUserAgentString(String str);

    void setVisibility(int i2);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);
}
