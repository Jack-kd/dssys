package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.beizi.fusion.R;
import com.beizi.fusion.b4;
import com.beizi.fusion.em;
import com.beizi.fusion.f9;
import com.beizi.fusion.nq;
import com.beizi.fusion.qh;
import com.beizi.fusion.rf;
import com.beizi.fusion.rl;
import com.beizi.fusion.so;
import com.beizi.fusion.y1;
import com.beizi.fusion.zp;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BeiZiLandingPageActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private WebView f12100a;

    /* renamed from: b, reason: collision with root package name */
    private ProgressBar f12101b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12102c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f12103d;

    /* renamed from: e, reason: collision with root package name */
    private String f12104e;

    /* renamed from: f, reason: collision with root package name */
    private String f12105f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f12106g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f12107h;

    /* renamed from: i, reason: collision with root package name */
    private y1.b.C0179b f12108i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f12109j;

    /* renamed from: l, reason: collision with root package name */
    private qh f12111l;

    /* renamed from: m, reason: collision with root package name */
    private View f12112m;

    /* renamed from: n, reason: collision with root package name */
    private RelativeLayout f12113n;

    /* renamed from: o, reason: collision with root package name */
    private ImageView f12114o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f12115p;

    /* renamed from: x, reason: collision with root package name */
    private long f12123x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f12124y;

    /* renamed from: k, reason: collision with root package name */
    private boolean f12110k = true;

    /* renamed from: q, reason: collision with root package name */
    private int f12116q = -1;

    /* renamed from: r, reason: collision with root package name */
    private int f12117r = -1;

    /* renamed from: s, reason: collision with root package name */
    private int f12118s = -1;

    /* renamed from: t, reason: collision with root package name */
    private int f12119t = -1;

    /* renamed from: u, reason: collision with root package name */
    private int f12120u = -1;

    /* renamed from: v, reason: collision with root package name */
    private int f12121v = -1;

    /* renamed from: w, reason: collision with root package name */
    private int f12122w = 0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiLandingPageActivity.this.a();
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiLandingPageActivity.this.f12107h = true;
            return false;
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiLandingPageActivity.this.f();
        }
    }

    public class e implements rf.f {
        public e() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            if (bitmap != null) {
                if (BeiZiLandingPageActivity.this.f12114o != null) {
                    BeiZiLandingPageActivity.this.f12114o.setImageBitmap(bitmap);
                }
                if (BeiZiLandingPageActivity.this.f12116q == 1 && BeiZiLandingPageActivity.this.f12117r == 1) {
                    BeiZiLandingPageActivity.this.f();
                }
            }
        }
    }

    public class g extends zp {
        public g(Activity activity) {
            super(activity);
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
            if (BeiZiLandingPageActivity.this.f12101b == null) {
                return;
            }
            if (i2 < 100 && BeiZiLandingPageActivity.this.f12101b.getVisibility() == 8) {
                BeiZiLandingPageActivity.this.f12101b.setVisibility(0);
            }
            BeiZiLandingPageActivity.this.f12101b.setProgress(i2);
            if (i2 == 100) {
                BeiZiLandingPageActivity.this.f12101b.setVisibility(8);
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
                    BeiZiLandingPageActivity.this.setContentView(videoView);
                    videoView.start();
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            RelativeLayout relativeLayout = this.f12113n;
            if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
                WebView webView = this.f12100a;
                if (webView == null || !webView.canGoBack()) {
                    a();
                } else {
                    this.f12100a.goBack();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activtiy_beizi_landingpage);
        c();
        d();
    }

    @Override // android.app.Activity
    public void onResume() {
        List listK;
        super.onResume();
        try {
            if (!this.f12110k) {
                this.f12109j = false;
                y1.b.C0179b c0179b = this.f12108i;
                if (c0179b != null && (listK = c0179b.k()) != null && listK.size() > 0) {
                    List listJ = this.f12108i.j();
                    this.f12108i.p(null);
                    em.a(listJ);
                }
            }
            if (this.f12120u == 1 && System.currentTimeMillis() - this.f12123x < this.f12121v) {
                f();
            }
            this.f12123x = 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f12110k = false;
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        try {
            this.f12123x = System.currentTimeMillis();
            if (this.f12109j) {
                y1.b.C0179b c0179b = this.f12108i;
                if (c0179b != null) {
                    List listK = c0179b.k();
                    this.f12108i.q(null);
                    em.a(listK);
                }
                g();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void d() {
        try {
            this.f12100a = (WebView) findViewById(R.id.lp_web_view);
            ((ImageView) findViewById(R.id.lp_close_iv)).setOnClickListener(new a());
            this.f12101b = (ProgressBar) findViewById(R.id.lp_progress_bar);
            this.f12112m = findViewById(R.id.lp_mask_view);
            this.f12113n = (RelativeLayout) findViewById(R.id.lp_dialog_container_rl);
            this.f12114o = (ImageView) findViewById(R.id.lp_dialog_iv);
            e();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        if (this.f12100a == null || TextUtils.isEmpty(this.f12105f)) {
            return;
        }
        nq.c(this.f12100a);
        this.f12100a.loadUrl(this.f12105f, f9.a());
        this.f12100a.setWebViewClient(new f());
        this.f12100a.setWebChromeClient(new g(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                y1.b.C0179b c0179b = this.f12108i;
                if (c0179b != null) {
                    List listC = c0179b.c();
                    this.f12108i.e(null);
                    em.a(listC);
                }
                int i2 = this.f12122w + 1;
                this.f12122w = i2;
                int i3 = this.f12116q;
                if (i3 > 1 || this.f12118s > 0) {
                    if (this.f12118s != 1) {
                        return;
                    }
                    if (i3 == 1) {
                        if (i2 < this.f12119t + 1) {
                            return;
                        }
                    } else if (i2 < this.f12119t) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                int i4 = this.f12122w + 1;
                this.f12122w = i4;
                int i5 = this.f12116q;
                if (i5 <= 1 && this.f12118s <= 0) {
                    g();
                } else if (this.f12118s == 1) {
                    if (i5 == 1) {
                        if (i4 >= this.f12119t + 1) {
                            g();
                        }
                    } else if (i4 >= this.f12119t) {
                        g();
                    }
                }
                throw th2;
            }
        }
        if (!this.f12115p) {
            int i6 = this.f12122w + 1;
            this.f12122w = i6;
            int i7 = this.f12116q;
            if (i7 <= 1 && this.f12118s <= 0) {
                g();
                return;
            }
            if (this.f12118s == 1) {
                if (i7 == 1) {
                    if (i6 >= this.f12119t + 1) {
                        g();
                        return;
                    }
                    return;
                } else {
                    if (i6 >= this.f12119t) {
                        g();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (TextUtils.isEmpty(this.f12104e)) {
            int i8 = this.f12122w + 1;
            this.f12122w = i8;
            int i9 = this.f12116q;
            if (i9 <= 1 && this.f12118s <= 0) {
                g();
                return;
            }
            if (this.f12118s == 1) {
                if (i9 == 1) {
                    if (i8 >= this.f12119t + 1) {
                        g();
                        return;
                    }
                    return;
                } else {
                    if (i8 >= this.f12119t) {
                        g();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        this.f12109j = true;
        this.f12106g = true;
        Uri uri = Uri.parse(this.f12104e);
        if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.addCategory("android.intent.category.LAUNCHER");
            String queryParameter = uri.getQueryParameter("flags");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    if (queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) {
                        intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                    } else {
                        intent.setFlags(Integer.parseInt(queryParameter));
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
            startActivity(intent);
        } else if (this.f12104e.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri);
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent2);
        } else if (this.f12104e.startsWith("intent")) {
            Intent uri2 = Intent.parseUri(this.f12104e, 1);
            uri2.addFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(uri2);
        } else {
            Intent intent3 = new Intent("android.intent.action.VIEW", uri);
            intent3.addFlags(805339136);
            startActivity(intent3);
        }
        y1.b.C0179b c0179b2 = this.f12108i;
        if (c0179b2 != null) {
            List listF = c0179b2.f();
            this.f12108i.h(null);
            em.a(listF);
            List listD = this.f12108i.d();
            this.f12108i.f(null);
            em.a(listD);
        }
        int i10 = this.f12122w + 1;
        this.f12122w = i10;
        int i11 = this.f12116q;
        if (i11 > 1 || this.f12118s > 0) {
            if (this.f12118s == 1) {
                if (i11 == 1) {
                    if (i10 < this.f12119t + 1) {
                        return;
                    }
                    g();
                    return;
                } else {
                    if (i10 < this.f12119t) {
                        return;
                    }
                    g();
                    return;
                }
            }
            return;
        }
        g();
    }

    private void g() {
        try {
            RelativeLayout relativeLayout = this.f12113n;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.f12113n.setOnClickListener(null);
            }
            View view = this.f12112m;
            if (view != null) {
                view.setVisibility(8);
                this.f12112m.setOnClickListener(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f12111l == null || TextUtils.isEmpty(this.f12104e) || this.f12124y) {
            return;
        }
        this.f12124y = true;
        String strI = this.f12111l.i();
        if (TextUtils.isEmpty(strI)) {
            return;
        }
        boolean zA = rl.a(this.f12111l.e());
        this.f12115p = zA;
        if (zA) {
            WebView webView = this.f12100a;
            if (webView != null) {
                webView.setOnTouchListener(new b());
            }
            int iH = this.f12111l.h();
            View view = this.f12112m;
            if (view != null && iH == 1) {
                view.setVisibility(0);
                this.f12112m.setOnClickListener(new c());
            }
            this.f12116q = this.f12111l.c();
            this.f12117r = this.f12111l.d();
            this.f12118s = this.f12111l.f();
            this.f12119t = this.f12111l.g();
            this.f12120u = this.f12111l.a();
            this.f12121v = this.f12111l.b();
            if (!TextUtils.isEmpty(strI)) {
                RelativeLayout relativeLayout = this.f12113n;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f12113n.setOnClickListener(new d());
                rf.a(this).a(strI, new e());
            } else {
                RelativeLayout relativeLayout2 = this.f12113n;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            if (this.f12116q == 1) {
                int i2 = this.f12117r;
                if (i2 == 0 || i2 == 2) {
                    f();
                }
            }
        }
    }

    private void c() {
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("data");
            if (bundleExtra == null) {
                return;
            }
            if (bundleExtra.containsKey("isRedirectionCanJump")) {
                this.f12102c = bundleExtra.getBoolean("isRedirectionCanJump", false);
            }
            if (bundleExtra.containsKey("isDownload")) {
                this.f12103d = bundleExtra.getBoolean("isDownload", false);
            }
            if (bundleExtra.containsKey("landingPageUrl")) {
                this.f12105f = bundleExtra.getString("landingPageUrl");
            }
            if (bundleExtra.containsKey("deeplinkUrl")) {
                this.f12104e = bundleExtra.getString("deeplinkUrl");
            }
            if (bundleExtra.containsKey("followTrackExt")) {
                this.f12108i = (y1.b.C0179b) bundleExtra.getSerializable("followTrackExt");
            }
            if (bundleExtra.containsKey("lpOptimizeModule")) {
                this.f12111l = (qh) bundleExtra.getSerializable("lpOptimizeModule");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            WebView webView = this.f12100a;
            if (webView != null) {
                webView.destroy();
            }
            finish();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return !c(str) || this.f12102c;
    }

    public class f extends WebViewClient {
        public f() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            BeiZiLandingPageActivity.this.b();
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
                    if (BeiZiLandingPageActivity.this.a(string) && !BeiZiLandingPageActivity.this.b(string)) {
                        BeiZiLandingPageActivity.this.d(string);
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
            if (!BeiZiLandingPageActivity.this.a(str) || BeiZiLandingPageActivity.this.b(str)) {
                return true;
            }
            BeiZiLandingPageActivity.this.d(str);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        if (this.f12115p) {
            if (this.f12106g && !this.f12107h) {
                return;
            } else {
                this.f12106g = true;
            }
        }
        Uri uri = so.b(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        this.f12109j = true;
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            startActivity(intent);
            y1.b.C0179b c0179b = this.f12108i;
            if (c0179b != null) {
                List listF = c0179b.f();
                this.f12108i.h(null);
                em.a(listF);
                List listD = this.f12108i.d();
                this.f12108i.f(null);
                em.a(listD);
            }
        } catch (Exception unused) {
        }
    }

    private boolean c(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        try {
            List listE = b4.j().e();
            if (listE != null && listE.size() > 0) {
                Iterator it = listE.iterator();
                while (it.hasNext()) {
                    if (str.contains((String) it.next())) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
