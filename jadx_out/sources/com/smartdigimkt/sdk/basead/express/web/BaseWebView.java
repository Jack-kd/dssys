package com.smartdigimkt.sdk.basead.express.web;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import com.sigmob.sdk.base.n;
import com.smartdigimkt.c5.d;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.f1.b;
import com.smartdigimkt.f1.c;
import com.smartdigimkt.f1.e;
import com.smartdigimkt.sdk.core.SDKContext;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes5.dex */
public class BaseWebView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    public final Context f43148a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f43149b;

    /* renamed from: c, reason: collision with root package name */
    public final c f43150c;

    /* renamed from: d, reason: collision with root package name */
    public View.OnTouchListener f43151d;
    public long lastTouchTime;
    public e mWebViewClient;

    public BaseWebView(Context context) {
        super(context);
        this.lastTouchTime = 0L;
        this.f43149b = false;
        this.f43150c = new c(this);
        this.f43148a = context.getApplicationContext();
        a();
    }

    public void a() {
        Class cls = Boolean.TYPE;
        Looper.myLooper();
        Looper.getMainLooper();
        if (this.mWebViewClient == null) {
            e eVar = new e();
            this.mWebViewClient = eVar;
            setWebViewClient(eVar);
        }
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        requestFocus();
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(true);
        settings.setBuiltInZoomControls(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDomStorageEnabled(true);
        settings.setSupportZoom(false);
        settings.setSavePassword(false);
        settings.setDatabaseEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                settings.setSafeBrowsingEnabled(false);
            }
        } catch (Throwable unused) {
        }
        settings.setMediaPlaybackRequiresUserGesture(false);
        try {
            settings.setAllowUniversalAccessFromFileURLs(false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            settings.setMixedContentMode(1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            Method declaredMethod = WebSettings.class.getDeclaredMethod(d.a("c2V0TWl4ZWRDb250ZW50TW9kZQ=="), Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(settings, 0);
        } catch (Throwable unused2) {
        }
        settings.setDatabaseEnabled(true);
        String str = SDKContext.getInstance().f44110I;
        settings.setDatabasePath(str);
        settings.setGeolocationEnabled(true);
        settings.setGeolocationDatabasePath(str);
        try {
            Method declaredMethod2 = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", cls);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(settings, Boolean.FALSE);
        } catch (Throwable unused3) {
        }
        try {
            Method declaredMethod3 = WebSettings.class.getDeclaredMethod(d.a("c2V0QWxsb3dVbml2ZXJzYWxBY2Nlc3NGcm9tRmlsZVVSTHM="), cls);
            declaredMethod3.setAccessible(true);
            declaredMethod3.invoke(settings, Boolean.TRUE);
        } catch (Throwable unused4) {
        }
        super.setOnTouchListener(this.f43150c);
    }

    public String checkToGetUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (!str.contains("../")) {
            if (!str.startsWith(n.f36463z)) {
                return str;
            }
            String path = Uri.parse(str).getPath();
            if (!TextUtils.isEmpty(path) && path.contains(com.smartdigimkt.t3.n.a().f44327b.getAbsolutePath())) {
                return str;
            }
        }
        Log.e("sdm_express", "illegal URL: " + str);
        return com.anythink.core.common.res.d.f7446a;
    }

    public e getBaseWebViewClient() {
        return this.mWebViewClient;
    }

    public boolean isDestroyed() {
        return this.f43149b;
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(@Nullable String str, String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        super.loadDataWithBaseURL(checkToGetUrl(str), str2, str3, str4, str5);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        super.loadUrl(checkToGetUrl(str));
    }

    public void release() {
        try {
            removeAllViews();
            setDownloadListener(null);
            Context context = getContext();
            if (context == null) {
                context = SDKContext.getInstance().d();
            }
            float fA = k.a(context);
            if (fA == 0.0f) {
                this.f43149b = true;
                destroy();
            } else {
                com.smartdigimkt.b4.e.a().a((long) (fA * 1000.0f), new com.smartdigimkt.f1.d(this));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.webkit.WebView
    public void reload() {
        super.reload();
    }

    public void setFilter(b bVar) {
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f43151d = onTouchListener;
    }

    public void setTransparent() {
        setLayerType(1, null);
        setBackgroundColor(0);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof e) {
            this.mWebViewClient = (e) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        super.loadUrl(checkToGetUrl(str), map);
    }

    public BaseWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.lastTouchTime = 0L;
        this.f43149b = false;
        this.f43150c = new c(this);
        this.f43148a = context.getApplicationContext();
        a();
    }

    public BaseWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.lastTouchTime = 0L;
        this.f43149b = false;
        this.f43150c = new c(this);
        this.f43148a = context.getApplicationContext();
        a();
    }
}
