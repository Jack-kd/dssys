package com.beizi.fusion;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.VideoView;
import com.beizi.ad.AdActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class z4 implements AdActivity.b {

    /* renamed from: j, reason: collision with root package name */
    public static LinkedList f17789j = new LinkedList();

    /* renamed from: a, reason: collision with root package name */
    private Activity f17790a;

    /* renamed from: b, reason: collision with root package name */
    private WebView f17791b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f17792c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f17793d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f17794e;

    /* renamed from: f, reason: collision with root package name */
    private String f17795f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f17796g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f17797h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f17798i;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            z4.this.f17797h = true;
            return false;
        }
    }

    public class b implements DownloadListener {
        public b() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        }
    }

    public class d extends zp {

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ ProgressBar f17802d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Activity activity, ProgressBar progressBar) {
            super(activity);
            this.f17802d = progressBar;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            if (callback != null) {
                try {
                    callback.invoke(str, false, false);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            if (i2 < 100 && this.f17802d.getVisibility() == 8) {
                this.f17802d.setVisibility(0);
            }
            this.f17802d.setProgress(i2);
            if (i2 == 100) {
                this.f17802d.setVisibility(8);
            }
        }

        @Override // com.beizi.fusion.zp, android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
            if (view instanceof FrameLayout) {
                FrameLayout frameLayout = (FrameLayout) view;
                if (frameLayout.getFocusedChild() instanceof VideoView) {
                    VideoView videoView = (VideoView) frameLayout.getFocusedChild();
                    frameLayout.removeView(videoView);
                    if (z4.this.f17791b.getContext() instanceof Activity) {
                        ((Activity) z4.this.f17791b.getContext()).setContentView(videoView);
                    }
                    videoView.start();
                }
            }
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z4.this.d();
        }
    }

    public z4(Activity activity, boolean z2, boolean z3, String str, int i2) {
        this.f17790a = activity;
        this.f17793d = z2;
        this.f17794e = z3;
        this.f17795f = str;
        this.f17798i = i2 == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Activity activity = this.f17790a;
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (this.f17798i && !this.f17796g && !TextUtils.isEmpty(this.f17795f)) {
                this.f17796g = true;
                Uri uri = Uri.parse(this.f17795f);
                if (uri.getScheme() == null || !uri.getScheme().equals("bzopen") || TextUtils.isEmpty(uri.getHost()) || uri.getPathSegments().size() <= 0) {
                    if (this.f17795f.startsWith("hwpps://landingpage")) {
                        Intent intent = new Intent();
                        intent.setData(uri);
                        intent.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                        this.f17790a.startActivity(intent);
                        return;
                    }
                    if (this.f17795f.startsWith("intent")) {
                        Intent uri2 = Intent.parseUri(this.f17795f, 1);
                        uri2.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                        this.f17790a.startActivity(uri2);
                        return;
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW", uri);
                        intent2.addFlags(805339136);
                        this.f17790a.startActivity(intent2);
                        return;
                    }
                }
                Intent intent3 = new Intent();
                intent3.setAction("android.intent.action.MAIN");
                intent3.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                intent3.addCategory("android.intent.category.LAUNCHER");
                String queryParameter = uri.getQueryParameter("flags");
                if (!TextUtils.isEmpty(queryParameter)) {
                    try {
                        if (queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) {
                            intent3.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                        } else {
                            intent3.setFlags(Integer.parseInt(queryParameter));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                intent3.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                String queryParameter2 = uri.getQueryParameter("rect");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    try {
                        String[] strArrSplit = queryParameter2.split(":");
                        if (strArrSplit.length == 4) {
                            Rect rect = new Rect();
                            rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                            intent3.setSourceBounds(rect);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                this.f17790a.startActivity(intent3);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.beizi.ad.AdActivity.b
    public void destroy() {
        WebView webView = this.f17791b;
        if (webView == null) {
            return;
        }
        eq.a(webView);
        this.f17791b.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f17798i) {
            if (this.f17796g && !this.f17797h) {
                return;
            } else {
                this.f17796g = true;
            }
        }
        Uri uri = so.b(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
        try {
            this.f17790a.startActivity(intent);
            destroy();
            d();
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.ad.AdActivity.b
    public void b() {
        this.f17790a.setTheme(R.style.BeiZiTheme);
        this.f17790a.setContentView(R.layout.activity_in_app_browser);
        WebView webView = (WebView) f17789j.poll();
        this.f17791b = webView;
        if (webView != null && webView.getSettings() != null) {
            if (this.f17791b.getContext() instanceof MutableContextWrapper) {
                ((MutableContextWrapper) this.f17791b.getContext()).setBaseContext(this.f17790a);
            }
            WebView webView2 = (WebView) this.f17790a.findViewById(R.id.web_view);
            webView2.getSettings().setSavePassword(false);
            ViewGroup.LayoutParams layoutParams = webView2.getLayoutParams();
            ViewGroup viewGroup = (ViewGroup) webView2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(webView2);
            viewGroup.removeView(webView2);
            eq.a(this.f17791b);
            this.f17791b.setLayoutParams(layoutParams);
            this.f17791b.getSettings().setUseWideViewPort(true);
            this.f17791b.getSettings().setLoadWithOverviewMode(true);
            this.f17791b.getSettings().setJavaScriptEnabled(true);
            this.f17791b.getSettings().setGeolocationEnabled(false);
            WebView.setWebContentsDebuggingEnabled(false);
            viewGroup.addView(this.f17791b, iIndexOfChild);
            ProgressBar progressBar = (ProgressBar) this.f17790a.findViewById(R.id.progress_bar);
            try {
                if (this.f17798i) {
                    this.f17791b.setOnTouchListener(new a());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.f17791b.setDownloadListener(new b());
            this.f17791b.setWebViewClient(new c());
            this.f17791b.setWebChromeClient(new d(this.f17790a, progressBar));
            ImageView imageView = (ImageView) this.f17790a.findViewById(R.id.close_iv);
            this.f17792c = imageView;
            imageView.setOnClickListener(new e());
            return;
        }
        d();
    }

    @Override // com.beizi.ad.AdActivity.b
    public WebView a() {
        return this.f17791b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return !b(str) || this.f17793d;
    }

    public class c extends WebViewClient {
        public c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
            if (cookieSyncManager != null) {
                cookieSyncManager.sync();
            }
            z4.this.e();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                Uri url = webResourceRequest.getUrl();
                if (url == null) {
                    return false;
                }
                String string = url.toString();
                if (!string.startsWith("http")) {
                    if (z4.this.a(string)) {
                        z4.this.c(string);
                    }
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
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("http")) {
                return false;
            }
            if (!z4.this.a(str)) {
                return true;
            }
            z4.this.c(str);
            return true;
        }
    }

    @Override // com.beizi.ad.AdActivity.b
    public void c() {
        nh.a("lance", "...........................backPressed...........................");
        if (this.f17791b.canGoBack()) {
            this.f17791b.goBack();
            nh.a("lance", " mWebView.goBack()");
        } else {
            d();
        }
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
}
