package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
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
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.lance.ApkBean;
import com.beizi.fusion.R;
import com.beizi.fusion.b4;
import com.beizi.fusion.c8;
import com.beizi.fusion.ci;
import com.beizi.fusion.em;
import com.beizi.fusion.f9;
import com.beizi.fusion.h8;
import com.beizi.fusion.i3;
import com.beizi.fusion.kq;
import com.beizi.fusion.m1;
import com.beizi.fusion.nq;
import com.beizi.fusion.qh;
import com.beizi.fusion.rf;
import com.beizi.fusion.rl;
import com.beizi.fusion.sg;
import com.beizi.fusion.so;
import com.beizi.fusion.y1;
import com.beizi.fusion.zp;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BeiZiLandingActivity extends Activity {

    /* renamed from: A, reason: collision with root package name */
    private String f12043A;

    /* renamed from: B, reason: collision with root package name */
    private String f12044B;

    /* renamed from: C, reason: collision with root package name */
    private String f12045C;

    /* renamed from: D, reason: collision with root package name */
    private String f12046D;

    /* renamed from: E, reason: collision with root package name */
    private String f12047E;

    /* renamed from: F, reason: collision with root package name */
    private String f12048F;

    /* renamed from: G, reason: collision with root package name */
    private String f12049G;

    /* renamed from: H, reason: collision with root package name */
    private String f12050H;

    /* renamed from: I, reason: collision with root package name */
    private String f12051I;

    /* renamed from: J, reason: collision with root package name */
    private String f12052J;

    /* renamed from: K, reason: collision with root package name */
    private String f12053K;

    /* renamed from: L, reason: collision with root package name */
    private boolean f12054L;

    /* renamed from: M, reason: collision with root package name */
    private int f12055M;

    /* renamed from: N, reason: collision with root package name */
    private boolean f12056N;

    /* renamed from: O, reason: collision with root package name */
    private int f12057O;

    /* renamed from: P, reason: collision with root package name */
    private String f12058P;

    /* renamed from: Q, reason: collision with root package name */
    private String f12059Q;

    /* renamed from: R, reason: collision with root package name */
    private String f12060R;

    /* renamed from: S, reason: collision with root package name */
    private String f12061S;

    /* renamed from: T, reason: collision with root package name */
    private String f12062T;

    /* renamed from: U, reason: collision with root package name */
    private String f12063U;

    /* renamed from: V, reason: collision with root package name */
    private String f12064V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f12065W;

    /* renamed from: a, reason: collision with root package name */
    private WebView f12066a;

    /* renamed from: b, reason: collision with root package name */
    private ProgressBar f12067b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12068c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f12069d;

    /* renamed from: e, reason: collision with root package name */
    private String f12070e;

    /* renamed from: f, reason: collision with root package name */
    private String f12071f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f12072g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f12073h;

    /* renamed from: i, reason: collision with root package name */
    private y1.b.C0179b f12074i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f12075j;

    /* renamed from: l, reason: collision with root package name */
    private qh f12077l;

    /* renamed from: m, reason: collision with root package name */
    private View f12078m;

    /* renamed from: n, reason: collision with root package name */
    private RelativeLayout f12079n;

    /* renamed from: o, reason: collision with root package name */
    private ImageView f12080o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f12081p;

    /* renamed from: x, reason: collision with root package name */
    private long f12089x;

    /* renamed from: y, reason: collision with root package name */
    private int f12090y;

    /* renamed from: z, reason: collision with root package name */
    private String f12091z;

    /* renamed from: k, reason: collision with root package name */
    private boolean f12076k = true;

    /* renamed from: q, reason: collision with root package name */
    private int f12082q = -1;

    /* renamed from: r, reason: collision with root package name */
    private int f12083r = -1;

    /* renamed from: s, reason: collision with root package name */
    private int f12084s = -1;

    /* renamed from: t, reason: collision with root package name */
    private int f12085t = -1;

    /* renamed from: u, reason: collision with root package name */
    private int f12086u = -1;

    /* renamed from: v, reason: collision with root package name */
    private int f12087v = -1;

    /* renamed from: w, reason: collision with root package name */
    private int f12088w = 0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiLandingActivity.this.a();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiLandingActivity.this.j();
        }
    }

    public class d implements rf.f {
        public d() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            if (bitmap != null) {
                if (BeiZiLandingActivity.this.f12080o != null) {
                    BeiZiLandingActivity.this.f12080o.setImageBitmap(bitmap);
                }
                if (BeiZiLandingActivity.this.f12082q == 1 && BeiZiLandingActivity.this.f12083r == 1) {
                    BeiZiLandingActivity.this.j();
                }
            }
        }
    }

    public class e implements View.OnTouchListener {
        public e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiLandingActivity.this.f12073h = true;
            return false;
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
            if (BeiZiLandingActivity.this.f12067b == null) {
                return;
            }
            if (i2 < 100 && BeiZiLandingActivity.this.f12067b.getVisibility() == 8) {
                BeiZiLandingActivity.this.f12067b.setVisibility(0);
            }
            BeiZiLandingActivity.this.f12067b.setProgress(i2);
            if (i2 == 100) {
                BeiZiLandingActivity.this.f12067b.setVisibility(8);
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
                    BeiZiLandingActivity.this.setContentView(videoView);
                    videoView.start();
                }
            }
        }
    }

    public class h implements m1 {
        public h() {
        }

        @Override // com.beizi.fusion.m1
        public void a() {
            if (BeiZiLandingActivity.this.f12074i != null) {
                List listF = BeiZiLandingActivity.this.f12074i.f();
                BeiZiLandingActivity.this.f12074i.h(null);
                em.a(listF);
                List listD = BeiZiLandingActivity.this.f12074i.d();
                BeiZiLandingActivity.this.f12074i.f(null);
                em.a(listD);
            }
        }

        @Override // com.beizi.fusion.m1
        public void b() {
            if (BeiZiLandingActivity.this.f12074i != null) {
                List listC = BeiZiLandingActivity.this.f12074i.c();
                BeiZiLandingActivity.this.f12074i.e(null);
                em.a(listC);
            }
            BeiZiLandingActivity.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                y1.b.C0179b c0179b = this.f12074i;
                if (c0179b != null) {
                    List listC = c0179b.c();
                    this.f12074i.e(null);
                    em.a(listC);
                }
                if (this.f12056N) {
                    b();
                }
                int i2 = this.f12088w + 1;
                this.f12088w = i2;
                int i3 = this.f12082q;
                if (i3 > 1 || this.f12084s > 0) {
                    if (this.f12084s != 1) {
                        return;
                    }
                    if (i3 == 1) {
                        if (i2 < this.f12085t + 1) {
                            return;
                        }
                    } else if (i2 < this.f12085t) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                int i4 = this.f12088w + 1;
                this.f12088w = i4;
                int i5 = this.f12082q;
                if (i5 <= 1 && this.f12084s <= 0) {
                    k();
                } else if (this.f12084s == 1) {
                    if (i5 == 1) {
                        if (i4 >= this.f12085t + 1) {
                            k();
                        }
                    } else if (i4 >= this.f12085t) {
                        k();
                    }
                }
                throw th2;
            }
        }
        if (!this.f12056N && !this.f12081p) {
            int i6 = this.f12088w + 1;
            this.f12088w = i6;
            int i7 = this.f12082q;
            if (i7 <= 1 && this.f12084s <= 0) {
                k();
                return;
            }
            if (this.f12084s == 1) {
                if (i7 == 1) {
                    if (i6 >= this.f12085t + 1) {
                        k();
                        return;
                    }
                    return;
                } else {
                    if (i6 >= this.f12085t) {
                        k();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (TextUtils.isEmpty(this.f12070e)) {
            if (this.f12056N) {
                b();
            }
            int i8 = this.f12088w + 1;
            this.f12088w = i8;
            int i9 = this.f12082q;
            if (i9 <= 1 && this.f12084s <= 0) {
                k();
                return;
            }
            if (this.f12084s == 1) {
                if (i9 == 1) {
                    if (i8 >= this.f12085t + 1) {
                        k();
                        return;
                    }
                    return;
                } else {
                    if (i8 >= this.f12085t) {
                        k();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        this.f12075j = true;
        this.f12072g = true;
        Uri uri = Uri.parse(this.f12070e);
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
        } else if (this.f12070e.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri);
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent2);
        } else if (this.f12070e.startsWith("intent")) {
            Intent uri2 = Intent.parseUri(this.f12070e, 1);
            uri2.addFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(uri2);
        } else {
            Intent intent3 = new Intent("android.intent.action.VIEW", uri);
            intent3.addFlags(805339136);
            startActivity(intent3);
        }
        y1.b.C0179b c0179b2 = this.f12074i;
        if (c0179b2 != null) {
            List listF = c0179b2.f();
            this.f12074i.h(null);
            em.a(listF);
            List listD = this.f12074i.d();
            this.f12074i.f(null);
            em.a(listD);
        }
        int i10 = this.f12088w + 1;
        this.f12088w = i10;
        int i11 = this.f12082q;
        if (i11 > 1 || this.f12084s > 0) {
            if (this.f12084s == 1) {
                if (i11 == 1) {
                    if (i10 < this.f12085t + 1) {
                        return;
                    }
                    k();
                    return;
                } else {
                    if (i10 < this.f12085t) {
                        return;
                    }
                    k();
                    return;
                }
            }
            return;
        }
        k();
    }

    private void k() {
        try {
            RelativeLayout relativeLayout = this.f12079n;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.f12079n.setOnClickListener(null);
            }
            View view = this.f12078m;
            if (view != null) {
                view.setVisibility(8);
                this.f12078m.setOnClickListener(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void l() {
        y1.b.C0179b c0179b;
        y1.b.C0179b c0179b2;
        try {
            if (this.f12057O == 0) {
                return;
            }
            if (!TextUtils.isEmpty(this.f12058P) && !TextUtils.isEmpty(this.f12059Q)) {
                if (!kq.a(this, this.f12058P, this.f12059Q, this.f12060R) || (c0179b2 = this.f12074i) == null) {
                    return;
                }
                List listH = c0179b2.h();
                this.f12074i.k(null);
                em.a(listH);
                return;
            }
            if (TextUtils.isEmpty(this.f12061S) || !kq.a(this, this.f12061S) || (c0179b = this.f12074i) == null) {
                return;
            }
            List listH2 = c0179b.h();
            this.f12074i.k(null);
            em.a(listH2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            RelativeLayout relativeLayout = this.f12079n;
            if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
                WebView webView = this.f12066a;
                if (webView == null || !webView.canGoBack()) {
                    a();
                } else {
                    this.f12066a.goBack();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setContentView(R.layout.activtiy_beizi_landingpage);
            e();
            f();
            this.f12056N = true;
            if (!d()) {
                j();
                this.f12056N = false;
            }
            g();
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (TextUtils.isEmpty(this.f12062T)) {
                return;
            }
            h8.a().b(this.f12074i, this.f12062T);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        List listK;
        super.onResume();
        try {
            if (!this.f12076k) {
                this.f12075j = false;
                y1.b.C0179b c0179b = this.f12074i;
                if (c0179b != null && (listK = c0179b.k()) != null && listK.size() > 0) {
                    List listJ = this.f12074i.j();
                    this.f12074i.p(null);
                    em.a(listJ);
                }
            }
            if (this.f12086u == 1 && System.currentTimeMillis() - this.f12089x < this.f12087v) {
                j();
            }
            this.f12089x = 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f12076k = false;
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        try {
            this.f12089x = System.currentTimeMillis();
            if (this.f12075j) {
                y1.b.C0179b c0179b = this.f12074i;
                if (c0179b != null) {
                    List listK = c0179b.k();
                    this.f12074i.q(null);
                    em.a(listK);
                }
                k();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        if (this.f12081p) {
            if (this.f12072g && !this.f12073h) {
                return;
            } else {
                this.f12072g = true;
            }
        }
        Uri uri = so.b(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        this.f12075j = true;
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            startActivity(intent);
            y1.b.C0179b c0179b = this.f12074i;
            if (c0179b != null) {
                List listF = c0179b.f();
                this.f12074i.h(null);
                em.a(listF);
                List listD = this.f12074i.d();
                this.f12074i.f(null);
                em.a(listD);
            }
        } catch (Exception unused) {
        }
    }

    private void e() {
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("data");
            if (bundleExtra != null) {
                if (bundleExtra.containsKey("requestUUID")) {
                    this.f12062T = bundleExtra.getString("requestUUID");
                }
                if (bundleExtra.containsKey("isRedirectionCanJump")) {
                    this.f12068c = bundleExtra.getBoolean("isRedirectionCanJump", false);
                }
                if (bundleExtra.containsKey("isDownload")) {
                    this.f12069d = bundleExtra.getBoolean("isDownload", false);
                }
                if (bundleExtra.containsKey("deeplinkUrl")) {
                    this.f12070e = bundleExtra.getString("deeplinkUrl");
                }
                if (bundleExtra.containsKey("landingPageUrl")) {
                    this.f12071f = bundleExtra.getString("landingPageUrl");
                }
                if (bundleExtra.containsKey("lpOptimizeModule")) {
                    this.f12077l = (qh) bundleExtra.getSerializable("lpOptimizeModule");
                }
                if (bundleExtra.containsKey("apkName")) {
                    this.f12091z = bundleExtra.getString("apkName");
                }
                if (bundleExtra.containsKey("appDeveloper")) {
                    this.f12048F = bundleExtra.getString("appDeveloper");
                }
                if (bundleExtra.containsKey("appVersion")) {
                    this.f12047E = bundleExtra.getString("appVersion");
                }
                if (bundleExtra.containsKey("appPrivacyUrl")) {
                    this.f12051I = bundleExtra.getString("appPrivacyUrl");
                }
                if (bundleExtra.containsKey("appintro")) {
                    this.f12053K = bundleExtra.getString("appintro");
                }
                if (bundleExtra.containsKey("appPermissionsUrl")) {
                    this.f12050H = bundleExtra.getString("appPermissionsUrl");
                }
                if (bundleExtra.containsKey("appPermissionsDesc")) {
                    this.f12049G = bundleExtra.getString("appPermissionsDesc");
                }
                if (bundleExtra.containsKey("interactType")) {
                    this.f12090y = bundleExtra.getInt("interactType");
                }
                if (bundleExtra.containsKey("appDownloadURL")) {
                    this.f12046D = bundleExtra.getString("appDownloadURL");
                }
                if (bundleExtra.containsKey("packageName")) {
                    this.f12043A = bundleExtra.getString("packageName");
                }
                if (bundleExtra.containsKey("appDesc")) {
                    this.f12045C = bundleExtra.getString("appDesc");
                }
                if (bundleExtra.containsKey("appIconURL")) {
                    this.f12052J = bundleExtra.getString("appIconURL");
                }
                if (bundleExtra.containsKey("isCloseConfirmDialog")) {
                    this.f12054L = bundleExtra.getBoolean("isCloseConfirmDialog");
                }
                if (bundleExtra.containsKey("isMiniProgram")) {
                    int i2 = bundleExtra.getInt("isMiniProgram");
                    this.f12057O = i2;
                    if (i2 == 1) {
                        if (bundleExtra.containsKey("miniProgramId")) {
                            this.f12058P = bundleExtra.getString("miniProgramId");
                        }
                        if (bundleExtra.containsKey("miniProgramPath")) {
                            this.f12059Q = bundleExtra.getString("miniProgramPath");
                        }
                        if (bundleExtra.containsKey("miniProgramExt")) {
                            this.f12060R = bundleExtra.getString("miniProgramExt");
                        }
                        if (bundleExtra.containsKey("wechat_canvas")) {
                            this.f12061S = bundleExtra.getString("wechat_canvas");
                        }
                    }
                }
                if (!TextUtils.isEmpty(this.f12062T)) {
                    this.f12074i = h8.a().b(this.f12062T);
                }
                if (this.f12074i == null && bundleExtra.containsKey("followTrackExt")) {
                    this.f12074i = (y1.b.C0179b) bundleExtra.getSerializable("followTrackExt");
                }
                if (bundleExtra.containsKey("tokenInfo")) {
                    this.f12063U = bundleExtra.getString("tokenInfo");
                }
                if (bundleExtra.containsKey("oppoReqId")) {
                    this.f12064V = bundleExtra.getString("oppoReqId");
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void f() {
        try {
            this.f12066a = (WebView) findViewById(R.id.lp_web_view);
            ((ImageView) findViewById(R.id.lp_close_iv)).setOnClickListener(new a());
            this.f12067b = (ProgressBar) findViewById(R.id.lp_progress_bar);
            this.f12078m = findViewById(R.id.lp_mask_view);
            this.f12079n = (RelativeLayout) findViewById(R.id.lp_dialog_container_rl);
            this.f12080o = (ImageView) findViewById(R.id.lp_dialog_iv);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void g() {
        if (this.f12066a == null || TextUtils.isEmpty(this.f12071f)) {
            return;
        }
        WebView webView = this.f12066a;
        if (webView != null) {
            webView.setOnTouchListener(new e());
        }
        nq.c(this.f12066a);
        this.f12066a.loadUrl(this.f12071f, f9.a());
        this.f12066a.setWebViewClient(new f());
        this.f12066a.setWebChromeClient(new g(this));
    }

    private boolean h() {
        int i2 = this.f12090y;
        return i2 == 2 ? !TextUtils.isEmpty(this.f12046D) && this.f12046D.startsWith("http") : i2 == 5 && !TextUtils.isEmpty(this.f12046D);
    }

    private boolean i() {
        if (TextUtils.isEmpty(this.f12091z) || TextUtils.isEmpty(this.f12048F) || TextUtils.isEmpty(this.f12047E) || TextUtils.isEmpty(this.f12051I) || TextUtils.isEmpty(this.f12053K)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f12050H) && TextUtils.isEmpty(this.f12049G)) {
            return false;
        }
        int i2 = this.f12090y;
        return i2 == 2 || i2 == 5;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f12077l == null || TextUtils.isEmpty(this.f12070e) || this.f12065W) {
            return;
        }
        this.f12065W = true;
        String strI = this.f12077l.i();
        if (TextUtils.isEmpty(strI)) {
            return;
        }
        boolean zA = rl.a(this.f12077l.e());
        this.f12081p = zA;
        if (zA) {
            int iH = this.f12077l.h();
            View view = this.f12078m;
            if (view != null && iH == 1) {
                view.setVisibility(0);
                this.f12078m.setOnClickListener(new b());
            }
            this.f12082q = this.f12077l.c();
            this.f12083r = this.f12077l.d();
            this.f12084s = this.f12077l.f();
            this.f12085t = this.f12077l.g();
            this.f12086u = this.f12077l.a();
            this.f12087v = this.f12077l.b();
            if (!TextUtils.isEmpty(strI)) {
                RelativeLayout relativeLayout = this.f12079n;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f12079n.setOnClickListener(new c());
                rf.a(this).a(strI, new d());
                return;
            }
            RelativeLayout relativeLayout2 = this.f12079n;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            WebView webView = this.f12066a;
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
        return !c(str) || this.f12068c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            if (i() && h()) {
                int i2 = this.f12090y;
                if (i2 == 2) {
                    if (c8.a(this, this.f12043A)) {
                        c8.b(this, this.f12043A);
                        y1.b.C0179b c0179b = this.f12074i;
                        if (c0179b != null) {
                            List listI = c0179b.i();
                            this.f12074i.l(null);
                            em.a(listI);
                            return;
                        }
                        return;
                    }
                    a(this, 1);
                    return;
                }
                if (i2 == 5) {
                    if (!TextUtils.isEmpty(this.f12044B) && c8.a(this, this.f12044B)) {
                        c8.b(this, this.f12044B);
                        return;
                    }
                    if (sg.a(this, this.f12046D)) {
                        if (!this.f12054L && this.f12055M != 0) {
                            a(this, 2);
                            return;
                        }
                        a(this.f12046D, this);
                        y1.b.C0179b c0179b2 = this.f12074i;
                        if (c0179b2 != null) {
                            List listI2 = c0179b2.i();
                            this.f12074i.l(null);
                            em.a(listI2);
                            return;
                        }
                        return;
                    }
                    l();
                    return;
                }
                return;
            }
            l();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str, Context context) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public class f extends WebViewClient {
        public f() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            BeiZiLandingActivity.this.c();
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
                    if (BeiZiLandingActivity.this.a(string) && !BeiZiLandingActivity.this.b(string)) {
                        BeiZiLandingActivity.this.d(string);
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
            if (!BeiZiLandingActivity.this.a(str) || BeiZiLandingActivity.this.b(str)) {
                return true;
            }
            BeiZiLandingActivity.this.d(str);
            return true;
        }
    }

    private void a(Context context, int i2) {
        try {
            File fileF = c8.f(context);
            String absolutePath = "";
            if (fileF != null) {
                absolutePath = fileF.getAbsolutePath();
            }
            String str = absolutePath;
            ApkBean apkBean = new ApkBean(this.f12046D, this.f12043A + ".apk", this.f12043A, str, this.f12091z, this.f12045C, context.getPackageName() + ".bz.fileprovider", this.f12074i, this.f12047E, this.f12048F, this.f12049G, this.f12050H, this.f12051I, this.f12052J, this.f12053K);
            apkBean.setSendLocalBroadcast(true);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i2);
            bundle.putBoolean("isCanJump", this.f12068c);
            bundle.putBoolean("isDownload", i());
            if (i2 == 2) {
                y1.b.C0179b c0179b = this.f12074i;
                if (c0179b != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0179b.i());
                }
                bundle.putString("landingPageUrl", this.f12071f);
            }
            if (!TextUtils.isEmpty(this.f12070e)) {
                bundle.putString("deeplinkUrl", this.f12070e);
            }
            Serializable serializable = this.f12077l;
            if (serializable != null) {
                bundle.putSerializable("lpOptimizeModule", serializable);
            }
            bundle.putBoolean("isForbidOpenLandingPage", true);
            Intent intent = new Intent(context, (Class<?>) BeiZiDownloadDialogActivity.class);
            intent.putExtra("data", bundle);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean d() {
        try {
            if (TextUtils.isEmpty(this.f12063U) || TextUtils.isEmpty(this.f12064V) || !b4.j().p()) {
                return false;
            }
            String strA = i3.a(this.f12063U);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            new ci().a(this.f12070e, strA, this.f12064V, new h());
            int i2 = this.f12088w + 1;
            this.f12088w = i2;
            int i3 = this.f12082q;
            if (i3 <= 1 && this.f12084s <= 0) {
                k();
            } else if (this.f12084s == 1) {
                if (i3 == 1) {
                    if (i2 >= this.f12085t + 1) {
                        k();
                    }
                } else if (i2 >= this.f12085t) {
                    k();
                }
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
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
}
