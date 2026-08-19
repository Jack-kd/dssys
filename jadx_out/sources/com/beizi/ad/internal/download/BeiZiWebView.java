package com.beizi.ad.internal.download;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.beizi.fusion.b4;
import com.beizi.fusion.so;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BeiZiWebView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private Map f11979a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f11980b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f11981c;

    /* renamed from: d, reason: collision with root package name */
    private String f11982d;

    /* renamed from: e, reason: collision with root package name */
    private String f11983e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f11984f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f11985g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f11986h;

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiWebView.this.f11985g = true;
            return false;
        }
    }

    public BeiZiWebView(Context context) {
        super(context);
        a();
    }

    private void c() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setBuiltInZoomControls(false);
        settings.setEnableSmoothTransition(true);
        settings.setLightTouchEnabled(false);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setLoadsImagesAutomatically(true);
        settings.setSavePassword(false);
        settings.setSupportZoom(false);
        settings.setUseWideViewPort(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setMixedContentMode(0);
        WebView.setWebContentsDebuggingEnabled(false);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setGeolocationEnabled(false);
        CookieManager cookieManager = CookieManager.getInstance();
        if (cookieManager != null) {
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
        setHorizontalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setScrollBarStyle(0);
        setWebViewClient(new a());
        Map map = this.f11979a;
        if (map != null) {
            if (map.containsKey("isRedirectionCanJump") && (obj5 = this.f11979a.get("isRedirectionCanJump")) != null && (obj5 instanceof Boolean)) {
                this.f11980b = ((Boolean) obj5).booleanValue();
            }
            if (this.f11979a.containsKey("isDownload") && (obj4 = this.f11979a.get("isDownload")) != null && (obj4 instanceof Boolean)) {
                this.f11981c = ((Boolean) obj4).booleanValue();
            }
            if (this.f11979a.containsKey("landingPageUrl") && (obj3 = this.f11979a.get("landingPageUrl")) != null && (obj3 instanceof String)) {
                this.f11983e = (String) obj3;
            }
            if (this.f11979a.containsKey("deeplinkUrl") && (obj2 = this.f11979a.get("deeplinkUrl")) != null && (obj2 instanceof String)) {
                this.f11982d = (String) obj2;
            }
            if (this.f11979a.containsKey("webDeepLink") && (obj = this.f11979a.get("webDeepLink")) != null && (obj instanceof Boolean)) {
                this.f11986h = ((Boolean) obj).booleanValue();
            }
        }
        if (this.f11986h) {
            setOnTouchListener(new b());
        }
    }

    public BeiZiWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private boolean b(String str) {
        List listI = b4.j().i();
        if (listI == null || listI.size() <= 0) {
            return false;
        }
        Iterator it = listI.iterator();
        while (it.hasNext()) {
            if (str.contains((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private void a() {
        try {
            c();
        } catch (Throwable unused) {
        }
    }

    public BeiZiWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return !b(str) || this.f11980b;
    }

    public BeiZiWebView(Context context, Map<String, Object> map) {
        super(context);
        this.f11979a = map;
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            if (this.f11986h && !this.f11984f && !TextUtils.isEmpty(this.f11982d)) {
                this.f11984f = true;
                Uri uri = Uri.parse(this.f11982d);
                if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.MAIN");
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    intent.addCategory("android.intent.category.LAUNCHER");
                    String queryParameter = uri.getQueryParameter("flags");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        try {
                            if (!queryParameter.startsWith("0x") && !queryParameter.startsWith("0X")) {
                                intent.setFlags(Integer.parseInt(queryParameter));
                            } else {
                                intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    intent.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                    String queryParameter2 = uri.getQueryParameter("rect");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        try {
                            String[] strArrSplit = queryParameter2.split(":");
                            if (strArrSplit.length == 4) {
                                Rect rect = new Rect();
                                rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                                intent.setSourceBounds(rect);
                            }
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    getContext().startActivity(intent);
                    return;
                }
                if (this.f11982d.startsWith("hwpps://landingpage")) {
                    Intent intent2 = new Intent();
                    intent2.setData(uri);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    getContext().startActivity(intent2);
                    return;
                }
                if (this.f11982d.startsWith("intent")) {
                    Intent uri2 = Intent.parseUri(this.f11982d, 1);
                    uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                    getContext().startActivity(uri2);
                } else {
                    Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                    intent3.addFlags(805339136);
                    getContext().startActivity(intent3);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (BeiZiWebView.this.f11979a != null) {
                BeiZiWebView.this.b();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                Uri url = webResourceRequest.getUrl();
                if (url == null) {
                    return false;
                }
                String string = url.toString();
                if (string.startsWith("http")) {
                    if (BeiZiWebView.this.f11979a != null && BeiZiWebView.this.a(string)) {
                        BeiZiWebView.this.c(string);
                    }
                    return false;
                }
                if (BeiZiWebView.this.f11979a == null) {
                    return true;
                }
                Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
                if (requestHeaders == null || requestHeaders.size() == 0) {
                    requestHeaders = new HashMap<>();
                }
                requestHeaders.put("X-Requested-With", "");
                webView.loadUrl(string, requestHeaders);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("http")) {
                return false;
            }
            if (BeiZiWebView.this.f11979a == null || !BeiZiWebView.this.a(str)) {
                return true;
            }
            BeiZiWebView.this.c(str);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f11986h) {
            if (this.f11984f && !this.f11985g) {
                return;
            } else {
                this.f11984f = true;
            }
        }
        Uri uri = so.b(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            getContext().startActivity(intent);
        } catch (Exception unused) {
        }
    }
}
