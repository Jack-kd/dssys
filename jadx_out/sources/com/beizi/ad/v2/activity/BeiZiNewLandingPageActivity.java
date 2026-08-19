package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
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
import android.widget.TextView;
import android.widget.VideoView;
import com.anythink.core.common.f.g;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.view.CustomRoundImageView;
import com.beizi.ad.lance.ApkBean;
import com.beizi.fusion.R;
import com.beizi.fusion.b4;
import com.beizi.fusion.c8;
import com.beizi.fusion.d4;
import com.beizi.fusion.em;
import com.beizi.fusion.eq;
import com.beizi.fusion.f9;
import com.beizi.fusion.h5;
import com.beizi.fusion.jp;
import com.beizi.fusion.kq;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.nh;
import com.beizi.fusion.nj;
import com.beizi.fusion.nl;
import com.beizi.fusion.nq;
import com.beizi.fusion.oj;
import com.beizi.fusion.q1;
import com.beizi.fusion.qg;
import com.beizi.fusion.qh;
import com.beizi.fusion.rf;
import com.beizi.fusion.rl;
import com.beizi.fusion.sg;
import com.beizi.fusion.so;
import com.beizi.fusion.un;
import com.beizi.fusion.vn;
import com.beizi.fusion.vo;
import com.beizi.fusion.widget.BZCarouselView;
import com.beizi.fusion.wo;
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
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BeiZiNewLandingPageActivity extends Activity {

    /* renamed from: A, reason: collision with root package name */
    private jp f12227A;

    /* renamed from: D, reason: collision with root package name */
    private List f12230D;

    /* renamed from: E, reason: collision with root package name */
    private List f12231E;

    /* renamed from: G, reason: collision with root package name */
    private BZCarouselView f12233G;

    /* renamed from: H, reason: collision with root package name */
    private TextView f12234H;

    /* renamed from: I, reason: collision with root package name */
    private float f12235I;

    /* renamed from: J, reason: collision with root package name */
    private float f12236J;

    /* renamed from: K, reason: collision with root package name */
    private float f12237K;

    /* renamed from: L, reason: collision with root package name */
    private float f12238L;

    /* renamed from: M, reason: collision with root package name */
    private boolean f12239M;

    /* renamed from: N, reason: collision with root package name */
    private int f12240N;

    /* renamed from: O, reason: collision with root package name */
    private String f12241O;

    /* renamed from: P, reason: collision with root package name */
    private String f12242P;

    /* renamed from: Q, reason: collision with root package name */
    private String f12243Q;

    /* renamed from: R, reason: collision with root package name */
    private String f12244R;

    /* renamed from: S, reason: collision with root package name */
    private String f12245S;

    /* renamed from: T, reason: collision with root package name */
    private String f12246T;

    /* renamed from: U, reason: collision with root package name */
    private String f12247U;

    /* renamed from: V, reason: collision with root package name */
    private String f12248V;

    /* renamed from: W, reason: collision with root package name */
    private String f12249W;

    /* renamed from: X, reason: collision with root package name */
    private String f12250X;

    /* renamed from: Y, reason: collision with root package name */
    private String f12251Y;

    /* renamed from: Z, reason: collision with root package name */
    private String f12252Z;

    /* renamed from: a, reason: collision with root package name */
    private WebView f12253a;

    /* renamed from: a0, reason: collision with root package name */
    private boolean f12254a0;

    /* renamed from: b, reason: collision with root package name */
    private ProgressBar f12255b;

    /* renamed from: b0, reason: collision with root package name */
    private int f12256b0;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12257c;

    /* renamed from: c0, reason: collision with root package name */
    private y1.d f12258c0;

    /* renamed from: d, reason: collision with root package name */
    private String f12259d;

    /* renamed from: d0, reason: collision with root package name */
    private int f12260d0;

    /* renamed from: e, reason: collision with root package name */
    private String f12261e;

    /* renamed from: e0, reason: collision with root package name */
    private String f12262e0;

    /* renamed from: f, reason: collision with root package name */
    private String f12263f;

    /* renamed from: f0, reason: collision with root package name */
    private String f12264f0;

    /* renamed from: g, reason: collision with root package name */
    private boolean f12265g;

    /* renamed from: g0, reason: collision with root package name */
    private String f12266g0;

    /* renamed from: h, reason: collision with root package name */
    private boolean f12267h;

    /* renamed from: h0, reason: collision with root package name */
    private String f12268h0;

    /* renamed from: i, reason: collision with root package name */
    private boolean f12269i;

    /* renamed from: i0, reason: collision with root package name */
    private oj f12270i0;

    /* renamed from: j0, reason: collision with root package name */
    private vn f12272j0;

    /* renamed from: k, reason: collision with root package name */
    private qh f12273k;

    /* renamed from: k0, reason: collision with root package name */
    private View f12274k0;

    /* renamed from: l, reason: collision with root package name */
    private View f12275l;

    /* renamed from: l0, reason: collision with root package name */
    private RelativeLayout f12276l0;

    /* renamed from: m, reason: collision with root package name */
    private RelativeLayout f12277m;

    /* renamed from: m0, reason: collision with root package name */
    private CustomRoundImageView f12278m0;

    /* renamed from: n, reason: collision with root package name */
    private ImageView f12279n;

    /* renamed from: n0, reason: collision with root package name */
    private ImageView f12280n0;

    /* renamed from: o, reason: collision with root package name */
    private boolean f12281o;

    /* renamed from: w, reason: collision with root package name */
    private long f12289w;

    /* renamed from: x, reason: collision with root package name */
    private RelativeLayout f12290x;

    /* renamed from: y, reason: collision with root package name */
    private FrameLayout f12291y;

    /* renamed from: z, reason: collision with root package name */
    private d4 f12292z;

    /* renamed from: j, reason: collision with root package name */
    private boolean f12271j = true;

    /* renamed from: p, reason: collision with root package name */
    private int f12282p = -1;

    /* renamed from: q, reason: collision with root package name */
    private int f12283q = -1;

    /* renamed from: r, reason: collision with root package name */
    private int f12284r = -1;

    /* renamed from: s, reason: collision with root package name */
    private int f12285s = -1;

    /* renamed from: t, reason: collision with root package name */
    private int f12286t = -1;

    /* renamed from: u, reason: collision with root package name */
    private int f12287u = -1;

    /* renamed from: v, reason: collision with root package name */
    private int f12288v = 0;

    /* renamed from: B, reason: collision with root package name */
    private int f12228B = 0;

    /* renamed from: C, reason: collision with root package name */
    private int f12229C = 3;

    /* renamed from: F, reason: collision with root package name */
    private int f12232F = 0;

    public class a implements rf.f {
        public a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            if (bitmap != null) {
                if (BeiZiNewLandingPageActivity.this.f12279n != null) {
                    BeiZiNewLandingPageActivity.this.f12279n.setImageBitmap(bitmap);
                }
                if (BeiZiNewLandingPageActivity.this.f12282p == 1 && BeiZiNewLandingPageActivity.this.f12283q == 1) {
                    BeiZiNewLandingPageActivity.this.i();
                }
            }
        }
    }

    public class c extends zp {
        public c(Activity activity) {
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
            if (BeiZiNewLandingPageActivity.this.f12255b == null) {
                return;
            }
            if (i2 < 100 && BeiZiNewLandingPageActivity.this.f12255b.getVisibility() == 8) {
                BeiZiNewLandingPageActivity.this.f12255b.setVisibility(0);
            }
            BeiZiNewLandingPageActivity.this.f12255b.setProgress(i2);
            if (i2 == 100) {
                BeiZiNewLandingPageActivity.this.f12255b.setVisibility(8);
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
                    BeiZiNewLandingPageActivity.this.setContentView(videoView);
                    videoView.start();
                }
            }
        }
    }

    public class d implements oj.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ y1.d f12296a;

        public d(y1.d dVar) {
            this.f12296a = dVar;
        }

        @Override // com.beizi.fusion.oj.e
        public void a() {
            BeiZiNewLandingPageActivity.this.a(this.f12296a);
        }

        @Override // com.beizi.fusion.oj.e
        public void b() {
            try {
                if (BeiZiNewLandingPageActivity.this.f12292z != null) {
                    BeiZiNewLandingPageActivity.this.f12292z.c(true);
                }
                BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                beiZiNewLandingPageActivity.a(this.f12296a, beiZiNewLandingPageActivity.f12291y);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements vn.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f12298a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ y1.d f12299b;

        public e(int i2, y1.d dVar) {
            this.f12298a = i2;
            this.f12299b = dVar;
        }

        @Override // com.beizi.fusion.vn.f
        public void a() {
            nh.a("BeiZisAd", "handleShakeViewContent click");
            try {
                if (BeiZiNewLandingPageActivity.this.f12292z != null) {
                    BeiZiNewLandingPageActivity.this.f12292z.d(true);
                }
                if (this.f12298a == 1) {
                    if (BeiZiNewLandingPageActivity.this.f12274k0 != null && BeiZiNewLandingPageActivity.this.f12291y != null) {
                        BeiZiNewLandingPageActivity.this.f12291y.removeView(BeiZiNewLandingPageActivity.this.f12274k0);
                        BeiZiNewLandingPageActivity.this.f12274k0 = null;
                    }
                    if (BeiZiNewLandingPageActivity.this.f12272j0 != null) {
                        BeiZiNewLandingPageActivity.this.f12272j0.k();
                        BeiZiNewLandingPageActivity.this.f12272j0 = null;
                    }
                }
                BeiZiNewLandingPageActivity.this.a(this.f12299b, "", "", "", "", "", "", "", "", 2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ y1.d f12301a;

        public f(y1.d dVar) {
            this.f12301a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (BeiZiNewLandingPageActivity.this.f12276l0 != null) {
                    BeiZiNewLandingPageActivity.this.f12276l0.setVisibility(8);
                }
                BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                beiZiNewLandingPageActivity.a(this.f12301a, String.valueOf(beiZiNewLandingPageActivity.f12235I), String.valueOf(BeiZiNewLandingPageActivity.this.f12236J), String.valueOf(BeiZiNewLandingPageActivity.this.f12237K), String.valueOf(BeiZiNewLandingPageActivity.this.f12238L), String.valueOf(BeiZiNewLandingPageActivity.this.f12235I), String.valueOf(BeiZiNewLandingPageActivity.this.f12236J), String.valueOf(BeiZiNewLandingPageActivity.this.f12237K), String.valueOf(BeiZiNewLandingPageActivity.this.f12238L), 0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements rf.f {
        public g() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                if (BeiZiNewLandingPageActivity.this.f12278m0 != null) {
                    int iJ = vo.j(BeiZiNewLandingPageActivity.this) - vo.a(BeiZiNewLandingPageActivity.this, 60.0f);
                    int iG = vo.g(BeiZiNewLandingPageActivity.this) - vo.a(BeiZiNewLandingPageActivity.this, 120.0f);
                    if (width > iJ) {
                        width = iJ;
                    }
                    if (height > iG) {
                        height = iG;
                    }
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, height);
                    layoutParams.addRule(13);
                    BeiZiNewLandingPageActivity.this.f12278m0.setLayoutParams(layoutParams);
                    BeiZiNewLandingPageActivity.this.f12278m0.setRectRadius(eq.a(BeiZiNewLandingPageActivity.this, 6.0f));
                    BeiZiNewLandingPageActivity.this.f12278m0.setImageBitmap(bitmap);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ y1.d f12304a;

        public h(y1.d dVar) {
            this.f12304a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (BeiZiNewLandingPageActivity.this.f12276l0 != null) {
                    BeiZiNewLandingPageActivity.this.f12276l0.setVisibility(8);
                }
                if (BeiZiNewLandingPageActivity.this.f12227A != null && BeiZiNewLandingPageActivity.this.f12227A.c() == 1) {
                    BeiZiNewLandingPageActivity.this.f12227A.d(0);
                    if (BeiZiNewLandingPageActivity.this.f12292z != null) {
                        BeiZiNewLandingPageActivity.this.f12292z.a(BeiZiNewLandingPageActivity.this.f12227A);
                    }
                    BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                    beiZiNewLandingPageActivity.a(this.f12304a, String.valueOf(beiZiNewLandingPageActivity.f12235I), String.valueOf(BeiZiNewLandingPageActivity.this.f12236J), String.valueOf(BeiZiNewLandingPageActivity.this.f12237K), String.valueOf(BeiZiNewLandingPageActivity.this.f12238L), String.valueOf(BeiZiNewLandingPageActivity.this.f12235I), String.valueOf(BeiZiNewLandingPageActivity.this.f12236J), String.valueOf(BeiZiNewLandingPageActivity.this.f12237K), String.valueOf(BeiZiNewLandingPageActivity.this.f12238L), 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class i implements View.OnTouchListener {
        public i() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiNewLandingPageActivity.this.f12235I = motionEvent.getX();
            BeiZiNewLandingPageActivity.this.f12236J = motionEvent.getY();
            BeiZiNewLandingPageActivity.this.f12237K = motionEvent.getX();
            BeiZiNewLandingPageActivity.this.f12238L = motionEvent.getY();
            return false;
        }
    }

    public class j implements View.OnClickListener {
        public j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                boolean zL = BeiZiNewLandingPageActivity.this.f12228B == 1 ? BeiZiNewLandingPageActivity.this.l() : false;
                BeiZiNewLandingPageActivity.this.f12228B = 0;
                if (BeiZiNewLandingPageActivity.this.f12227A != null) {
                    BeiZiNewLandingPageActivity.this.f12227A.a(0);
                    if (BeiZiNewLandingPageActivity.this.f12292z != null) {
                        BeiZiNewLandingPageActivity.this.f12292z.a(BeiZiNewLandingPageActivity.this.f12227A);
                    }
                }
                if (zL) {
                    return;
                }
                BeiZiNewLandingPageActivity.this.a();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class k implements View.OnTouchListener {
        public k() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiNewLandingPageActivity.this.f12267h = true;
            return false;
        }
    }

    public class l implements BZCarouselView.e {
        public l() {
        }

        @Override // com.beizi.fusion.widget.BZCarouselView.e
        public void a(int i2) {
            try {
                BeiZiNewLandingPageActivity.this.f12232F = i2;
                y1.d dVar = (y1.d) BeiZiNewLandingPageActivity.this.f12230D.get(i2);
                BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                beiZiNewLandingPageActivity.a(dVar, beiZiNewLandingPageActivity.f12291y);
                BeiZiNewLandingPageActivity.this.c(dVar);
                BeiZiNewLandingPageActivity beiZiNewLandingPageActivity2 = BeiZiNewLandingPageActivity.this;
                beiZiNewLandingPageActivity2.a((nl) beiZiNewLandingPageActivity2.f12231E.get(i2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class m implements View.OnClickListener {
        public m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                BeiZiNewLandingPageActivity.this.f12269i = true;
                y1.d dVar = (y1.d) BeiZiNewLandingPageActivity.this.f12230D.get(BeiZiNewLandingPageActivity.this.f12232F);
                BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                beiZiNewLandingPageActivity.a(dVar, String.valueOf(beiZiNewLandingPageActivity.f12235I), String.valueOf(BeiZiNewLandingPageActivity.this.f12236J), String.valueOf(BeiZiNewLandingPageActivity.this.f12237K), String.valueOf(BeiZiNewLandingPageActivity.this.f12238L), String.valueOf(BeiZiNewLandingPageActivity.this.f12235I), String.valueOf(BeiZiNewLandingPageActivity.this.f12236J), String.valueOf(BeiZiNewLandingPageActivity.this.f12237K), String.valueOf(BeiZiNewLandingPageActivity.this.f12238L), 0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class n implements View.OnTouchListener {
        public n() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiNewLandingPageActivity.this.f12235I = motionEvent.getX();
            BeiZiNewLandingPageActivity.this.f12236J = motionEvent.getY();
            BeiZiNewLandingPageActivity.this.f12237K = motionEvent.getX();
            BeiZiNewLandingPageActivity.this.f12238L = motionEvent.getY();
            return false;
        }
    }

    public class o implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f12312a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f12313b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f12314c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f12315d;

        public o(String str, String str2, String str3, String str4) {
            this.f12312a = str;
            this.f12313b = str2;
            this.f12314c = str3;
            this.f12315d = str4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent(BeiZiNewLandingPageActivity.this, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", this.f12312a);
                intent.putExtra("privacy_content_key", this.f12313b);
                intent.putExtra("permission_content_key", this.f12314c);
                intent.putExtra("intro_content_key", this.f12315d);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                BeiZiNewLandingPageActivity.this.startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public class p implements View.OnTouchListener {
        public p() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BeiZiNewLandingPageActivity.this.f12267h = true;
            return false;
        }
    }

    public class q implements View.OnClickListener {
        public q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public class r implements View.OnClickListener {
        public r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewLandingPageActivity.this.i();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        WebView webView;
        try {
            RelativeLayout relativeLayout = this.f12277m;
            if ((relativeLayout == null || relativeLayout.getVisibility() != 0) && (webView = this.f12253a) != null && webView.canGoBack()) {
                this.f12253a.goBack();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activtiy_beizi_new_landingpage);
            d4 d4Var = d4.f13282A0;
            this.f12292z = d4Var;
            if (d4Var == null) {
                finish();
                return;
            }
            this.f12256b0 = d4Var.t();
            jp jpVarV = this.f12292z.v();
            this.f12227A = jpVarV;
            if (jpVarV != null) {
                this.f12228B = jpVarV.a();
                int iB = this.f12227A.b();
                this.f12229C = iB;
                if (iB <= 0) {
                    this.f12229C = 3;
                }
            }
            y1.d dVarC = this.f12292z.c(0);
            if (dVarC == null) {
                finish();
            } else {
                b(dVarC);
                e();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            oj ojVar = this.f12270i0;
            if (ojVar != null) {
                ojVar.b();
            }
            vn vnVar = this.f12272j0;
            if (vnVar != null) {
                vnVar.k();
            }
            this.f12272j0 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        vn vnVar = this.f12272j0;
        if (vnVar != null) {
            vnVar.l();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        List listK;
        super.onResume();
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.f12292z == null) {
            finish();
            return;
        }
        if (!this.f12271j) {
            this.f12269i = false;
            y1.b.C0179b c0179bB = b();
            if (c0179bB != null && (listK = c0179bB.k()) != null && listK.size() > 0) {
                List listJ = c0179bB.j();
                c0179bB.p(null);
                em.a(listJ);
            }
            m();
            if (!TextUtils.isEmpty(this.f12263f) && !TextUtils.isEmpty(this.f12261e) && !this.f12261e.equals(this.f12263f)) {
                this.f12253a.loadUrl(this.f12261e, f9.a());
            }
        }
        if (this.f12286t == 1 && System.currentTimeMillis() - this.f12289w < this.f12287u) {
            i();
        }
        this.f12289w = 0L;
        vn vnVar = this.f12272j0;
        if (vnVar != null) {
            vnVar.m();
        }
        this.f12271j = false;
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        try {
            this.f12289w = System.currentTimeMillis();
            if (this.f12269i) {
                this.f12263f = null;
                y1.b.C0179b c0179bB = b();
                if (c0179bB != null) {
                    List listK = c0179bB.k();
                    c0179bB.q(null);
                    em.a(listK);
                }
                j();
            }
            o();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        List listK;
        nl nlVarA;
        try {
            if (this.f12292z == null) {
                return;
            }
            this.f12290x = (RelativeLayout) findViewById(R.id.lp_new_root_container_rl);
            this.f12234H = (TextView) findViewById(R.id.lp_new_group_download_tv);
            List<y1.d> listS = this.f12292z.s();
            this.f12230D = new ArrayList();
            if (listS != null && listS.size() > 0) {
                for (y1.d dVar : listS) {
                    if (dVar != null) {
                        if (dVar.y() == 0) {
                            this.f12230D.add(0, dVar);
                        }
                        if (dVar.y() == 1) {
                            this.f12230D.add(dVar);
                        }
                    }
                }
            }
            int iJ = vo.j(this);
            int i2 = (int) (iJ * 0.5625d);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iJ, i2);
            List list = this.f12230D;
            if (list != null && list.size() > 0) {
                FrameLayout frameLayout = (FrameLayout) findViewById(R.id.lp_new_group_image_container_fl);
                this.f12291y = frameLayout;
                frameLayout.setVisibility(0);
                this.f12291y.setLayoutParams(layoutParams);
                ArrayList arrayList = null;
                for (y1.d dVar2 : this.f12230D) {
                    if (dVar2 != null && (listK = dVar2.k()) != null && listK.size() > 0 && (nlVarA = a(((y1.a) listK.get(0)).d())) != null) {
                        String strI = nlVarA.i();
                        if (!TextUtils.isEmpty(strI)) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(strI);
                            if (this.f12231E == null) {
                                this.f12231E = new ArrayList();
                            }
                            y1.b bVarM = dVar2.m();
                            if (bVarM != null) {
                                nlVarA.c(bVarM.a());
                                nlVarA.a(bVarM.n());
                                nlVarA.a(bVarM.c());
                                nlVarA.g(bVarM.i());
                                nlVarA.d(bVarM.f());
                                nlVarA.e(bVarM.g());
                                nlVarA.f(bVarM.h());
                                nlVarA.h(bVarM.j());
                                nlVarA.i(bVarM.k());
                                nlVarA.b(bVarM.d());
                            }
                            this.f12231E.add(nlVarA);
                        }
                    }
                }
                a(arrayList, iJ, i2);
            }
            this.f12253a = (WebView) findViewById(R.id.lp_new_web_view);
            ((ImageView) findViewById(R.id.lp_new_close_iv)).setOnClickListener(new j());
            this.f12255b = (ProgressBar) findViewById(R.id.lp_new_progress_bar);
            this.f12275l = findViewById(R.id.lp_new_mask_view);
            this.f12277m = (RelativeLayout) findViewById(R.id.lp_new_dialog_container_rl);
            this.f12279n = (ImageView) findViewById(R.id.lp_new_dialog_iv);
            f();
            WebView webView = this.f12253a;
            if (webView != null) {
                webView.setOnTouchListener(new k());
            }
            k();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void f() {
        WebView webView = this.f12253a;
        if (webView == null) {
            return;
        }
        nq.c(webView);
        if (!TextUtils.isEmpty(this.f12261e)) {
            this.f12253a.loadUrl(this.f12261e, f9.a());
        }
        this.f12253a.setWebViewClient(new b());
        this.f12253a.setWebChromeClient(new c(this));
    }

    private boolean g() {
        int i2 = this.f12240N;
        return i2 == 2 ? !TextUtils.isEmpty(this.f12245S) && this.f12245S.startsWith("http") : i2 == 5 && !TextUtils.isEmpty(this.f12245S);
    }

    private boolean h() {
        if (TextUtils.isEmpty(this.f12241O) || TextUtils.isEmpty(this.f12247U) || TextUtils.isEmpty(this.f12246T) || TextUtils.isEmpty(this.f12250X) || TextUtils.isEmpty(this.f12252Z)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f12249W) && TextUtils.isEmpty(this.f12248V)) {
            return false;
        }
        int i2 = this.f12240N;
        return i2 == 2 || i2 == 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        y1.b.C0179b c0179bB = b();
        try {
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (c0179bB != null) {
                    List listC = c0179bB.c();
                    c0179bB.e(null);
                    em.a(listC);
                }
                int i2 = this.f12288v + 1;
                this.f12288v = i2;
                int i3 = this.f12282p;
                if (i3 > 1 || this.f12284r > 0) {
                    if (this.f12284r != 1) {
                        return;
                    }
                    if (i3 == 1) {
                        if (i2 < this.f12285s + 1) {
                            return;
                        }
                    } else if (i2 < this.f12285s) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                int i4 = this.f12288v + 1;
                this.f12288v = i4;
                int i5 = this.f12282p;
                if (i5 <= 1 && this.f12284r <= 0) {
                    j();
                } else if (this.f12284r == 1) {
                    if (i5 == 1) {
                        if (i4 >= this.f12285s + 1) {
                            j();
                        }
                    } else if (i4 >= this.f12285s) {
                        j();
                    }
                }
                throw th2;
            }
        }
        if (!this.f12281o) {
            int i6 = this.f12288v + 1;
            this.f12288v = i6;
            int i7 = this.f12282p;
            if (i7 <= 1 && this.f12284r <= 0) {
                j();
                return;
            }
            if (this.f12284r == 1) {
                if (i7 == 1) {
                    if (i6 >= this.f12285s + 1) {
                        j();
                        return;
                    }
                    return;
                } else {
                    if (i6 >= this.f12285s) {
                        j();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (TextUtils.isEmpty(this.f12259d)) {
            int i8 = this.f12288v + 1;
            this.f12288v = i8;
            int i9 = this.f12282p;
            if (i9 <= 1 && this.f12284r <= 0) {
                j();
                return;
            }
            if (this.f12284r == 1) {
                if (i9 == 1) {
                    if (i8 >= this.f12285s + 1) {
                        j();
                        return;
                    }
                    return;
                } else {
                    if (i8 >= this.f12285s) {
                        j();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        this.f12269i = true;
        this.f12265g = true;
        Uri uri = Uri.parse(this.f12259d);
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
        } else if (this.f12259d.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri);
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent2);
        } else if (this.f12259d.startsWith("intent")) {
            Intent uri2 = Intent.parseUri(this.f12259d, 1);
            uri2.addFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(uri2);
        } else {
            Intent intent3 = new Intent("android.intent.action.VIEW", uri);
            intent3.addFlags(805339136);
            startActivity(intent3);
        }
        if (c0179bB != null) {
            List listF = c0179bB.f();
            c0179bB.h(null);
            em.a(listF);
            List listD = c0179bB.d();
            c0179bB.f(null);
            em.a(listD);
        }
        int i10 = this.f12288v + 1;
        this.f12288v = i10;
        int i11 = this.f12282p;
        if (i11 > 1 || this.f12284r > 0) {
            if (this.f12284r == 1) {
                if (i11 == 1) {
                    if (i10 < this.f12285s + 1) {
                        return;
                    }
                    j();
                    return;
                } else {
                    if (i10 < this.f12285s) {
                        return;
                    }
                    j();
                    return;
                }
            }
            return;
        }
        j();
    }

    private void j() {
        try {
            RelativeLayout relativeLayout = this.f12277m;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.f12277m.setOnClickListener(null);
            }
            View view = this.f12275l;
            if (view != null) {
                view.setVisibility(8);
                this.f12275l.setOnClickListener(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void k() {
        d4 d4Var;
        nj njVarU;
        nl nlVarA;
        try {
            if (this.f12290x != null && (d4Var = this.f12292z) != null && (njVarU = d4Var.u()) != null && !this.f12292z.z()) {
                y1.d dVarC = this.f12292z.c(2);
                if (dVarC == null) {
                    dVarC = this.f12292z.c(0);
                }
                if (dVarC == null) {
                    return;
                }
                List listK = dVarC.k();
                if (listK != null && listK.size() > 0 && (nlVarA = a(((y1.a) listK.get(0)).d())) != null) {
                    String strI = nlVarA.i();
                    if (!TextUtils.isEmpty(strI)) {
                        njVarU.c(strI);
                    }
                    String strL = nlVarA.l();
                    if (!TextUtils.isEmpty(strL)) {
                        njVarU.d(strL);
                    }
                    String strK = nlVarA.k();
                    if (!TextUtils.isEmpty(strK)) {
                        njVarU.b(strK);
                    }
                }
                this.f12270i0 = new oj();
                this.f12270i0.a(this.f12290x, wo.h(this), wo.g(this), njVarU, new d(dVarC));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        d4 d4Var;
        y1.d dVarC;
        List listK;
        nl nlVarA;
        try {
            if (this.f12228B != 1 || (d4Var = this.f12292z) == null || (dVarC = d4Var.c(4)) == null || (listK = dVarC.k()) == null || listK.isEmpty() || (nlVarA = a(((y1.a) listK.get(0)).d())) == null) {
                return false;
            }
            String strI = nlVarA.i();
            if (TextUtils.isEmpty(strI)) {
                return false;
            }
            this.f12276l0 = (RelativeLayout) findViewById(R.id.lp_new_privilege_container_rl);
            this.f12278m0 = (CustomRoundImageView) findViewById(R.id.lp_new_privilege_iv);
            this.f12280n0 = (ImageView) findViewById(R.id.lp_new_privilege_close_iv);
            this.f12276l0.setVisibility(0);
            this.f12278m0.setOnClickListener(new f(dVarC));
            rf.a(this).a(strI, new g());
            this.f12280n0.setOnClickListener(new h(dVarC));
            this.f12276l0.setOnTouchListener(new i());
            a(dVarC, this.f12276l0);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void m() {
        try {
            BZCarouselView bZCarouselView = this.f12233G;
            if (bZCarouselView != null) {
                bZCarouselView.startCarousel();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void n() {
        y1.b.C0179b c0179bB;
        y1.b.C0179b c0179bB2;
        try {
            if (this.f12260d0 == 0) {
                return;
            }
            if (!TextUtils.isEmpty(this.f12262e0) && !TextUtils.isEmpty(this.f12264f0)) {
                if (!kq.a(this, this.f12262e0, this.f12264f0, this.f12266g0) || (c0179bB2 = b()) == null) {
                    return;
                }
                List listH = c0179bB2.h();
                c0179bB2.k(null);
                em.a(listH);
                return;
            }
            if (TextUtils.isEmpty(this.f12268h0) || !kq.a(this, this.f12268h0) || (c0179bB = b()) == null) {
                return;
            }
            List listH2 = c0179bB.h();
            c0179bB.k(null);
            em.a(listH2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void o() {
        try {
            BZCarouselView bZCarouselView = this.f12233G;
            if (bZCarouselView != null) {
                bZCarouselView.stopCarousel();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f12273k == null || TextUtils.isEmpty(this.f12259d) || this.f12239M) {
            return;
        }
        this.f12239M = true;
        String strI = this.f12273k.i();
        if (TextUtils.isEmpty(strI)) {
            return;
        }
        boolean zA = rl.a(this.f12273k.e());
        this.f12281o = zA;
        if (zA) {
            WebView webView = this.f12253a;
            if (webView != null) {
                webView.setOnTouchListener(new p());
            }
            int iH = this.f12273k.h();
            View view = this.f12275l;
            if (view != null && iH == 1) {
                view.setVisibility(0);
                this.f12275l.setOnClickListener(new q());
            }
            this.f12282p = this.f12273k.c();
            this.f12283q = this.f12273k.d();
            this.f12284r = this.f12273k.f();
            this.f12285s = this.f12273k.g();
            this.f12286t = this.f12273k.a();
            this.f12287u = this.f12273k.b();
            if (!TextUtils.isEmpty(strI)) {
                RelativeLayout relativeLayout = this.f12277m;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f12277m.setOnClickListener(new r());
                rf.a(this).a(strI, new a());
            } else {
                RelativeLayout relativeLayout2 = this.f12277m;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            if (this.f12282p == 1) {
                int i2 = this.f12283q;
                if (i2 == 0 || i2 == 2) {
                    i();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
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
    public boolean b(String str) {
        return !d(str) || this.f12257c;
    }

    private void b(y1.d dVar) {
        this.f12258c0 = dVar;
        d(dVar);
        if (!TextUtils.isEmpty(this.f12259d)) {
            y1.b.C0179b c0179bB = b();
            try {
                this.f12265g = true;
                this.f12269i = true;
                Uri uri = Uri.parse(this.f12259d);
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
                    startActivity(intent);
                } else if (this.f12259d.startsWith("hwpps://landingpage")) {
                    Intent intent2 = new Intent();
                    intent2.setData(uri);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(intent2);
                } else if (this.f12259d.startsWith("intent")) {
                    Intent uri2 = Intent.parseUri(this.f12259d, 1);
                    uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(uri2);
                } else {
                    Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                    intent3.addFlags(805339136);
                    startActivity(intent3);
                }
                if (c0179bB != null) {
                    List listF = c0179bB.f();
                    c0179bB.h(null);
                    em.a(listF);
                    List listD = c0179bB.d();
                    c0179bB.f(null);
                    em.a(listD);
                    return;
                }
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                if (c0179bB != null) {
                    List listC = c0179bB.c();
                    c0179bB.e(null);
                    em.a(listC);
                }
                c();
                return;
            }
        }
        c();
    }

    private void c() {
        try {
            if (h() && g()) {
                y1.b.C0179b c0179bB = b();
                int i2 = this.f12240N;
                if (i2 == 2) {
                    if (c8.a(this, this.f12242P)) {
                        c8.b(this, this.f12242P);
                        if (c0179bB != null) {
                            List listI = c0179bB.i();
                            c0179bB.l(null);
                            em.a(listI);
                            return;
                        }
                        return;
                    }
                    a((Context) this, 1);
                    return;
                }
                if (i2 == 5) {
                    if (!TextUtils.isEmpty(this.f12243Q) && c8.a(this, this.f12243Q)) {
                        c8.b(this, this.f12243Q);
                        return;
                    }
                    if (sg.a(this, this.f12245S)) {
                        if (!this.f12254a0 && this.f12256b0 != 0) {
                            a((Context) this, 2);
                            return;
                        }
                        a(this.f12245S, this);
                        if (c0179bB != null) {
                            List listI2 = c0179bB.i();
                            c0179bB.l(null);
                            em.a(listI2);
                            return;
                        }
                        return;
                    }
                    n();
                    return;
                }
                return;
            }
            n();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public class b extends WebViewClient {
        public b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            BeiZiNewLandingPageActivity.this.d();
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
                    if (BeiZiNewLandingPageActivity.this.b(string) && !BeiZiNewLandingPageActivity.this.c(string)) {
                        BeiZiNewLandingPageActivity.this.e(string);
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
            if (!BeiZiNewLandingPageActivity.this.b(str) || BeiZiNewLandingPageActivity.this.c(str)) {
                return true;
            }
            BeiZiNewLandingPageActivity.this.e(str);
            return true;
        }
    }

    private void a(List list, int i2, int i3) {
        if (list == null || list.isEmpty() || this.f12292z == null) {
            return;
        }
        BZCarouselView bZCarouselView = new BZCarouselView(this);
        this.f12233G = bZCarouselView;
        bZCarouselView.setOnContentChangeListener(new l());
        this.f12233G.setImageUrls(list, i2, i3);
        this.f12233G.setScrollInterval(this.f12229C);
        this.f12291y.setVisibility(0);
        this.f12291y.addView(this.f12233G);
        this.f12291y.setOnClickListener(new m());
        this.f12291y.setOnTouchListener(new n());
        if (list.size() == 1) {
            a((nl) this.f12231E.get(0));
        }
        m();
    }

    public void a(nl nlVar) {
        try {
            TextView textView = this.f12234H;
            if (textView == null) {
                return;
            }
            if (nlVar == null) {
                textView.setVisibility(8);
                return;
            }
            if (!nlVar.m()) {
                this.f12234H.setVisibility(8);
                return;
            }
            int iJ = nlVar.j();
            if (iJ != 2 && iJ != 5) {
                this.f12234H.setVisibility(8);
                return;
            }
            this.f12234H.setVisibility(0);
            String strB = nlVar.b();
            String strA = nlVar.a();
            String strF = nlVar.f();
            String strD = nlVar.d();
            String strC = !TextUtils.isEmpty(strD) ? strD : nlVar.c();
            String strE = nlVar.e();
            String strG = nlVar.g();
            this.f12234H.setText(Html.fromHtml("应用名称：" + strB + " | 开发者：" + strA + " | 应用版本：" + strF + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
            this.f12234H.setTextColor(Color.parseColor("#999999"));
            this.f12234H.setShadowLayer(1.0f, 1.0f, 1.0f, Color.parseColor("#333333"));
            this.f12234H.setOnClickListener(new o(strB, strE, strC, strG));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(y1.d dVar) {
        un unVarX;
        FrameLayout frameLayout;
        try {
            View view = this.f12274k0;
            if (view != null && (frameLayout = this.f12291y) != null) {
                frameLayout.removeView(view);
                this.f12274k0 = null;
            }
            vn vnVar = this.f12272j0;
            if (vnVar != null) {
                vnVar.k();
                this.f12272j0 = null;
            }
            if (dVar == null || q1.i().v() || (unVarX = dVar.x()) == null) {
                return;
            }
            int iG = unVarX.g();
            int i2 = unVarX.i();
            double dK = unVarX.k();
            double dJ = unVarX.j();
            int iH = unVarX.h();
            int iB = unVarX.b();
            double d2 = unVarX.d();
            double dC = unVarX.c();
            int iA = unVarX.a();
            int iE = unVarX.e();
            int iF = unVarX.f();
            boolean z2 = true;
            if (iE != 1 || iB <= 0 || d2 <= 0.0d || dC <= 0.0d) {
                z2 = false;
            }
            boolean zA = this.f12292z.A();
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = new AdSpacesBean.BuyerBean.ShakeViewBean();
            if (zA && z2) {
                shakeViewBean.setShakeCount(iB);
                shakeViewBean.setShakeStartAmplitude(d2);
                shakeViewBean.setShakeEndAmplitude(dC);
                shakeViewBean.setRegulatoryAngle(iA);
            } else {
                shakeViewBean.setShakeCount(i2);
                shakeViewBean.setShakeStartAmplitude(dK);
                shakeViewBean.setShakeEndAmplitude(dJ);
                shakeViewBean.setRegulatoryAngle(iH);
            }
            vn vnVar2 = new vn(this, shakeViewBean, null, dVar.b());
            this.f12272j0 = vnVar2;
            View viewA = vnVar2.a(this.f12291y);
            this.f12274k0 = viewA;
            if (viewA != null) {
                if (iG == 0) {
                    viewA.setVisibility(4);
                } else {
                    viewA.setVisibility(0);
                }
            }
            this.f12272j0.a(new e(iF, dVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean d(String str) {
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

    private void d(y1.d dVar) {
        y1.b bVarM;
        d4 d4Var;
        this.f12263f = this.f12261e;
        this.f12257c = false;
        this.f12240N = 0;
        this.f12241O = null;
        this.f12242P = null;
        this.f12243Q = null;
        this.f12244R = null;
        this.f12245S = null;
        this.f12246T = null;
        this.f12247U = null;
        this.f12248V = null;
        this.f12249W = null;
        this.f12250X = null;
        this.f12251Y = null;
        this.f12252Z = null;
        this.f12254a0 = false;
        this.f12261e = null;
        this.f12259d = null;
        this.f12260d0 = 0;
        this.f12262e0 = null;
        this.f12264f0 = null;
        this.f12266g0 = null;
        this.f12268h0 = null;
        if (this.f12292z == null || dVar == null || (bVarM = dVar.m()) == null) {
            return;
        }
        this.f12261e = bVarM.p();
        if (TextUtils.isEmpty(this.f12263f)) {
            this.f12263f = this.f12261e;
        }
        this.f12259d = bVarM.k();
        this.f12240N = bVarM.n();
        this.f12241O = bVarM.a();
        this.f12242P = bVarM.t();
        if (this.f12258c0.y() == 0 && (d4Var = this.f12292z) != null) {
            this.f12243Q = d4Var.e();
        }
        this.f12244R = bVarM.b();
        this.f12245S = bVarM.d();
        this.f12246T = bVarM.i();
        this.f12247U = bVarM.c();
        this.f12248V = bVarM.f();
        this.f12249W = bVarM.g();
        this.f12250X = bVarM.h();
        this.f12251Y = bVarM.e();
        this.f12252Z = bVarM.j();
        y1.b.a aVarL = bVarM.l();
        if (aVarL != null) {
            if (aVarL.a() == 1) {
                this.f12257c = true;
            }
            if (aVarL.b() == 1) {
                this.f12254a0 = true;
            }
        }
        this.f12260d0 = bVarM.o();
        this.f12262e0 = bVarM.r();
        this.f12264f0 = bVarM.s();
        this.f12266g0 = bVarM.q();
        this.f12268h0 = bVarM.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            WebView webView = this.f12253a;
            if (webView != null) {
                webView.destroy();
            }
            finish();
        } catch (Exception e2) {
            e2.printStackTrace();
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
            y1.b.C0179b c0179bB = b();
            ApkBean apkBean = new ApkBean(this.f12245S, this.f12242P + ".apk", this.f12242P, str, this.f12241O, this.f12244R, context.getPackageName() + ".bz.fileprovider", c0179bB, this.f12246T, this.f12247U, this.f12248V, this.f12249W, this.f12250X, this.f12251Y, this.f12252Z);
            apkBean.setSendLocalBroadcast(true);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i2);
            bundle.putBoolean("isCanJump", this.f12257c);
            bundle.putBoolean("isDownload", h());
            if (i2 == 2) {
                if (c0179bB != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0179bB.i());
                }
                bundle.putString("landingPageUrl", this.f12261e);
            }
            if (!TextUtils.isEmpty(this.f12259d)) {
                bundle.putString("deeplinkUrl", this.f12259d);
            }
            Serializable serializable = this.f12273k;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        if (!this.f12265g || this.f12267h) {
            this.f12265g = true;
            Uri uri = so.b(str) ? null : Uri.parse(str);
            if (uri == null) {
                return;
            }
            this.f12269i = true;
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            try {
                startActivity(intent);
                y1.b.C0179b c0179bB = b();
                if (c0179bB != null) {
                    List listF = c0179bB.f();
                    c0179bB.h(null);
                    em.a(listF);
                    List listD = c0179bB.d();
                    c0179bB.f(null);
                    em.a(listD);
                }
            } catch (Exception unused) {
            }
        }
    }

    private y1.b.C0179b b() {
        y1.d dVar;
        y1.b bVarM;
        try {
            if (this.f12292z == null || (dVar = this.f12258c0) == null || (bVarM = dVar.m()) == null) {
                return null;
            }
            return bVarM.m();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private boolean a(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    private nl a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                String strE = jSONObject.has(g.a.f3271h) ? qg.e(jSONObject, g.a.f3271h) : null;
                String strE2 = jSONObject.has("desc") ? qg.e(jSONObject, "desc") : null;
                String strE3 = jSONObject.has("appIcon") ? qg.e(jSONObject, "appIcon") : null;
                String strE4 = jSONObject.has("Image") ? qg.e(jSONObject, "Image") : null;
                nl nlVar = new nl();
                nlVar.m(strE);
                nlVar.l(strE2);
                nlVar.j(strE3);
                nlVar.k(strE4);
                return nlVar;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(y1.d dVar, ViewGroup viewGroup) {
        d4 d4Var;
        if (dVar == null) {
            return;
        }
        try {
            if (dVar.y() == 0 || (d4Var = this.f12292z) == null || viewGroup == null) {
                return;
            }
            d4Var.a(dVar, viewGroup);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(y1.d dVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2) {
        y1.d dVar2;
        if (dVar == null) {
            return;
        }
        try {
            if (this.f12292z == null) {
                return;
            }
            if (dVar.y() != 0) {
                h5 h5Var = new h5();
                h5Var.g(str);
                h5Var.c(str5);
                h5Var.h(str2);
                h5Var.d(str6);
                h5Var.e(str3);
                h5Var.a(str7);
                h5Var.f(str4);
                h5Var.b(str8);
                dVar2 = dVar;
                this.f12292z.a(dVar2, this.f12291y, h5Var, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), i2);
            } else {
                dVar2 = dVar;
            }
            b(dVar2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(y1.d dVar) {
        try {
            int[] iArr = new int[2];
            int width = this.f12291y.getWidth();
            int height = this.f12291y.getHeight();
            this.f12291y.getLocationOnScreen(iArr);
            int[] iArrB = rl.b(width / 2, height / 2);
            a(dVar, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
