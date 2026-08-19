package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import com.beizi.fusion.o9;
import com.beizi.fusion.q1;
import com.beizi.fusion.ro;
import com.beizi.fusion.w3;
import java.util.List;

/* loaded from: classes2.dex */
public class LandingView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f17123a;

    /* renamed from: b, reason: collision with root package name */
    private int f17124b;

    /* renamed from: c, reason: collision with root package name */
    private Context f17125c;

    /* renamed from: d, reason: collision with root package name */
    private Handler f17126d;

    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            if (LandingView.this.f17124b > 0) {
                LandingView.this.load();
            } else {
                LandingView.this.a();
            }
        }
    }

    public class b extends WebChromeClient {
        public b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
        }
    }

    public class c extends WebViewClient {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                List<String> report;
                if (LandingView.this.f17123a == null || (report = LandingView.this.f17123a.getReport()) == null || report.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < report.size(); i2++) {
                    if (!TextUtils.isEmpty(report.get(i2))) {
                        if (o9.a(ro.a(LandingView.this.f17125c, report.get(i2), null), LandingView.this.f17123a.getUserAgent()) != null) {
                            EventCar.getInstance(LandingView.this.f17125c).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                        } else {
                            EventCar.getInstance(LandingView.this.f17125c).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                        }
                        try {
                            Thread.sleep(LandingView.this.f17123a.getSleepTime());
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }

        public c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            w3.b().f().execute(new a());
            LandingView.this.f17126d.sendEmptyMessageDelayed(1, LandingView.this.f17123a.getShowTime());
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            LandingView.this.b();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            LandingView.this.b();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            LandingView.this.b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str);
            return true;
        }
    }

    public LandingView(Context context) {
        this(context, null);
    }

    public void init() {
        WebSettings settings = getSettings();
        settings.setSavePassword(false);
        WebView.setWebContentsDebuggingEnabled(false);
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        setWebChromeClient(new b());
        setWebViewClient(new c());
    }

    public void load() {
        TaskBean.BackTaskArrayBean backTaskArrayBean = this.f17123a;
        if (backTaskArrayBean == null || TextUtils.isEmpty(backTaskArrayBean.getContentUrl())) {
            return;
        }
        loadUrl(this.f17123a.getContentUrl());
        this.f17124b--;
    }

    public LandingView(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this(context, null, 0);
        this.f17125c = context;
        this.f17123a = backTaskArrayBean;
        this.f17124b = backTaskArrayBean.getRepeatCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            EventCar.getInstance(this.f17125c).goRoad(new EventBean(q1.f15683u, "", "510.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            clearCache(true);
            clearHistory();
            clearFormData();
            destroy();
            Handler handler = this.f17126d;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        EventCar.getInstance(this.f17125c).goRoad(new EventBean(q1.f15683u, "", "510.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }

    public LandingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17124b = 1;
        this.f17126d = new a();
        try {
            init();
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
