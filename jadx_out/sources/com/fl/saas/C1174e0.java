package com.fl.saas;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;

/* renamed from: com.fl.saas.e0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1174e0 {

    /* renamed from: a, reason: collision with root package name */
    private WebView f30366a;

    /* renamed from: b, reason: collision with root package name */
    private String f30367b;

    /* renamed from: c, reason: collision with root package name */
    private C1171d0 f30368c;

    /* renamed from: d, reason: collision with root package name */
    private final String f30369d;

    /* renamed from: e, reason: collision with root package name */
    private final String f30370e;

    /* renamed from: f, reason: collision with root package name */
    private final String f30371f;

    /* renamed from: com.fl.saas.e0$a */
    public class a implements T {
        public a() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            if (TextUtils.isEmpty(str) || C1174e0.this.f30368c == null) {
                E0.a().a(2);
            } else if (TextUtils.isEmpty(C1174e0.this.f30368c.d()) || Pattern.compile(C1174e0.this.f30368c.d()).matcher(str).matches()) {
                C1174e0.this.a(str);
            } else {
                E0.a().a(0);
            }
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            E0.a().a(2);
        }
    }

    /* renamed from: com.fl.saas.e0$b */
    public class b extends WebViewClient {
        public b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            C1174e0.this.f30366a.loadUrl("javascript:a('" + C1174e0.this.f30367b + "')");
            E0.a().a(1);
            int iA = S0.a().a("kShowNumber", 0) + 1;
            S0.a().b("kShowDay", DeviceUtil.getDate());
            S0.a().b("kShowSec", System.currentTimeMillis() / 1000);
            S0.a().b("kShowNumber", iA);
            DeviceUtil.postUIDelayed(2000L, new Runnable() { // from class: com.fl.saas.i2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30406b.a();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            if (C1174e0.this.f30366a != null) {
                C1174e0.this.f30366a.destroy();
                C1174e0.this.f30366a = null;
            }
        }
    }

    /* renamed from: com.fl.saas.e0$c */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        private static final C1174e0 f30374a = new C1174e0(null);
    }

    private C1174e0() {
        this.f30369d = "kShowDay";
        this.f30370e = "kShowNumber";
        this.f30371f = "kShowSec";
    }

    public /* synthetic */ C1174e0(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        C1166c.c().a(this.f30368c.e(), new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            Activity topActivity = DeviceUtil.getTopActivity();
            if (topActivity == null) {
                return;
            }
            this.f30367b = str;
            WebView webView = new WebView(topActivity);
            this.f30366a = webView;
            webView.setWebChromeClient(new WebChromeClient());
            this.f30366a.setWebViewClient(new b());
            this.f30366a.getSettings().setJavaScriptEnabled(true);
            this.f30366a.loadDataWithBaseURL(com.anythink.core.common.res.d.f7446a, "<html>\n<body><script>async function a(b) {" + new String(AbstractC1197m.b(this.f30368c.a()), StandardCharsets.UTF_8) + "}</script></body></html>", "text/html", "UTF-8", null);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static C1174e0 a() {
        return c.f30374a;
    }

    private void a(long j2) {
        DeviceUtil.postUIDelayed(j2, new Runnable() { // from class: com.fl.saas.h2
            @Override // java.lang.Runnable
            public final void run() {
                this.f30405b.b();
            }
        });
    }

    public void a(C1171d0 c1171d0) {
        this.f30368c = c1171d0;
        if (c1171d0 == null || TextUtils.isEmpty(c1171d0.e())) {
            return;
        }
        int iF = this.f30368c.f();
        String strA = S0.a().a("kShowDay", "");
        int iA = S0.a().a("kShowNumber", 0);
        long jA = S0.a().a("kShowSec", 0L);
        long j2 = iF;
        long j3 = j2 * 1000;
        if (!DeviceUtil.getDate().equals(strA)) {
            S0.a().b("kShowNumber", 0);
            a(j3);
        } else if (this.f30368c.b() == 0 || iA < this.f30368c.b()) {
            int iC = this.f30368c.c() * 60;
            if (jA <= 0 || iC <= 0 || ((System.currentTimeMillis() / 1000) - jA) + j2 >= iC) {
                a(j3);
            }
        }
    }
}
