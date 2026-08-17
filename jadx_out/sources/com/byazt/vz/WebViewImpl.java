package com.byazt.vz;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.app.NotificationCompat;
import com.byazt.ikh.j;
import com.byazt.ikh.jx;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, 1803})
/* loaded from: classes3.dex */
public class WebViewImpl extends BaseWebView implements j {
    public static boolean ud = false;
    public volatile boolean dy;
    public final com.byazt.ikh.l lv;
    public Map<String, hp> nu;

    public WebViewImpl(com.byazt.ikh.l lVar, Context context) {
        super(hp(context));
        this.dy = false;
        this.lv = lVar;
        l(context);
    }

    private static Context hp(Context context) {
        return context;
    }

    private void jx(Context context) {
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    @SuppressLint({"JavascriptInterface"})
    public void addJavascriptInterface(final Object obj, final String str) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.19
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebViewImpl.this.nu == null) {
                        WebViewImpl.this.nu = new HashMap();
                    }
                    l lVar = new l(obj, str, WebViewImpl.this.lv, WebViewImpl.this);
                    WebViewImpl.this.hashCode();
                    WebViewImpl.super.addJavascriptInterface(lVar, str);
                    WebViewImpl.this.nu.put(str, lVar);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public boolean canGoBack() {
        if (!hp()) {
            return false;
        }
        try {
            return super.canGoBack();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoBackOrForward(int i2) {
        try {
            return super.canGoBackOrForward(i2);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoForward() {
        try {
            return super.canGoForward();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void clearCache(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearCache(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void clearFormData() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearFormData();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void clearHistory() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearHistory();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void clearView() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.47
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearView();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.ikh.j
    public void computeScroll() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.16
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.computeScroll();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.vz.BaseWebView, android.webkit.WebView
    public void destroy() {
        if (this.dy) {
            return;
        }
        com.byazt.ikh.hp.hp(this);
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.27
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebViewImpl.this.dy) {
                        return;
                    }
                    WebViewImpl.this.l();
                    if (WebViewImpl.this.nu != null) {
                        Iterator it = WebViewImpl.this.nu.keySet().iterator();
                        while (it.hasNext()) {
                            WebViewImpl.super.removeJavascriptInterface((String) it.next());
                        }
                        WebViewImpl.this.nu = null;
                    }
                    WebViewImpl.super.destroy();
                    WebViewImpl.this.hashCode();
                    WebViewImpl.this.lv.hashCode();
                    WebViewImpl.this.dy = true;
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void evaluateJavascript(final String str, final ValueCallback<String> valueCallback) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.26
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.evaluateJavascript(str, valueCallback);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.vz.BaseWebView
    public WebChromeClient getChromeClient() {
        return this.jx;
    }

    @Override // com.byazt.vz.BaseWebView
    public com.byazt.ykc.l getClient() {
        return this.f26736l;
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public int getContentHeight() {
        if (hp()) {
            try {
                return super.getContentHeight();
            } catch (Throwable unused) {
                return 1;
            }
        }
        final Object obj = new Object();
        final int[] iArr = {-1};
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.7
            @Override // java.lang.Runnable
            public void run() {
                iArr[0] = WebViewImpl.super.getContentHeight();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            if (iArr[0] < 0) {
                synchronized (obj) {
                    obj.wait(5000L);
                }
            }
        } catch (InterruptedException unused2) {
        }
        return iArr[0];
    }

    @Override // com.byazt.vz.BaseWebView
    public Map<String, hp> getJavascriptInterfaces() {
        return this.nu;
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public int getProgress() {
        if (hp()) {
            try {
                return super.getProgress();
            } catch (Throwable unused) {
                return 100;
            }
        }
        final Object obj = new Object();
        final int[] iArr = {-1};
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.6
            @Override // java.lang.Runnable
            public void run() {
                iArr[0] = WebViewImpl.super.getProgress();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            if (iArr[0] < 0) {
                synchronized (obj) {
                    obj.wait(5000L);
                }
            }
        } catch (InterruptedException unused2) {
        }
        return iArr[0];
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public String getUrl() {
        if (hp()) {
            try {
                return super.getUrl();
            } catch (Throwable unused) {
            }
        }
        com.byazt.ykc.l lVar = this.f26736l;
        if (lVar != null) {
            return lVar.l();
        }
        return null;
    }

    @Override // com.byazt.ikh.j
    public String getUserAgentString() {
        if (hp()) {
            try {
                return getSettings().getUserAgentString();
            } catch (Throwable unused) {
                return "";
            }
        }
        final Object obj = new Object();
        final String[] strArr = {""};
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.25
            @Override // java.lang.Runnable
            public void run() {
                strArr[0] = WebViewImpl.this.getSettings().getUserAgentString();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            String str = strArr[0];
            if (str == null || str.length() == 0) {
                synchronized (obj) {
                    obj.wait(5000L);
                }
            }
        } catch (InterruptedException unused2) {
        }
        return strArr[0];
    }

    @Override // com.byazt.ikh.j
    public View getView() {
        return this;
    }

    @Override // com.byazt.ikh.j
    public WebView getWebView() {
        return this;
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void goBack() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.goBack();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(final int i2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.goBackOrForward(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void goForward() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.goForward();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.webkit.WebView
    public void loadData(final String str, final String str2, final String str3) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.56
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.loadData(str, str2, str3);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(final String str, final String str2, final String str3, final String str4, final String str5) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.58
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.loadDataWithBaseURL(str, str2, str3, str4, str5);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public void loadUrl(final String str, final Map<String, String> map) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.23
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.loadUrl(str, map);
                    com.byazt.ykc.l lVar = WebViewImpl.this.f26736l;
                    if (lVar != null) {
                        lVar.hp(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void onPause() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.24
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.onPause();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void onResume() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.4
            @Override // java.lang.Runnable
            public void run() {
                WebViewImpl.super.onResume();
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Pair<Boolean, Boolean> pairHp;
        jx.hp hpVar = this.hq;
        return (hpVar == null || (pairHp = hpVar.hp(this, motionEvent)) == null || !((Boolean) pairHp.first).booleanValue()) ? super.onTouchEvent(motionEvent) : ((Boolean) pairHp.second).booleanValue();
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void pauseTimers() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.48
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.pauseTimers();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void postUrl(final String str, final byte[] bArr) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.45
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.postUrl(str, bArr);
                    com.byazt.ykc.l lVar = WebViewImpl.this.f26736l;
                    if (lVar != null) {
                        lVar.hp(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void reload() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.60
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.reload();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.ViewGroup, com.byazt.ikh.j
    public void removeAllViews() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.50
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.removeAllViews();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void removeJavascriptInterface(final String str) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.28
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebViewImpl.this.dy) {
                        return;
                    }
                    WebViewImpl.this.hashCode();
                    WebViewImpl.super.removeJavascriptInterface(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void resumeTimers() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.49
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.resumeTimers();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setAllowFileAccess(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.46
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.jl = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setAllowFileAccess(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setAllowFileAccessFromFileURLs(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.52
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26733e = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setAllowFileAccessFromFileURLs(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setAllowUniversalAccessFromFileURLs(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.53
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26739q = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setAllowUniversalAccessFromFileURLs(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setAlpha(final float f2) {
        super.setAlpha(f2);
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.44
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setAlpha(f2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setAppCacheEnabled(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.29
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26731b = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setAppCacheEnabled(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.ikh.j
    public void setBackgroundColor(final int i2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26743w = Integer.valueOf(i2);
                    WebViewImpl.super.setBackgroundColor(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setBlockNetworkImage(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.51
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.gu = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setBlockNetworkImage(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setBuiltInZoomControls(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.35
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.ec = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setBuiltInZoomControls(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setCacheMode(final int i2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.22
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.di = Integer.valueOf(i2);
                    WebViewImpl.this.getSettings().setCacheMode(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setDatabaseEnabled(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.42
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.zy = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setDatabaseEnabled(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setDefaultFontSize(final int i2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.40
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26742v = Integer.valueOf(i2);
                    WebViewImpl.this.getSettings().setDefaultFontSize(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setDefaultTextEncodingName(final String str) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.39
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    webViewImpl.f26741u = str;
                    webViewImpl.getSettings().setDefaultTextEncodingName(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setDisplayZoomControls(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.21
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26738o = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setDisplayZoomControls(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setDomStorageEnabled(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.33
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.sz = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setDomStorageEnabled(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void setDownloadListener(final DownloadListener downloadListener) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    DownloadListener downloadListener2 = downloadListener;
                    webViewImpl.f26734j = downloadListener2;
                    WebViewImpl.super.setDownloadListener(downloadListener2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setJavaScriptCanOpenWindowsAutomatically(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.32
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26737n = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setJavaScriptCanOpenWindowsAutomatically(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setJavaScriptEnabled(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26732d = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setJavaScriptEnabled(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.ikh.j
    public void setLayerType(final int i2, final Paint paint) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.17
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setLayerType(i2, paint);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setLayoutAlgorithm(final WebSettings.LayoutAlgorithm layoutAlgorithm) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.36
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    webViewImpl.vv = layoutAlgorithm;
                    webViewImpl.getSettings().setLayoutAlgorithm(layoutAlgorithm);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setLoadWithOverviewMode(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.37
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.xs = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setLoadWithOverviewMode(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setMediaPlaybackRequiresUserGesture(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.55
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.eb = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setMediaPlaybackRequiresUserGesture(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setMixedContentMode(final int i2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.41
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26735k = Integer.valueOf(i2);
                    WebViewImpl.this.getSettings().setMixedContentMode(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void setNetworkAvailable(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.12
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.wv = Boolean.valueOf(z2);
                    WebViewImpl.super.setNetworkAvailable(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setOnScrollChangeListener(final View.OnScrollChangeListener onScrollChangeListener) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.57
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    View.OnScrollChangeListener onScrollChangeListener2 = onScrollChangeListener;
                    webViewImpl.f26730a = onScrollChangeListener2;
                    WebViewImpl.super.setOnScrollChangeListener(onScrollChangeListener2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.ikh.j
    public void setOverScrollMode(final int i2) {
        super.setOverScrollMode(i2);
        e.l().post(new Runnable() { // from class: com.byazt.vz.WebViewImpl.18
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setOverScrollMode(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setSavePassword(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.54
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f26740s = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setSavePassword(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setSupportZoom(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.30
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.ns = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setSupportZoom(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.jx
    public void setTouchEventListener(jx.hp hpVar) {
        this.hq = hpVar;
    }

    @Override // com.byazt.ikh.j
    public void setUseWideViewPort(final boolean z2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.31
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.cx = Boolean.valueOf(z2);
                    WebViewImpl.this.getSettings().setUseWideViewPort(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.ikh.j
    public void setUserAgentString(final String str) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.38
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.getSettings().setUserAgentString(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.ikh.j
    public void setVisibility(final int i2) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.43
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setVisibility(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void setWebChromeClient(final WebChromeClient webChromeClient) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    WebChromeClient webChromeClient2 = webChromeClient;
                    webViewImpl.jx = webChromeClient2;
                    WebViewImpl.super.setWebChromeClient(webChromeClient2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void setWebViewClient(final WebViewClient webViewClient) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewClient webViewClientHp = webViewClient;
                    if (webViewClientHp == null) {
                        webViewClientHp = new SSWebView.hp();
                    } else if (webViewClientHp instanceof com.byazt.ykc.l) {
                        webViewClientHp = ((com.byazt.ykc.l) webViewClientHp).hp();
                    }
                    WebViewImpl.this.f26736l = new com.byazt.ykc.l(webViewClientHp);
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    WebViewImpl.super.setWebViewClient(webViewImpl.f26736l);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.59
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.stopLoading();
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJavaScriptEnabled(String str) {
        WebSettings settings;
        try {
            if (!TextUtils.isEmpty(str) && (settings = getSettings()) != null && !ud) {
                if (Uri.parse(str).getScheme().equals(n.f36463z)) {
                    settings.setJavaScriptEnabled(false);
                } else {
                    settings.setJavaScriptEnabled(true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebView, com.byazt.ikh.j
    public void loadUrl(final String str) {
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.34
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.loadUrl(str);
                    com.byazt.ykc.l lVar = WebViewImpl.this.f26736l;
                    if (lVar != null) {
                        lVar.hp(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void j() {
        try {
            WebSettings settings = getSettings();
            if (settings != null) {
                settings.setSavePassword(false);
            }
        } catch (Throwable unused) {
        }
    }

    public WebViewImpl(com.byazt.ikh.l lVar, Context context, AttributeSet attributeSet) {
        super(hp(context), attributeSet);
        this.dy = false;
        this.lv = lVar;
        l(context);
    }

    private void l(Context context) {
        jx(context);
        j();
        jx();
    }

    private void jx() {
        try {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.vz.BaseWebView
    public void l() {
        super.l();
        hp(new Runnable() { // from class: com.byazt.vz.WebViewImpl.1
            @Override // java.lang.Runnable
            @SuppressLint({"[ByDesign3.3]AvoidContentOrFileExecuteJS", "SetJavaScriptEnabled"})
            public void run() {
                try {
                    WebSettings settings = WebViewImpl.this.getSettings();
                    WebViewImpl.this.removeAllViews();
                    WebViewImpl.this.stopLoading();
                    WebViewImpl.this.setWebChromeClient(null);
                    WebViewImpl.this.setWebViewClient(null);
                    WebViewImpl.this.setDownloadListener(null);
                    settings.setJavaScriptEnabled(true);
                    settings.setAppCacheEnabled(false);
                    settings.setSupportZoom(false);
                    settings.setUseWideViewPort(true);
                    settings.setJavaScriptCanOpenWindowsAutomatically(true);
                    settings.setDomStorageEnabled(true);
                    settings.setBuiltInZoomControls(false);
                    settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
                    settings.setLoadWithOverviewMode(false);
                    settings.setDefaultTextEncodingName("UTF-8");
                    settings.setDefaultFontSize(16);
                    if (WebViewImpl.this.nu != null) {
                        Iterator it = WebViewImpl.this.nu.keySet().iterator();
                        while (it.hasNext()) {
                            WebViewImpl.this.removeJavascriptInterface((String) it.next());
                        }
                        WebViewImpl.this.nu = null;
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public WebViewImpl(com.byazt.ikh.l lVar, Context context, AttributeSet attributeSet, int i2) {
        super(hp(context), attributeSet, i2);
        this.dy = false;
        this.lv = lVar;
        l(context);
    }

    @Override // com.byazt.ikh.j
    public void hp(String str, String str2, Object obj) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, str2);
            jSONObject.putOpt("param", obj);
            l(str, "csjEventListener", jSONObject);
        } catch (JSONException unused) {
        }
    }
}
