package com.beizi.fusion;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.SslError;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.fusion.rf;
import com.beizi.fusion.rn;
import com.beizi.fusion.widget.BZVideoView;
import com.ubix.ssp.open.UBiXLossReason;

/* loaded from: classes2.dex */
public class gj extends l3 {

    /* renamed from: P, reason: collision with root package name */
    private ViewGroup f14069P;

    /* renamed from: Q, reason: collision with root package name */
    private View f14070Q;

    /* renamed from: R, reason: collision with root package name */
    private p1 f14071R;

    /* renamed from: S, reason: collision with root package name */
    private CountDownTimer f14072S;

    /* renamed from: T, reason: collision with root package name */
    private String f14073T;

    /* renamed from: U, reason: collision with root package name */
    private p7 f14074U;

    /* renamed from: V, reason: collision with root package name */
    private int f14075V;

    /* renamed from: W, reason: collision with root package name */
    private int f14076W;

    /* renamed from: X, reason: collision with root package name */
    private WebView f14077X;

    /* renamed from: Y, reason: collision with root package name */
    private cm f14078Y;

    /* renamed from: Z, reason: collision with root package name */
    private String f14079Z;

    /* renamed from: a0, reason: collision with root package name */
    private BZVideoView f14080a0;

    /* renamed from: b0, reason: collision with root package name */
    private boolean f14081b0;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f14082c0;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f14083d0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f14084e0;

    /* renamed from: f0, reason: collision with root package name */
    private boolean f14085f0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gj.this.S();
        }
    }

    public class b implements rf.f {
        public b() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            gj.this.a(8);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                gj.this.W();
                gj.this.X();
                if (gj.this.f14797c != null) {
                    gj.this.f14797c.f(gj.this.f14069P, gj.this.f14806l);
                }
                if (gj.this.f14814t) {
                    gj.this.f14815u = true;
                    v3.b().a(gj.this.f14812r);
                }
                if (gj.this.f14071R != null) {
                    gj.this.f14071R.d();
                }
            } catch (Exception unused) {
                gj.this.a(11);
            }
        }
    }

    public class e extends WebViewClient {
        public e() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                if (gj.this.f14069P == null) {
                    gj.this.a(10);
                    return;
                }
                if (gj.this.f14077X == null) {
                    gj.this.a(9);
                    return;
                }
                if (!gj.this.f14784E) {
                    gj.this.f14069P.addView(gj.this.f14077X);
                    gj.this.M();
                    gj.this.N();
                    gj.this.P();
                    return;
                }
                if (gj.this.f14785F) {
                    gj.this.M();
                    gj.this.N();
                }
                if (gj.this.f14078Y != null) {
                    gj.this.f14078Y.e();
                }
            } catch (Exception unused) {
                gj.this.a(2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            gj.this.a(2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            gj.this.a(2);
        }
    }

    public class f implements BZVideoView.i {
        public f() {
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a(int i2, int i3) {
            gj.this.a(i2, i3);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void b() {
            if (gj.this.f14081b0) {
                return;
            }
            gj.this.f14081b0 = true;
            gj gjVar = gj.this;
            gjVar.a(gjVar.f14080a0, 0);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a() {
            if (gj.this.f14085f0) {
                return;
            }
            gj.this.f14085f0 = true;
            gj gjVar = gj.this;
            gjVar.a(gjVar.f14080a0, 100);
        }
    }

    public class g extends CountDownTimer {
        public g(long j2, long j3) {
            super(j2, j3);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (gj.this.f14797c != null) {
                gj.this.f14797c.a(false);
            }
            if (gj.this.f14071R != null) {
                gj.this.f14071R.b();
            }
            if (gj.this.f14072S != null) {
                gj.this.f14072S.cancel();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j2) {
            if (gj.this.f14071R != null) {
                gj.this.f14071R.a(j2);
            }
        }
    }

    public class h implements View.OnClickListener {
        public h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public class i implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f14101a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f14102b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f14103c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f14104d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f14105e;

        public i(Context context, String str, String str2, String str3, String str4) {
            this.f14101a = context;
            this.f14102b = str;
            this.f14103c = str2;
            this.f14104d = str3;
            this.f14105e = str4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent(this.f14101a, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", this.f14102b);
                intent.putExtra("privacy_content_key", this.f14103c);
                intent.putExtra("permission_content_key", this.f14104d);
                intent.putExtra("intro_content_key", this.f14105e);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                this.f14101a.startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public class j implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14107a;

        public j(int i2) {
            this.f14107a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            gj.this.f14071R.a(this.f14107a);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gj.this.P();
        }
    }

    public gj(Context context, ViewGroup viewGroup, View view, String str) {
        super(context, str, wh.NEW_SPLASH);
        this.f14069P = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        View viewA;
        FrameLayout frameLayoutB;
        try {
            ViewGroup viewGroup = this.f14069P;
            if (viewGroup != null && (viewGroup instanceof FrameLayout)) {
                Context context = viewGroup.getContext();
                LinearLayout linearLayout = new LinearLayout(this.f14069P.getContext());
                linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
                rn.e eVarI = this.f14797c.I();
                if (!TextUtils.isEmpty(eVarI.a()) && (frameLayoutB = eq.b(new MutableContextWrapper(context), eVarI)) != null) {
                    linearLayout.addView(frameLayoutB, new FrameLayout.LayoutParams(-2, -2, 17));
                    frameLayoutB.setVisibility(0);
                    frameLayoutB.setOnClickListener(new h());
                }
                rn.e eVarH = this.f14797c.h();
                if (!TextUtils.isEmpty(eVarH.a()) && (viewA = eq.a(new MutableContextWrapper(this.f14069P.getContext()), eVarH)) != null) {
                    linearLayout.addView(viewA, new FrameLayout.LayoutParams(-2, -2, 17));
                    viewA.setVisibility(0);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
                    layoutParams.setMargins(5, 0, 0, 0);
                    layoutParams.gravity = 17;
                    viewA.setLayoutParams(layoutParams);
                }
                ((FrameLayout) this.f14069P).addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
                int iA = eq.a(context, 12.0f);
                layoutParams2.setMargins(0, 0, iA, iA);
                linearLayout.setLayoutParams(layoutParams2);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        int iF;
        try {
            rn rnVar = this.f14797c;
            if (rnVar != null && this.f14069P != null && ((iF = rnVar.F()) == 2 || iF == 5)) {
                String strJ = this.f14797c.j();
                String strK = this.f14797c.k();
                String strQ = this.f14797c.q();
                String strO = this.f14797c.o();
                String strN = !TextUtils.isEmpty(strO) ? strO : this.f14797c.n();
                String strP = this.f14797c.p();
                String strR = this.f14797c.r();
                Context context = this.f14069P.getContext();
                TextView textView = new TextView(context);
                textView.setText(Html.fromHtml("应用名称：" + strJ + " | 开发者：" + strK + " | 应用版本：" + strQ + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
                textView.setTextSize(2, 6.0f);
                textView.setTextColor(Color.parseColor("#999999"));
                textView.setShadowLayer(1.0f, 1.0f, 1.0f, Color.parseColor("#333333"));
                textView.setPadding(10, 10, 10, 10);
                try {
                    textView.setOnClickListener(new i(context, strJ, strP, strN, strR));
                    int i2 = (wo.i(context) * 2) / 3;
                    ViewGroup viewGroup = this.f14069P;
                    if (viewGroup instanceof FrameLayout) {
                        ((FrameLayout) viewGroup).addView(textView, new FrameLayout.LayoutParams(i2, -2, 83));
                    }
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    private void O() {
        if (this.f14074U == p7.RENDER_PIC && !TextUtils.isEmpty(this.f14073T)) {
            rf.a((Context) null).a(this.f14073T, false, new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (this.f14804j) {
            return;
        }
        this.f14801g = true;
        if (this.f14071R != null) {
            Log.e("BeiZisAd", "enter BeiZi ad load");
            this.f14071R.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        try {
            p7 p7Var = this.f14074U;
            if (p7Var == p7.RENDER_PIC) {
                if (TextUtils.isEmpty(this.f14073T)) {
                    a(3);
                    return;
                } else if (this.f14073T.startsWith("http")) {
                    T();
                    return;
                } else {
                    a(7);
                    return;
                }
            }
            if (p7Var == p7.RENDER_H5) {
                if (TextUtils.isEmpty(this.f14073T)) {
                    a(3);
                    return;
                }
                if (this.f14073T.startsWith("http")) {
                    this.f14073T = "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n  <style>\n    html, body { width: 100%; height: 100%; margin: 0; padding: 0 }\n    .material-wrap { overflow: hidden; position: relative; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: cover }\n    .filter-shadow { content: \"\"; position: absolute; z-index: 2; top: -3%; left: -3%; right: -3%; bottom: -3%; background: inherit; filter: blur(10px) }\n    .material-wrap .black-shadow { position: absolute; z-index: 3; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0, 0, 0, .05) }\n    .material-wrap .material { position: absolute; z-index: 3; top: 0; left: 0; width: 100%; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: contain }\n  </style>\n</head>\n<body>\n  <div class=\"material-wrap\" style=\"background-image: url('__IMAGE_SRC_PATH__')\">\n    <div class=\"filter-shadow\"></div>\n    <div class=\"black-shadow\"></div>\n    <div class=\"material\" style=\"background-image: url('__IMAGE_SRC_PATH__')\"></div>\n  </div>\n</body>\n</html>\n".replaceAll("__IMAGE_SRC_PATH__", this.f14073T);
                }
                V();
                return;
            }
            if (p7Var != p7.RENDER_VIDEO) {
                a(3);
                return;
            }
            if (TextUtils.isEmpty(this.f14079Z)) {
                a(3);
            } else if (this.f14079Z.startsWith("http")) {
                U();
            } else {
                a(7);
            }
        } catch (Exception unused) {
            a(3);
        }
    }

    private void T() {
        ImageView imageView;
        if (this.f14784E) {
            try {
                imageView = new ImageView(this.f14069P.getContext());
                try {
                    this.f14069P.addView(imageView);
                    if (this.f14787H) {
                        imageView.setAlpha(0.0f);
                    }
                    if (!this.f14785F) {
                        M();
                        N();
                    }
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
            }
        } else {
            imageView = null;
        }
        rf.a((Context) null).a(this.f14073T, new d(imageView));
    }

    private void U() {
        try {
            if (this.f14069P == null) {
                a(10);
                return;
            }
            int i2 = this.f14075V;
            int i3 = this.f14076W;
            if (i3 <= 0) {
                i3 = -1;
            }
            this.f14080a0 = new BZVideoView(this.f14795a);
            this.f14080a0.setLayoutParams(new FrameLayout.LayoutParams(i2, i3));
            this.f14069P.setBackgroundColor(Color.parseColor("#000000"));
            this.f14069P.addView(this.f14080a0);
            rn rnVar = this.f14797c;
            boolean zM0 = rnVar != null ? rnVar.m0() : false;
            this.f14080a0.setPlayProgressCallback(new f());
            this.f14080a0.initVideoResource(this.f14079Z, null, zM0);
            M();
            N();
            if (!this.f14784E) {
                P();
                return;
            }
            cm cmVar = this.f14078Y;
            if (cmVar != null) {
                cmVar.e();
            }
        } catch (Exception unused) {
            a(8);
        }
    }

    private void V() {
        ViewGroup viewGroup = this.f14069P;
        if (viewGroup == null) {
            a(10);
            return;
        }
        WebView webView = new WebView(viewGroup.getContext());
        this.f14077X = webView;
        nq.c(webView);
        if (this.f14784E) {
            this.f14069P.addView(this.f14077X);
            if (!this.f14785F) {
                M();
                N();
            }
        }
        this.f14077X.setWebViewClient(new e());
        this.f14077X.loadDataWithBaseURL(null, this.f14073T, "text/html", "UTF-8", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        View view = this.f14070Q;
        if (view == null) {
            return;
        }
        view.setVisibility(0);
    }

    public void Q() {
        try {
            this.f14797c.c(true);
            this.f14797c.b(B());
            this.f14797c.a(this.f14069P, "100", "200", UBiXLossReason.Reason_Occupied, "206", String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f14803i, this.f14806l);
            this.f14803i = true;
            p1 p1Var = this.f14071R;
            if (p1Var == null) {
                return;
            }
            p1Var.a();
        } catch (Exception unused) {
        }
    }

    public BZVideoView R() {
        return this.f14080a0;
    }

    public void X() {
        CountDownTimer countDownTimer = this.f14072S;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (this.f14808n <= 0) {
            this.f14808n = 5;
        }
        g gVar = new g(this.f14808n * 1000, 200L);
        this.f14072S = gVar;
        gVar.start();
    }

    public void b(int i2, int i3) {
        this.f14075V = i2;
        this.f14076W = i3;
    }

    @Override // com.beizi.fusion.l3
    public void c() {
        try {
            rn rnVar = this.f14797c;
            if (rnVar != null) {
                rnVar.a(false);
            }
            p1 p1Var = this.f14071R;
            if (p1Var != null) {
                p1Var.b();
            }
            CountDownTimer countDownTimer = this.f14072S;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
        } catch (Exception unused) {
        }
    }

    public void a(p1 p1Var) {
        this.f14071R = p1Var;
    }

    public void a(View view) {
        ViewGroup viewGroup = this.f14069P;
        if (viewGroup == null) {
            a(11);
        } else {
            this.f14070Q = view;
            viewGroup.post(new c());
        }
    }

    public void b(View.OnTouchListener onTouchListener) {
        WebView webView = this.f14077X;
        if (webView != null) {
            webView.setOnTouchListener(onTouchListener);
            return;
        }
        ViewGroup viewGroup = this.f14069P;
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(onTouchListener);
        }
    }

    public void a(cm cmVar) {
        this.f14078Y = cmVar;
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        double d2 = i3;
        double d3 = i2;
        if (d2 >= 0.25d * d3) {
            try {
                if (!this.f14082c0) {
                    this.f14082c0 = true;
                    a(this.f14080a0, 25);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (d2 >= 0.5d * d3 && !this.f14083d0) {
            this.f14083d0 = true;
            a(this.f14080a0, 50);
        }
        if (d2 < d3 * 0.75d || this.f14084e0) {
            return;
        }
        this.f14084e0 = true;
        a(this.f14080a0, 75);
    }

    public void a(View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            return;
        }
        WebView webView = this.f14077X;
        if (webView != null) {
            webView.setOnTouchListener(onTouchListener);
            return;
        }
        ViewGroup viewGroup = this.f14069P;
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(onTouchListener);
        }
    }

    public void a(h5 h5Var, int i2) {
        try {
            rn rnVar = this.f14797c;
            if (rnVar != null && this.f14069P != null) {
                rnVar.c(true);
                this.f14797c.b(B());
                this.f14797c.a(this.f14069P, h5Var, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f14803i, this.f14806l, i2);
                this.f14803i = true;
                p1 p1Var = this.f14071R;
                if (p1Var == null) {
                    return;
                }
                p1Var.a();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(int i2) {
        if (this.f14071R == null || this.f14804j || this.f14801g) {
            return;
        }
        this.f14804j = true;
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new j(i2));
        }
    }

    public class d implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f14089a;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f14091a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f14092b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ ImageView f14093c;

            /* renamed from: com.beizi.fusion.gj$d$a$a, reason: collision with other inner class name */
            public class RunnableC0161a implements Runnable {

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ BitmapDrawable f14095a;

                public RunnableC0161a(BitmapDrawable bitmapDrawable) {
                    this.f14095a = bitmapDrawable;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView;
                    try {
                        BitmapDrawable bitmapDrawable = this.f14095a;
                        if (bitmapDrawable == null || (imageView = a.this.f14093c) == null) {
                            return;
                        }
                        imageView.setBackground(bitmapDrawable);
                    } catch (Throwable unused) {
                    }
                }
            }

            public a(Context context, Bitmap bitmap, ImageView imageView) {
                this.f14091a = context;
                this.f14092b = bitmap;
                this.f14093c = imageView;
            }

            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmap;
                try {
                    Context context = this.f14091a;
                    if (context == null || (bitmap = this.f14092b) == null) {
                        return;
                    }
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(tf.a(context, bitmap, 20.0f));
                    if (gj.this.f14789J != null) {
                        gj.this.f14789J.post(new RunnableC0161a(bitmapDrawable));
                    }
                } catch (Exception unused) {
                }
            }
        }

        public d(ImageView imageView) {
            this.f14089a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            ViewGroup.LayoutParams layoutParams;
            try {
                if (gj.this.f14069P == null) {
                    gj.this.a(10);
                    return;
                }
                if (bitmap == null) {
                    gj.this.a(8);
                    return;
                }
                Log.e("BeiZisAd", "renderImageView onBitmapLoaded");
                Context context = gj.this.f14069P.getContext();
                float width = (float) ((bitmap.getWidth() * 1.0d) / bitmap.getHeight());
                int i2 = gj.this.f14075V;
                int i3 = gj.this.f14076W > 0 ? gj.this.f14076W : (int) (i2 / width);
                ImageView imageView = gj.this.f14784E ? this.f14089a : new ImageView(context);
                if (imageView != null && (layoutParams = imageView.getLayoutParams()) != null) {
                    layoutParams.width = i2;
                    layoutParams.height = i3;
                    imageView.setLayoutParams(layoutParams);
                }
                float fAbs = Math.abs(((float) ((i2 * 1.0d) / i3)) - width);
                if (fAbs > 0.1f) {
                    x3.c().e().execute(new a(context, bitmap, imageView));
                } else if (fAbs > 0.07d) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                }
                imageView.setImageBitmap(bitmap);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i3);
                if (!gj.this.f14784E) {
                    gj.this.f14069P.addView(imageView, layoutParams2);
                    gj.this.M();
                    gj.this.N();
                    gj.this.P();
                    return;
                }
                imageView.setLayoutParams(layoutParams2);
                if (gj.this.f14787H) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "alpha", 0.0f, 1.0f);
                    objectAnimatorOfFloat.setDuration(200L);
                    objectAnimatorOfFloat.start();
                }
                if (gj.this.f14785F) {
                    gj.this.M();
                    gj.this.N();
                }
                if (gj.this.f14078Y != null) {
                    gj.this.f14078Y.e();
                }
            } catch (Exception unused) {
                gj.this.a(8);
            }
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            if (gj.this.f14784E) {
                try {
                    ImageView imageView = this.f14089a;
                    if (imageView != null) {
                        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                        this.f14089a.setImageResource(R.drawable.beizi_bg_place_holder);
                        if (gj.this.f14787H) {
                            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14089a, "alpha", 0.0f, 1.0f);
                            objectAnimatorOfFloat.setDuration(200L);
                            objectAnimatorOfFloat.start();
                        }
                    }
                    if (gj.this.f14785F) {
                        gj.this.M();
                        gj.this.N();
                    }
                    if (gj.this.f14078Y != null) {
                        gj.this.f14078Y.e();
                        return;
                    }
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            gj.this.a(8);
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(rn rnVar) {
        this.f14808n = rnVar.L();
        this.f14073T = rnVar.J();
        this.f14079Z = rnVar.f0();
        this.f14074U = rnVar.K();
        e(rnVar.V());
        a(rnVar.c());
        b(rnVar.j0());
        if (this.f14784E) {
            this.f14789J.post(new k());
            O();
        } else {
            Handler handler = this.f14789J;
            if (handler != null) {
                handler.post(new a());
            }
        }
    }
}
