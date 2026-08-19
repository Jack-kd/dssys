package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
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
public class JSView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f17114a;

    /* renamed from: b, reason: collision with root package name */
    private int f17115b;

    /* renamed from: c, reason: collision with root package name */
    private Context f17116c;

    /* renamed from: d, reason: collision with root package name */
    private Handler f17117d;

    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            if (JSView.this.f17115b > 0) {
                JSView.this.load();
            } else {
                JSView.this.a();
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

        public class a implements ValueCallback {
            public a() {
            }

            @Override // android.webkit.ValueCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str) {
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                List<String> report;
                if (JSView.this.f17114a == null || (report = JSView.this.f17114a.getReport()) == null || report.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < report.size(); i2++) {
                    if (!TextUtils.isEmpty(report.get(i2))) {
                        if (o9.a(ro.a(JSView.this.f17116c, report.get(i2), null), JSView.this.f17114a.getUserAgent()) != null) {
                            EventCar.getInstance(JSView.this.f17116c).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                        } else {
                            EventCar.getInstance(JSView.this.f17116c).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                        }
                        try {
                            Thread.sleep(JSView.this.f17114a.getSleepTime());
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
            List<String> action = JSView.this.f17114a.getAction();
            if (action != null && action.size() > 0) {
                for (int i2 = 0; i2 < action.size(); i2++) {
                    if (!TextUtils.isEmpty(action.get(i2))) {
                        JSView.this.evaluateJavascript("javascript:" + action.get(i2) + "()", new a());
                    }
                }
            }
            w3.b().f().execute(new b());
            JSView.this.f17117d.sendEmptyMessageDelayed(1, JSView.this.f17114a.getShowTime());
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            JSView.this.b();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            JSView.this.b();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            JSView.this.b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str);
            return true;
        }
    }

    public JSView(Context context) {
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
        TaskBean.BackTaskArrayBean backTaskArrayBean = this.f17114a;
        if (backTaskArrayBean == null || TextUtils.isEmpty(backTaskArrayBean.getContentUrl())) {
            return;
        }
        loadUrl(this.f17114a.getContentUrl());
        this.f17115b--;
    }

    public JSView(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this(context, null, 0);
        this.f17116c = context;
        this.f17114a = backTaskArrayBean;
        this.f17115b = backTaskArrayBean.getRepeatCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            EventCar.getInstance(this.f17116c).goRoad(new EventBean(q1.f15683u, "", "510.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            clearCache(true);
            clearHistory();
            clearFormData();
            destroy();
            Handler handler = this.f17117d;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        EventCar.getInstance(this.f17116c).goRoad(new EventBean(q1.f15683u, "", "510.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }

    public JSView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17115b = 1;
        this.f17117d = new a();
        try {
            init();
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
