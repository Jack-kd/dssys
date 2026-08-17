package com.octopus.ad.internal.e;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.GravityCompat;
import com.anythink.core.common.f.g;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.material.badge.BadgeDrawable;
import com.octopus.ad.AdActivity;
import com.octopus.ad.AdLifeControl;
import com.octopus.ad.FullScreenVideoAdListener;
import com.octopus.ad.IBidding;
import com.octopus.ad.InterstitialAdListener;
import com.octopus.ad.Octopus;
import com.octopus.ad.OnSensorListener;
import com.octopus.ad.R;
import com.octopus.ad.RewardVideoAdListener;
import com.octopus.ad.SplashAdListener;
import com.octopus.ad.a.c;
import com.octopus.ad.d.i;
import com.octopus.ad.d.j;
import com.octopus.ad.d.k;
import com.octopus.ad.d.l;
import com.octopus.ad.internal.activity.EndingPageActivity;
import com.octopus.ad.internal.activity.StopoverDialogActivity;
import com.octopus.ad.internal.b.a;
import com.octopus.ad.internal.c.d;
import com.octopus.ad.internal.d.u;
import com.octopus.ad.internal.k;
import com.octopus.ad.internal.o;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.t;
import com.octopus.ad.internal.utilities.ImageManager;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.v;
import com.octopus.ad.internal.video.VideoStateListener;
import com.octopus.ad.listener.OnCpaListener;
import com.octopus.ad.model.AdLogoInfo;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.model.ShakeValue;
import com.octopus.ad.utils.OctUtil;
import com.octopus.ad.utils.ThreadUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class a extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, AdLifeControl, IBidding, com.octopus.ad.internal.a {

    /* renamed from: A, reason: collision with root package name */
    private FullScreenVideoAdListener f34719A;

    /* renamed from: B, reason: collision with root package name */
    private RewardVideoAdListener f34720B;

    /* renamed from: C, reason: collision with root package name */
    private com.octopus.ad.a.a f34721C;

    /* renamed from: D, reason: collision with root package name */
    private final Handler f34722D;

    /* renamed from: E, reason: collision with root package name */
    private b f34723E;

    /* renamed from: F, reason: collision with root package name */
    private com.octopus.ad.internal.d.b f34724F;

    /* renamed from: G, reason: collision with root package name */
    private com.octopus.ad.internal.d.h f34725G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f34726H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f34727I;

    /* renamed from: J, reason: collision with root package name */
    private boolean f34728J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f34729K;

    /* renamed from: L, reason: collision with root package name */
    private boolean f34730L;

    /* renamed from: M, reason: collision with root package name */
    private AppCompatTextView f34731M;

    /* renamed from: N, reason: collision with root package name */
    private AppCompatTextView f34732N;

    /* renamed from: O, reason: collision with root package name */
    private ImageView f34733O;

    /* renamed from: P, reason: collision with root package name */
    private com.octopus.ad.b.a f34734P;

    /* renamed from: Q, reason: collision with root package name */
    private com.octopus.ad.b.a f34735Q;

    /* renamed from: R, reason: collision with root package name */
    private com.octopus.ad.b.a f34736R;

    /* renamed from: S, reason: collision with root package name */
    private AppCompatImageView f34737S;

    /* renamed from: T, reason: collision with root package name */
    private AppCompatTextView f34738T;

    /* renamed from: U, reason: collision with root package name */
    private ProgressBar f34739U;

    /* renamed from: V, reason: collision with root package name */
    private FrameLayout f34740V;

    /* renamed from: W, reason: collision with root package name */
    private FrameLayout f34741W;

    /* renamed from: a, reason: collision with root package name */
    protected C0753a f34742a;
    private boolean aA;
    private boolean aB;
    private boolean aC;
    private ViewGroup aD;
    private final String aE;
    private String aF;
    private String aG;
    private String aH;
    private String aI;
    private Pair<String, Integer> aJ;
    private boolean aK;
    private boolean aL;
    private boolean aM;
    private boolean aN;
    private boolean aO;
    private float aP;
    private float aQ;
    private int aR;
    private l aS;
    private k aT;
    private j aU;
    private OnSensorListener aV;
    private OnCpaListener aW;
    private VideoStateListener aX;
    private k.a aY;
    private k.a aZ;
    private LinearLayout aa;
    private int ab;
    private String ac;
    private String ad;
    private String ae;
    private int af;
    private int ag;
    private int ah;
    private long ai;
    private long aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private boolean ap;
    private boolean aq;
    private boolean ar;
    private Boolean as;
    private boolean at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private int ax;
    private com.octopus.ad.d ay;
    private com.octopus.ad.internal.e.b az;

    /* renamed from: b, reason: collision with root package name */
    protected com.octopus.ad.internal.e.c f34743b;
    private TextView ba;
    private TextView bb;
    private ImageView bc;
    private TextView bd;
    private RelativeLayout be;
    private String bf;
    private boolean bg;
    private boolean bh;
    private k.a bi;
    private final c bj;
    private boolean bk;

    /* renamed from: c, reason: collision with root package name */
    protected com.octopus.ad.internal.d f34744c;

    /* renamed from: d, reason: collision with root package name */
    protected a.C0746a f34745d;

    /* renamed from: e, reason: collision with root package name */
    public com.octopus.ad.internal.c f34746e;

    /* renamed from: f, reason: collision with root package name */
    protected p f34747f;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f34748g;

    /* renamed from: h, reason: collision with root package name */
    public int f34749h;

    /* renamed from: i, reason: collision with root package name */
    public int f34750i;

    /* renamed from: j, reason: collision with root package name */
    public int f34751j;

    /* renamed from: k, reason: collision with root package name */
    public int f34752k;

    /* renamed from: l, reason: collision with root package name */
    public int f34753l;

    /* renamed from: m, reason: collision with root package name */
    public int f34754m;

    /* renamed from: n, reason: collision with root package name */
    protected boolean f34755n;

    /* renamed from: o, reason: collision with root package name */
    protected boolean f34756o;

    /* renamed from: p, reason: collision with root package name */
    protected boolean f34757p;

    /* renamed from: q, reason: collision with root package name */
    protected boolean f34758q;

    /* renamed from: r, reason: collision with root package name */
    protected boolean f34759r;

    /* renamed from: s, reason: collision with root package name */
    protected Context f34760s;

    /* renamed from: t, reason: collision with root package name */
    private ViewGroup f34761t;

    /* renamed from: u, reason: collision with root package name */
    private com.octopus.ad.internal.b.f f34762u;

    /* renamed from: v, reason: collision with root package name */
    private int f34763v;

    /* renamed from: w, reason: collision with root package name */
    private int f34764w;

    /* renamed from: x, reason: collision with root package name */
    private float f34765x;

    /* renamed from: y, reason: collision with root package name */
    private SplashAdListener f34766y;

    /* renamed from: z, reason: collision with root package name */
    private InterstitialAdListener f34767z;

    /* renamed from: com.octopus.ad.internal.e.a$a, reason: collision with other inner class name */
    public static class C0753a {

        /* renamed from: a, reason: collision with root package name */
        public EnumC0754a f34825a = EnumC0754a.UNCHANGE;

        /* renamed from: b, reason: collision with root package name */
        public boolean f34826b = false;

        /* renamed from: com.octopus.ad.internal.e.a$a$a, reason: collision with other inner class name */
        public enum EnumC0754a {
            UNCHANGE,
            STATE_PREPARE_CHANGE,
            STATE_BACKGROUND,
            FINISHCLOSE
        }

        public boolean a() {
            return this.f34826b;
        }

        public void b() {
            this.f34825a = EnumC0754a.UNCHANGE;
        }

        public EnumC0754a c() {
            return this.f34825a;
        }

        public void a(boolean z2) {
            this.f34826b = z2;
        }

        public synchronized void a(EnumC0754a enumC0754a) {
            try {
                EnumC0754a enumC0754a2 = EnumC0754a.STATE_PREPARE_CHANGE;
                if (enumC0754a == enumC0754a2 && this.f34825a == EnumC0754a.UNCHANGE) {
                    this.f34825a = enumC0754a2;
                }
                EnumC0754a enumC0754a3 = EnumC0754a.STATE_BACKGROUND;
                if (enumC0754a == enumC0754a3 && this.f34825a == enumC0754a2) {
                    this.f34825a = enumC0754a3;
                }
                EnumC0754a enumC0754a4 = EnumC0754a.FINISHCLOSE;
                if (enumC0754a == enumC0754a4 && this.f34825a == enumC0754a3 && this.f34826b) {
                    this.f34825a = enumC0754a4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public class b implements com.octopus.ad.internal.b {

        /* renamed from: b, reason: collision with root package name */
        private final Handler f34833b;

        /* renamed from: c, reason: collision with root package name */
        private com.octopus.ad.internal.b.b f34834c;

        public b(Handler handler) {
            this.f34833b = handler;
        }

        @Override // com.octopus.ad.internal.b
        public void b() {
            this.f34833b.post(new Runnable() { // from class: com.octopus.ad.internal.e.a.b.4
                @Override // java.lang.Runnable
                public void run() {
                    a.this.C();
                    a.this.f34742a.a(C0753a.EnumC0754a.STATE_PREPARE_CHANGE);
                    boolean z2 = Boolean.TRUE == a.this.as || !(Boolean.FALSE == a.this.as || a.this.ap || a.this.at || a.this.am);
                    if (a.this.f34762u != null) {
                        if (a.this.f34728J && z2) {
                            a.this.f34762u.a(a.this.aW);
                        }
                        a.this.f34762u.b(a.this.f34728J && z2);
                    }
                    if (a.this.f34728J && z2) {
                        if (a.this.f34766y != null) {
                            a.this.f34766y.onAdClicked();
                            return;
                        }
                        if (a.this.f34767z != null) {
                            a.this.f34767z.onAdClicked();
                        } else if (a.this.f34719A != null) {
                            a.this.f34719A.onAdClicked();
                        } else if (a.this.f34720B != null) {
                            a.this.f34720B.onRewardVideoAdClicked();
                        }
                    }
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void c() {
        }

        @Override // com.octopus.ad.internal.b
        public void d() {
        }

        @Override // com.octopus.ad.internal.b
        public void a(com.octopus.ad.internal.b.b bVar) {
            this.f34834c = bVar;
            if (bVar.a().equals(p.NATIVE) || bVar.a().equals(p.DRAW) || bVar.a().equals(p.BANNER)) {
                a(80103);
                return;
            }
            com.octopus.ad.internal.d dVar = a.this.f34744c;
            if (dVar != null && dVar.l()) {
                a.this.ar = true;
                a.this.v();
                return;
            }
            if (a.this.f34762u != null && a.this.f34762u.r() == 1) {
                a(80100);
                a.this.u();
                if (a.this.aq) {
                    return;
                }
                com.octopus.ad.internal.b.a.b(a.this.f34762u);
                return;
            }
            if (a.this.f34762u == null) {
                a(80100);
                return;
            }
            a.this.setPrice(bVar.c());
            a.this.setTagId(bVar.d());
            a.this.setValidTime(bVar.e());
            a.this.l();
            if (a.this.f34762u.m() == p.REWARD) {
                a aVar = a.this;
                aVar.a(aVar.f34762u.w());
            }
            this.f34833b.post(new Runnable() { // from class: com.octopus.ad.internal.e.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    View adView = a.this.getAdView();
                    if (adView == null) {
                        return;
                    }
                    adView.getViewTreeObserver().addOnGlobalLayoutListener(a.this);
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a(com.octopus.ad.internal.e.c cVar) {
            a.this.setCreativeWidth(cVar.getCreativeWidth());
            a.this.setCreativeHeight(cVar.getCreativeHeight());
            if (a.this.a(cVar)) {
                com.octopus.ad.d.b.f.d("OctopusAd_Time", "Displayable");
                a aVar = a.this;
                aVar.f34759r = true;
                aVar.E();
                a.this.n();
            }
        }

        @Override // com.octopus.ad.internal.b
        public void a(boolean z2) {
            a.this.a(z2);
            if (a.this.f34762u != null) {
                a.this.f34762u.b();
                a.a(a.this.f34762u, a.this.bj);
            }
        }

        @Override // com.octopus.ad.internal.b
        public void a(final int i2) {
            this.f34833b.post(new Runnable() { // from class: com.octopus.ad.internal.e.a.b.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.b(i2);
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a() {
            if (a.this.an) {
                return;
            }
            a.this.an = true;
            a.this.C();
            if (a.this.f34762u != null && !a.this.av) {
                a.this.f34762u.ac();
            }
            this.f34833b.post(new Runnable() { // from class: com.octopus.ad.internal.e.a.b.3
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f34766y != null) {
                        a.this.f34766y.onAdClosed();
                    } else if (a.this.f34767z != null) {
                        a.this.f34767z.onAdClosed();
                    } else if (a.this.f34719A != null) {
                        a.this.f34719A.onAdClosed();
                    } else if (a.this.f34720B != null) {
                        a.this.f34720B.onRewardVideoAdClosed();
                    }
                    a.this.f34742a.b();
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a(final long j2) {
            this.f34833b.post(new Runnable() { // from class: com.octopus.ad.internal.e.a.b.5
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f34766y == null || b.this.f34834c == null || !b.this.f34834c.a().equals(p.SPLASH)) {
                        return;
                    }
                    a.this.f34766y.onAdTick(j2);
                }
            });
        }
    }

    public interface c {
        void a();
    }

    public a(Context context, String str) {
        super(context, null, 0);
        this.f34742a = new C0753a();
        this.f34722D = new Handler(Looper.getMainLooper()) { // from class: com.octopus.ad.internal.e.a.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.f34744c = null;
        this.f34745d = null;
        this.f34726H = false;
        this.f34729K = false;
        this.f34748g = false;
        this.af = 0;
        this.ag = 0;
        this.ak = true;
        this.al = true;
        this.ax = 0;
        this.aB = false;
        this.aC = false;
        this.f34755n = false;
        this.f34756o = false;
        this.f34757p = false;
        this.f34758q = false;
        this.f34759r = false;
        this.aJ = null;
        this.aK = false;
        this.aL = false;
        this.aM = false;
        this.aN = false;
        this.aR = 2;
        this.bj = new c() { // from class: com.octopus.ad.internal.e.a.32
            @Override // com.octopus.ad.internal.e.a.c
            public void a() {
                if (a.this.an || a.this.ao || a.this.ap) {
                    return;
                }
                a.this.w();
            }
        };
        this.bk = false;
        this.aE = str;
        a(context, (AttributeSet) null);
    }

    public static /* synthetic */ int W(a aVar) {
        int i2 = aVar.aR;
        aVar.aR = i2 - 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getAdView() {
        com.octopus.ad.d dVar = this.ay;
        if (dVar != null) {
            return dVar;
        }
        com.octopus.ad.internal.e.b bVar = this.az;
        if (bVar != null) {
            return bVar.f34844c;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.octopus.ad.a.d getRandomClickPosition() {
        int screenWidth;
        int screenHeight;
        try {
            if (this.aq || this.ar) {
                screenWidth = ViewUtil.getScreenWidth(getContext());
                screenHeight = ViewUtil.getScreenHeight(getContext());
            } else {
                View adView = getAdView();
                if (adView != null) {
                    screenWidth = adView.getWidth();
                    screenHeight = adView.getHeight();
                } else {
                    screenWidth = 0;
                    screenHeight = 0;
                }
                if (screenWidth == 0 || screenHeight == 0) {
                    screenWidth = ViewUtil.getScreenWidth(getContext());
                    screenHeight = ViewUtil.getScreenWidth(getContext());
                }
            }
            int iA = i.a(screenWidth);
            int iA2 = i.a(screenHeight);
            int iA3 = i.a(150) + 50;
            com.octopus.ad.a.d dVar = new com.octopus.ad.a.d(1);
            dVar.a(iA);
            dVar.b(iA2);
            dVar.a(String.valueOf(System.currentTimeMillis()));
            dVar.d(String.valueOf(System.currentTimeMillis()));
            dVar.c(String.valueOf(System.currentTimeMillis() / 1000));
            dVar.c(iA);
            dVar.d(iA2);
            dVar.b(String.valueOf(System.currentTimeMillis() + iA3));
            dVar.e(screenWidth);
            dVar.f(screenHeight);
            return dVar;
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            return null;
        }
    }

    public void a(Context context) {
    }

    public abstract boolean a(com.octopus.ad.internal.e.c cVar);

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        destroy();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, "called destroy() on AdView");
        G();
        if (this.aY != null) {
            com.octopus.ad.internal.k.a().b(this.aY);
        }
        if (this.aZ != null) {
            com.octopus.ad.internal.k.a().b(this.aZ);
        }
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar != null) {
            fVar.al();
        }
        com.octopus.ad.internal.c cVar = this.f34746e;
        if (cVar != null) {
            cVar.b();
            this.f34746e.a();
            this.f34746e = null;
        }
        com.octopus.ad.internal.e.c cVar2 = this.f34743b;
        if (cVar2 != null) {
            cVar2.k();
            this.f34743b = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.octopus.ad.internal.b getAdDispatcher() {
        return this.f34723E;
    }

    public com.octopus.ad.internal.d getAdParameters() {
        return this.f34744c;
    }

    public a.C0746a getAdRequest() {
        return this.f34745d;
    }

    public com.octopus.ad.b getAdSize() {
        return new com.octopus.ad.b(this.f34763v, this.f34764w);
    }

    public String getAdSlotId() {
        com.octopus.ad.internal.d dVar = this.f34744c;
        return dVar == null ? "" : dVar.c();
    }

    public long getExposeTime() {
        com.octopus.ad.internal.d dVar = this.f34744c;
        return dVar != null ? dVar.i() : System.currentTimeMillis();
    }

    public String getExtraData() {
        return this.ad;
    }

    public Map<String, Object> getMediaExtraInfo() {
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        return fVar != null ? fVar.ab() : Collections.EMPTY_MAP;
    }

    public boolean getOpensNativeBrowser() {
        return this.f34744c.p();
    }

    public int getPrice() {
        return this.ab;
    }

    public String getRequestId() {
        com.octopus.ad.internal.d dVar = this.f34744c;
        return (dVar == null || TextUtils.isEmpty(dVar.f())) ? this.aG : this.f34744c.f();
    }

    public ShakeValue getShakeValue() {
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar != null) {
            return fVar.aa();
        }
        return null;
    }

    public ViewGroup getSplashParent() {
        return this.f34761t;
    }

    public String getTagId() {
        return this.ac;
    }

    public String getUserId() {
        return this.ae;
    }

    public VideoStateListener getVideoStateListener() {
        return this.aX;
    }

    public void h() {
    }

    public abstract boolean k();

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        com.octopus.ad.internal.c cVar = this.f34746e;
        if (cVar != null) {
            cVar.a();
        }
        C();
        F();
        I();
        r();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        c.p pVarK;
        View adView = getAdView();
        if (adView == null) {
            return;
        }
        adView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar == null || this.au || (pVarK = fVar.K()) == null) {
            return;
        }
        c.n nVarA = pVarK.a();
        if (nVarA != null) {
            e(nVarA.a() == 1);
        } else if (b() || d()) {
            e(false);
        }
        c.v vVarC = pVarK.c();
        if (vVarC != null && vVarC.a() == 1) {
            a(vVarC);
        }
        c.t tVarD = pVarK.d();
        if (tVarD != null && tVarD.a() == 1) {
            a(tVarD.b());
        }
        c.s sVarB = pVarK.b();
        if (sVarB != null && sVarB.a() == 1) {
            b(sVarB.b());
        }
        if (this.ay == null) {
            m();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
        if (this.bg) {
            z();
            this.bg = false;
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
        com.octopus.ad.internal.b.f fVar;
        com.octopus.ad.b.a aVar = this.f34736R;
        if (aVar != null) {
            aVar.b();
        }
        C0753a c0753a = this.f34742a;
        C0753a.EnumC0754a enumC0754a = C0753a.EnumC0754a.FINISHCLOSE;
        c0753a.a(enumC0754a);
        if (this.f34742a.c() == enumC0754a) {
            getAdDispatcher().a();
        }
        if ((this.aA || ((fVar = this.f34762u) != null && fVar.X())) && this.ao && getMediaType() == p.INTERSTITIAL) {
            A();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
        this.f34742a.a(C0753a.EnumC0754a.STATE_BACKGROUND);
    }

    public abstract void r();

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        try {
            com.octopus.ad.internal.b.f fVar = this.f34762u;
            if (fVar != null) {
                fVar.a(i2, str, str2);
            }
            u();
            if (this.aq) {
                return;
            }
            com.octopus.ad.internal.b.a.b(this.f34762u);
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        try {
            com.octopus.ad.internal.b.f fVar = this.f34762u;
            if (fVar != null) {
                fVar.b(i2);
            }
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    public void setAdSlotId(String str) {
        com.octopus.ad.internal.d dVar = this.f34744c;
        if (dVar != null) {
            dVar.b(str);
        }
    }

    public void setAdVideoView(com.octopus.ad.d dVar) {
        this.ay = dVar;
    }

    public void setAdWebView(com.octopus.ad.internal.e.b bVar) {
        this.az = bVar;
    }

    public void setChannel(String str) {
        com.octopus.ad.internal.d dVar = this.f34744c;
        if (dVar != null) {
            dVar.c(str);
        }
    }

    public void setClickBackClose(boolean z2) {
        this.aA = z2;
    }

    public void setCountDownTime(int i2) {
        this.ah = i2;
    }

    public void setCreativeHeight(int i2) {
        this.f34764w = i2;
    }

    public void setCreativeWidth(int i2) {
        this.f34763v = i2;
        if (!c()) {
            this.f34765x = 1.0f;
            return;
        }
        int i3 = this.f34763v;
        float f2 = i3 > 0 ? i3 / 640.0f : 1.0f;
        this.f34765x = f2;
        if (f2 > 1.0f) {
            this.f34765x = 1.0f;
        }
    }

    public void setExtraData(String str) {
        this.ad = str;
    }

    public void setFullScreenVideoAdListener(FullScreenVideoAdListener fullScreenVideoAdListener) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(R.string.set_full_screen_video_ad_listener));
        this.f34719A = fullScreenVideoAdListener;
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(R.string.set_interstitial_ad_listener));
        this.f34767z = interstitialAdListener;
    }

    public void setIsBoost(boolean z2) {
        this.f34744c.b(z2);
    }

    public void setIsClicked(boolean z2) {
        this.ao = z2;
        G();
    }

    public void setIsS2SBoost(boolean z2) {
        this.f34744c.c(z2);
    }

    public void setOnCpaListener(OnCpaListener onCpaListener) {
        this.aW = onCpaListener;
    }

    public void setOnSensorListener(OnSensorListener onSensorListener) {
        this.aV = onSensorListener;
    }

    public void setOpensNativeBrowser(boolean z2) {
        this.f34744c.d(z2);
    }

    public void setPrice(int i2) {
        this.ab = i2;
    }

    public void setRequestId(String str) {
        com.octopus.ad.internal.d dVar = this.f34744c;
        if (dVar != null) {
            dVar.d(str);
        }
    }

    public void setRewardVideoAdListener(RewardVideoAdListener rewardVideoAdListener) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(R.string.set_reward_video_ad_listener));
        this.f34720B = rewardVideoAdListener;
    }

    public void setScrollClick(View.OnTouchListener onTouchListener) {
        View adView = getAdView();
        if (adView == null) {
            return;
        }
        adView.setOnTouchListener(onTouchListener);
    }

    public void setServerResponse(com.octopus.ad.internal.b.f fVar) {
        this.f34762u = fVar;
        if (fVar != null) {
            this.f34756o = fVar.Q();
            this.at = this.f34762u.T();
            this.am = this.f34762u.U();
            this.as = this.f34762u.S();
            this.av = this.f34762u.C();
            this.aw = this.f34762u.W();
            this.au = this.f34762u.N() && d();
        }
    }

    public void setSplashAdListener(SplashAdListener splashAdListener) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(R.string.set_splash_ad_listener));
        this.f34766y = splashAdListener;
    }

    public void setTagId(String str) {
        this.ac = str;
    }

    public void setUserId(String str) {
        this.ae = str;
    }

    public void setValidTime(long j2) {
        q.f34985y = j2;
        this.aj = j2;
    }

    public void setVideoStateListener(VideoStateListener videoStateListener) {
        this.aX = videoStateListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.f34758q = true;
        G();
        if (getAdDispatcher() != null) {
            getAdDispatcher().a();
        }
        com.octopus.ad.b.a aVar = this.f34734P;
        if (aVar != null) {
            aVar.d();
        }
        com.octopus.ad.internal.e.b bVar = this.az;
        if (bVar != null) {
            Activity activityB = b(bVar.getView());
            if (!k() || activityB == null || activityB.isFinishing() || !(activityB instanceof AdActivity)) {
                return;
            }
            activityB.finish();
        }
    }

    private void B() {
        if (!this.aw || this.aM) {
            return;
        }
        this.aM = true;
        OctUtil.a().a(getContext().getApplicationContext(), 1004);
        q.a().a(getAdSlotId(), getRequestId(), System.currentTimeMillis() - getExposeTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        if (!this.aw || this.aN || getContext() == null) {
            return;
        }
        this.aN = true;
        OctUtil.a().a(getContext().getApplicationContext(), 1005);
    }

    private void D() {
        c.l lVarJ;
        if (this.f34762u == null || !q.a().f() || (lVarJ = this.f34762u.j()) == null || TextUtils.isEmpty(lVarJ.c())) {
            return;
        }
        q.a().a(this.f34762u.ag());
        if (lVarJ.b() == 1) {
            this.f34721C = q.a().f35022m.get(lVarJ.c());
        }
        com.octopus.ad.a.a aVar = this.f34721C;
        if (aVar == null || !aVar.j() || this.f34721C.f() < getPrice()) {
            com.octopus.ad.a.a aVar2 = new com.octopus.ad.a.a();
            this.f34721C = aVar2;
            aVar2.a(getPrice());
            this.f34721C.a(this.ai);
            this.f34721C.b(this.aj);
            this.f34721C.a(getRequestId());
            this.f34721C.b(lVarJ.a());
            this.f34721C.b(lVarJ.c());
            this.f34721C.c(lVarJ.d());
            this.f34721C.a(this.f34762u.V());
            this.f34721C.e(this.f34762u.Z());
            com.octopus.ad.internal.b.f fVar = this.f34762u;
            if (fVar != null && fVar.a() != null) {
                this.f34721C.d(this.f34762u.Y());
                this.f34721C.a(this.f34762u.a().v());
            }
            q.a().f35022m.put(lVarJ.c(), this.f34721C);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        com.octopus.ad.d dVar = this.ay;
        if (dVar == null) {
            return;
        }
        String videoUrl = dVar.getVideoUrl();
        this.aF = videoUrl;
        if (TextUtils.isEmpty(videoUrl)) {
            b(false);
            return;
        }
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar != null && (!fVar.z() || "m3u8".equalsIgnoreCase(this.f34762u.h()))) {
            b(true);
            return;
        }
        com.octopus.ad.internal.d.h hVarB = q.a().b();
        this.f34725G = hVarB;
        if (hVarB == null) {
            b(false);
            return;
        }
        if (hVarB.b(this.aF)) {
            b(true);
            return;
        }
        if (this.f34762u == null) {
            b(false);
            return;
        }
        com.octopus.ad.internal.d.b bVar = new com.octopus.ad.internal.d.b() { // from class: com.octopus.ad.internal.e.a.17
            @Override // com.octopus.ad.internal.d.b
            public void a(File file, String str, int i2) {
                if (i2 == 100) {
                    a.this.b(true);
                }
            }
        };
        this.f34724F = bVar;
        this.f34725G.a(bVar, this.aF);
        a(this.aF, new u() { // from class: com.octopus.ad.internal.e.a.18
            @Override // com.octopus.ad.internal.d.u
            public void a(boolean z2, String str) {
                a.this.b(z2);
            }
        });
    }

    private void F() {
        if (this.f34725G == null || this.f34724F == null || TextUtils.isEmpty(this.aF)) {
            return;
        }
        this.f34725G.b(this.f34724F, this.aF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        com.octopus.ad.b.a aVar = this.f34735Q;
        if (aVar != null) {
            aVar.d();
        }
        LinearLayout linearLayout = this.aa;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar != null && fVar.M() && this.ak) {
            Map<String, Object> mapAb = this.f34762u.ab();
            if (mapAb != null && !mapAb.isEmpty()) {
                Intent intent = new Intent(getContext(), (Class<?>) StopoverDialogActivity.class);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                Bundle bundle = new Bundle();
                bundle.putSerializable("mapData", (Serializable) mapAb);
                intent.putExtra("bundleData", bundle);
                getContext().startActivity(intent);
                this.aY = new k.a() { // from class: com.octopus.ad.internal.e.a.30
                    @Override // com.octopus.ad.internal.k.a
                    public void a(String str) {
                        if ("adClick".equals(str)) {
                            a aVar = a.this;
                            aVar.a(aVar.getRandomClickPosition());
                            return;
                        }
                        if ("getReward".equals(str)) {
                            if (a.this.f34733O != null) {
                                a.this.f34733O.setVisibility(0);
                            }
                            a.this.p();
                        } else if ("StopoverFinish".equals(str)) {
                            if (a.this.f34734P != null) {
                                a.this.f34734P.c();
                            }
                            com.octopus.ad.internal.k.a().b(a.this.aY);
                            a.this.aY = null;
                        }
                    }
                };
                com.octopus.ad.internal.k.a().a(this.aY);
                com.octopus.ad.b.a aVar = this.f34734P;
                if (aVar != null) {
                    aVar.b();
                }
            }
            this.ak = false;
        }
    }

    private void I() {
        l lVar = this.aS;
        if (lVar != null) {
            lVar.a();
            this.aS = null;
        }
        j jVar = this.aU;
        if (jVar != null) {
            jVar.a();
        }
        com.octopus.ad.d.k kVar = this.aT;
        if (kVar != null) {
            kVar.b();
        }
    }

    private void t() {
        try {
            a(this.f34762u, this.bj);
            a(0, 30, 0, 0);
            int iH = this.ah;
            if (iH < 3) {
                iH = this.az.h();
            }
            a(iH);
            ViewGroup viewGroup = this.f34761t;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                this.f34761t.addView(this, new ViewGroup.LayoutParams(-1, -1));
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        com.octopus.ad.internal.b.f fVar;
        c.x xVarL;
        c.q qVarC;
        if (this.aq || (fVar = this.f34762u) == null || (xVarL = fVar.L()) == null || (qVarC = xVarL.c()) == null) {
            return;
        }
        if (qVarC.a() == 1) {
            this.aq = true;
            this.f34762u.c(true);
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.e.a.33
                @Override // java.lang.Runnable
                public void run() {
                    a.this.y();
                }
            }, qVarC.c());
            if (qVarC.b() == 1) {
                final boolean z2 = qVarC.e() == 1;
                if (z2) {
                    this.bi = new k.a() { // from class: com.octopus.ad.internal.e.a.34
                        @Override // com.octopus.ad.internal.k.a
                        public void a(String str) {
                            if ("AppBackground".equals(str)) {
                                a.this.f34730L = true;
                            }
                        }
                    };
                    com.octopus.ad.internal.k.a().a(this.bi);
                }
                new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.e.a.35
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!a.this.f34730L) {
                            a.this.w();
                        }
                        if (z2) {
                            com.octopus.ad.internal.k.a().b(a.this.bi);
                        }
                    }
                }, qVarC.d());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        c.x xVarL;
        c.q qVarC;
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar == null || (xVarL = fVar.L()) == null || (qVarC = xVarL.c()) == null) {
            return;
        }
        if (qVarC.a() == 1) {
            this.f34762u.d(true);
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.e.a.36
                @Override // java.lang.Runnable
                public void run() {
                    a.this.y();
                }
            }, qVarC.c());
            if (qVarC.b() == 1) {
                final boolean z2 = qVarC.e() == 1;
                if (z2) {
                    this.bi = new k.a() { // from class: com.octopus.ad.internal.e.a.37
                        @Override // com.octopus.ad.internal.k.a
                        public void a(String str) {
                            if ("AppBackground".equals(str)) {
                                a.this.f34730L = true;
                            }
                        }
                    };
                    com.octopus.ad.internal.k.a().a(this.bi);
                }
                new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.e.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!a.this.f34730L) {
                            a.this.w();
                        }
                        if (z2) {
                            com.octopus.ad.internal.k.a().b(a.this.bi);
                        }
                    }
                }, qVarC.d());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.octopus.ad.internal.b.f fVar;
        if (this.az == null || (fVar = this.f34762u) == null) {
            return;
        }
        if (a(fVar)) {
            this.ap = false;
            this.ax = 0;
        } else {
            this.ap = true;
            this.ax = 9;
        }
        this.az.a(this.ax, getRandomClickPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (!this.am || this.ao) {
            A();
            return;
        }
        this.ax = 2;
        com.octopus.ad.d dVar = this.ay;
        if (dVar != null) {
            dVar.setOpt(2);
        } else {
            com.octopus.ad.internal.e.b bVar = this.az;
            if (bVar != null) {
                bVar.c(2);
            }
        }
        a(getRandomClickPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        com.octopus.ad.internal.b.f fVar = this.f34762u;
        if (fVar != null) {
            fVar.a(g(), (com.octopus.ad.a) null);
        }
    }

    private void z() {
        com.octopus.ad.b.a aVar = this.f34736R;
        if (aVar != null) {
            aVar.c();
            return;
        }
        com.octopus.ad.b.a aVar2 = new com.octopus.ad.b.a((this.af * 1000) + 800, 500L);
        this.f34736R = aVar2;
        aVar2.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.internal.e.a.6
            @Override // com.octopus.ad.b.b
            public void a() {
            }

            @Override // com.octopus.ad.b.b
            public void b() {
            }

            @Override // com.octopus.ad.b.b
            public void a(long j2) {
                try {
                    a.this.af = (int) (j2 / 1000);
                    if (a.this.af > 0) {
                        if (a.this.ba != null) {
                            a.this.ba.setText(String.format("%s秒", Integer.valueOf(a.this.af)));
                            a.this.f34731M.setText(String.format("点击广告并浏览%s秒可领奖", Integer.valueOf(a.this.af)));
                            return;
                        }
                        return;
                    }
                    if (a.this.bb != null) {
                        a.this.bb.setText("关闭广告");
                        a.this.bc.setVisibility(8);
                        a.this.be.setVisibility(8);
                        a.this.bd.setVisibility(0);
                    }
                    a.this.p();
                    a.this.bh = true;
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        });
        this.f34736R.a();
    }

    public void i() {
        ProgressBar progressBar = this.f34739U;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    public boolean j() {
        return this.f34726H;
    }

    public void l() {
        if (this.aB) {
            return;
        }
        this.aB = true;
        this.ai = System.currentTimeMillis();
        SplashAdListener splashAdListener = this.f34766y;
        if (splashAdListener != null) {
            splashAdListener.onAdLoaded();
        } else {
            InterstitialAdListener interstitialAdListener = this.f34767z;
            if (interstitialAdListener != null) {
                interstitialAdListener.onAdLoaded();
            } else {
                FullScreenVideoAdListener fullScreenVideoAdListener = this.f34719A;
                if (fullScreenVideoAdListener != null) {
                    fullScreenVideoAdListener.onAdLoaded();
                } else {
                    RewardVideoAdListener rewardVideoAdListener = this.f34720B;
                    if (rewardVideoAdListener != null) {
                        rewardVideoAdListener.onRewardVideoAdLoaded();
                    }
                }
            }
        }
        D();
    }

    public void m() {
        if (this.aO || this.f34762u == null) {
            return;
        }
        if (d() || e()) {
            this.aO = true;
            c.z zVarK = this.f34762u.k();
            if (zVarK == null || zVarK.a() != 1) {
                return;
            }
            c(zVarK.b());
        }
    }

    public void n() {
        if (this.f34757p) {
            if (this.f34747f == p.SPLASH) {
                a(this.aD);
            } else {
                a(this.f34760s);
            }
        }
    }

    public void o() {
        RewardVideoAdListener rewardVideoAdListener;
        if (this.aL || !this.f34728J || (rewardVideoAdListener = this.f34720B) == null) {
            return;
        }
        this.aL = true;
        rewardVideoAdListener.onRewardVideoAdComplete();
    }

    public void p() {
        if (this.aK || this.aJ == null) {
            return;
        }
        this.aK = true;
        AppCompatTextView appCompatTextView = this.f34731M;
        if (appCompatTextView != null) {
            appCompatTextView.setText("恭喜获得奖励");
        }
        if (!TextUtils.isEmpty(this.aH)) {
            q();
        } else {
            Pair<String, Integer> pair = this.aJ;
            a((String) pair.first, ((Integer) pair.second).intValue());
        }
    }

    public void q() {
        new t(this.aH).a(new d.a() { // from class: com.octopus.ad.internal.e.a.20
            @Override // com.octopus.ad.internal.c.d.a
            public void a(int i2, boolean z2, String str) {
                if (z2 && !TextUtils.isEmpty(str)) {
                    try {
                        if (new JSONObject(str).optBoolean("isValid") && a.this.aJ != null) {
                            a aVar = a.this;
                            aVar.a((String) aVar.aJ.first, ((Integer) a.this.aJ.second).intValue());
                        }
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                } else if (a.this.aR > 0) {
                    new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.e.a.20.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.q();
                            a.W(a.this);
                        }
                    }, 200L);
                }
                if (z2 || a.this.aR == 0) {
                    a.this.d(z2);
                }
            }
        }).b();
    }

    public void s() {
        com.octopus.ad.internal.b.f fVar;
        if (this.au || this.f34758q || (fVar = this.f34762u) == null || !fVar.O() || this.av || !this.al) {
            return;
        }
        Map<String, Object> mapAb = this.f34762u.ab();
        if (mapAb != null && !mapAb.isEmpty()) {
            Intent intent = new Intent(getContext(), (Class<?>) EndingPageActivity.class);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            Bundle bundle = new Bundle();
            bundle.putSerializable("mapData", (Serializable) mapAb);
            intent.putExtra("bundleData", bundle);
            getContext().startActivity(intent);
            this.aZ = new k.a() { // from class: com.octopus.ad.internal.e.a.31
                @Override // com.octopus.ad.internal.k.a
                public void a(String str) {
                    if ("adClick".equals(str)) {
                        a aVar = a.this;
                        aVar.a(aVar.getRandomClickPosition());
                    } else {
                        if (!"feedBackClick".equals(str) || TextUtils.isEmpty(a.this.aI)) {
                            return;
                        }
                        ViewUtil.openLocalBrowser(a.this.aI, 0);
                    }
                }
            };
            com.octopus.ad.internal.k.a().a(this.aZ);
        }
        this.al = false;
    }

    public boolean c() {
        return p.INTERSTITIAL == this.f34747f;
    }

    public boolean d() {
        return p.REWARD == this.f34747f;
    }

    public boolean e() {
        return p.FULLSCREEN == this.f34747f;
    }

    public boolean f() {
        return this.aB;
    }

    public boolean g() {
        long jCurrentTimeMillis;
        long jG;
        com.octopus.ad.internal.d dVar = this.f34744c;
        if (dVar != null && dVar.g() > 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
            jG = this.f34744c.g();
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            jG = this.ai;
        }
        return jCurrentTimeMillis - jG <= this.aj;
    }

    public boolean b() {
        return p.SPLASH == this.f34747f;
    }

    public void c(View view) {
        try {
            ViewUtil.removeChildFromParent(this.f34740V);
            ViewUtil.removeChildFromParent(this.f34741W);
            ViewParent parent = view instanceof FrameLayout ? (FrameLayout) view : view.getParent();
            if (parent instanceof FrameLayout) {
                if (this.f34740V != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 42, BadgeDrawable.BOTTOM_START);
                    layoutParams.setMargins(30, 0, 0, 50);
                    ((FrameLayout) parent).addView(this.f34740V, layoutParams);
                    this.f34740V.setVisibility(0);
                }
                if (this.f34741W != null) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, 42, BadgeDrawable.BOTTOM_END);
                    layoutParams2.setMargins(0, 0, 30, 50);
                    ((FrameLayout) parent).addView(this.f34741W, layoutParams2);
                    this.f34741W.setVisibility(0);
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public void d(View view) {
        try {
            if (Octopus.getCustomController() != null && !Octopus.getCustomController().isShowFeedBack()) {
                return;
            }
            ViewUtil.removeChildFromParent(this.f34732N);
            this.f34752k = getMediaType() == p.INTERSTITIAL ? 10 : 30;
            this.f34751j = this.ay == null ? 0 : 30;
            this.aI = com.octopus.ad.internal.c.q.a("https://www.adintl.cn/sdkFeedback.html?slotId=${SLOT_ID}&sdkVersion=${SDK_VERSION}&deviceId=${DEVICE_ID}", getAdSlotId(), Octopus.getOaid(getContext()));
            AppCompatTextView appCompatTextViewCreateFeedBackButton = ViewUtil.createFeedBackButton(getContext(), "反馈", this.f34751j, this.f34752k, this.f34765x);
            this.f34732N = appCompatTextViewCreateFeedBackButton;
            appCompatTextViewCreateFeedBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ViewUtil.openLocalBrowser(a.this.aI, 0);
                    if (a.this.f34762u != null) {
                        a.this.f34762u.c();
                    }
                }
            });
            ViewParent parent = view instanceof FrameLayout ? (FrameLayout) view : view.getParent();
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).addView(this.f34732N);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public void e(View view) {
        Map<String, Object> mapAb;
        int i2 = 10;
        try {
            this.af = 10;
            if (getMediaType() != p.INTERSTITIAL) {
                i2 = 30;
            }
            this.f34752k = i2;
            ViewParent parent = view instanceof FrameLayout ? (FrameLayout) view : view.getParent();
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                View viewInflate = LayoutInflater.from(view.getContext()).inflate(R.layout.oct_layout_quick_reward, (ViewGroup) null);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_app_icon);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_ad_title);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_ad_description);
                ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.iv_click);
                WebView webView = (WebView) viewInflate.findViewById(R.id.web_view);
                this.ba = (TextView) viewInflate.findViewById(R.id.tv_tip_time);
                this.bb = (TextView) viewInflate.findViewById(R.id.tv_button);
                this.bc = (ImageView) viewInflate.findViewById(R.id.iv_gift);
                this.be = (RelativeLayout) viewInflate.findViewById(R.id.rl_tip_start);
                this.bd = (TextView) viewInflate.findViewById(R.id.tv_tip_end);
                this.ba.setText(String.format("%s秒", Integer.valueOf(this.af)));
                com.octopus.ad.internal.b.f fVar = this.f34762u;
                if (fVar != null && (mapAb = fVar.ab()) != null && !mapAb.isEmpty()) {
                    this.bf = (String) mapAb.get("landingPageUrl");
                    String str = (String) mapAb.get("icon");
                    String str2 = (String) mapAb.get(g.a.f3271h);
                    String str3 = (String) mapAb.get("description");
                    ImageManager.with(getContext()).load(str).into(imageView);
                    textView.setText(str2);
                    textView2.setText(str3);
                }
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setRepeatCount(-1);
                alphaAnimation.setRepeatMode(2);
                imageView2.startAnimation(alphaAnimation);
                this.bb.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (a.this.bh) {
                            a.this.A();
                            return;
                        }
                        a aVar = a.this;
                        aVar.a(aVar.getRandomClickPosition());
                        a.this.bg = true;
                    }
                });
                ((FrameLayout) parent).addView(viewInflate, layoutParams);
                if (webView == null || TextUtils.isEmpty(this.bf)) {
                    return;
                }
                webView.loadUrl(this.bf);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(android.view.View r5) {
        /*
            r4 = this;
            androidx.appcompat.widget.AppCompatTextView r0 = r4.f34738T     // Catch: java.lang.Exception -> Le
            if (r0 == 0) goto L53
            com.octopus.ad.internal.utilities.ViewUtil.removeChildFromParent(r0)     // Catch: java.lang.Exception -> Le
            boolean r0 = r5 instanceof android.widget.FrameLayout     // Catch: java.lang.Exception -> Le
            if (r0 == 0) goto L10
            android.widget.FrameLayout r5 = (android.widget.FrameLayout) r5     // Catch: java.lang.Exception -> Le
            goto L14
        Le:
            r5 = move-exception
            goto L54
        L10:
            android.view.ViewParent r5 = r5.getParent()     // Catch: java.lang.Exception -> Le
        L14:
            boolean r0 = r5 instanceof android.widget.FrameLayout     // Catch: java.lang.Exception -> Le
            if (r0 == 0) goto L53
            com.octopus.ad.internal.b.f r0 = r4.f34762u     // Catch: java.lang.Exception -> Le
            if (r0 == 0) goto L43
            int r0 = r0.p()     // Catch: java.lang.Exception -> Le
            com.octopus.ad.internal.p r1 = r4.getMediaType()     // Catch: java.lang.Exception -> Le
            com.octopus.ad.internal.p r2 = com.octopus.ad.internal.p.INTERSTITIAL     // Catch: java.lang.Exception -> Le
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> Le
            if (r1 == 0) goto L43
            if (r0 <= 0) goto L43
            float r0 = (float) r0     // Catch: java.lang.Exception -> Le
            com.octopus.ad.internal.q r1 = com.octopus.ad.internal.q.a()     // Catch: java.lang.Exception -> Le
            float r1 = r1.f35027u     // Catch: java.lang.Exception -> Le
            float r0 = r0 * r1
            int r0 = (int) r0     // Catch: java.lang.Exception -> Le
            android.content.Context r1 = r4.getContext()     // Catch: java.lang.Exception -> Le
            int r1 = com.octopus.ad.internal.utilities.ViewUtil.getScreenWidth(r1)     // Catch: java.lang.Exception -> Le
            if (r0 <= r1) goto L44
            r0 = r1
            goto L44
        L43:
            r0 = -1
        L44:
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams     // Catch: java.lang.Exception -> Le
            r2 = -2
            r3 = 80
            r1.<init>(r0, r2, r3)     // Catch: java.lang.Exception -> Le
            android.widget.FrameLayout r5 = (android.widget.FrameLayout) r5     // Catch: java.lang.Exception -> Le
            androidx.appcompat.widget.AppCompatTextView r0 = r4.f34738T     // Catch: java.lang.Exception -> Le
            r5.addView(r0, r1)     // Catch: java.lang.Exception -> Le
        L53:
            return
        L54:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "An Exception Caught: "
            r0.append(r1)
            java.lang.String r5 = r5.getMessage()
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "OctopusAd"
            com.octopus.ad.d.b.f.d(r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.e.a.f(android.view.View):void");
    }

    public Activity b(View view) {
        return (Activity) a(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.OctopusAlertDialogStyle);
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.oct_dialog_close_confirm, (ViewGroup) null);
            builder.setView(viewInflate);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_title);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_quit);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_wait);
            if (this.au) {
                textView.setText(String.format(Locale.US, "体验%d秒就能领奖~\n确定要退出吗？", Integer.valueOf(this.af)));
            } else {
                textView.setText(String.format(Locale.US, "观看满%d秒即可获得奖励\n确认离开吗？", Integer.valueOf(this.af)));
            }
            final AlertDialog alertDialogCreate = builder.create();
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    alertDialogCreate.dismiss();
                    a.this.x();
                }
            });
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.15
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    alertDialogCreate.dismiss();
                }
            });
            alertDialogCreate.show();
            com.octopus.ad.d dVar = this.ay;
            if (dVar != null) {
                dVar.m();
            } else {
                com.octopus.ad.b.a aVar = this.f34734P;
                if (aVar != null) {
                    aVar.b();
                }
            }
            alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.octopus.ad.internal.e.a.16
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (a.this.ay != null) {
                        a.this.ay.n();
                    } else if (a.this.f34734P != null) {
                        a.this.f34734P.c();
                    }
                }
            });
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f34751j = i2;
        this.f34752k = i3;
        this.f34753l = i4;
        this.f34754m = i5;
    }

    public void a(Context context, AttributeSet attributeSet) {
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "AdViewImpl setup 开始 mRequestId : " + this.aG);
        setBackgroundColor(0);
        this.f34723E = new b(this.f34722D);
        this.aG = com.octopus.ad.internal.c.p.a();
        this.f34744c = new com.octopus.ad.internal.d(context, this.aG);
        try {
            com.octopus.ad.internal.c.f.a(getContext().getApplicationContext());
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
        setPadding(0, 0, 0, 0);
        this.f34746e = new com.octopus.ad.internal.c(this);
        this.aS = new l(getContext());
        this.aT = new com.octopus.ad.d.k(getContext());
        this.aU = new j(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z2) {
        o.a(new com.octopus.ad.internal.l("REWARD", getAdSlotId(), getRequestId(), System.currentTimeMillis() - getExposeTime(), z2 ? 1 : 0, this.aH));
    }

    public void c(boolean z2) {
        setOpensNativeBrowser(z2);
    }

    private void c(int i2) {
        try {
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            ViewParent parent = adView instanceof FrameLayout ? (FrameLayout) adView : adView.getParent();
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.oct_countdown_click, (ViewGroup) null);
            this.aa = (LinearLayout) viewInflate.findViewById(R.id.rl_auto);
            final TextView textView = (TextView) viewInflate.findViewById(R.id.tv_auto);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_stop);
            this.aa.setVisibility(0);
            com.octopus.ad.b.a aVar = new com.octopus.ad.b.a(i2 * 1000, 50L);
            this.f34735Q = aVar;
            aVar.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.internal.e.a.27
                @Override // com.octopus.ad.b.b
                public void a(long j2) {
                    int i3 = (int) ((j2 / 1000) + 1);
                    textView.setText(String.format(Locale.US, "%d秒后自动跳转详情页", Integer.valueOf(i3)));
                    if (i3 <= 3) {
                        textView.setBackgroundResource(R.drawable.oct_bg_common_orange);
                    }
                }

                @Override // com.octopus.ad.b.b
                public void b() {
                }

                @Override // com.octopus.ad.b.b
                public void a() {
                    a.this.ax = 3;
                    a.this.ap = true;
                    if (a.this.az != null) {
                        a.this.az.a(a.this.ax, a.this.getRandomClickPosition());
                    }
                    a.this.G();
                }
            });
            this.f34735Q.a();
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.28
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.G();
                }
            });
            viewInflate.findViewById(R.id.rl_auto).setVisibility(0);
            q qVarA = q.a();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
            layoutParams.setMargins(0, 0, 0, (int) TypedValue.applyDimension(1, 50.0f, qVarA.s()));
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).addView(viewInflate, layoutParams);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    @Override // com.octopus.ad.internal.a
    public boolean a() {
        com.octopus.ad.internal.d dVar = this.f34744c;
        return (dVar == null || !dVar.r() || this.f34745d == null) ? false : true;
    }

    public void a(ViewGroup viewGroup) {
        try {
            if (!this.f34756o || this.f34755n) {
                if (this.f34759r) {
                    if (this.aC) {
                        return;
                    }
                    this.aC = true;
                    ViewUtil.removeChildFromParent(this);
                    if (viewGroup != null) {
                        this.f34761t = viewGroup;
                    }
                    if (this.f34762u != null) {
                        Log.e("OctopusAd", "enter Octopus ad show");
                        this.f34762u.b();
                        this.f34762u.a(g(), new com.octopus.ad.a() { // from class: com.octopus.ad.internal.e.a.12
                            @Override // com.octopus.ad.a
                            public void a(boolean z2) {
                                a.this.a(z2);
                            }
                        });
                    }
                    t();
                    return;
                }
            }
            this.f34757p = true;
            this.aD = viewGroup;
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public void b(int i2) {
        if (this.bk) {
            return;
        }
        SplashAdListener splashAdListener = this.f34766y;
        if (splashAdListener != null) {
            splashAdListener.onAdFailedToLoad(i2);
        } else {
            InterstitialAdListener interstitialAdListener = this.f34767z;
            if (interstitialAdListener != null) {
                interstitialAdListener.onAdFailedToLoad(i2);
            } else {
                FullScreenVideoAdListener fullScreenVideoAdListener = this.f34719A;
                if (fullScreenVideoAdListener != null) {
                    fullScreenVideoAdListener.onAdFailedToLoad(i2);
                } else {
                    RewardVideoAdListener rewardVideoAdListener = this.f34720B;
                    if (rewardVideoAdListener != null) {
                        rewardVideoAdListener.onRewardVideoAdFailedToLoad(i2);
                    }
                }
            }
        }
        this.bk = true;
    }

    public a(Context context, ViewGroup viewGroup, String str) {
        super(context, null, 0);
        this.f34742a = new C0753a();
        this.f34722D = new Handler(Looper.getMainLooper()) { // from class: com.octopus.ad.internal.e.a.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.f34744c = null;
        this.f34745d = null;
        this.f34726H = false;
        this.f34729K = false;
        this.f34748g = false;
        this.af = 0;
        this.ag = 0;
        this.ak = true;
        this.al = true;
        this.ax = 0;
        this.aB = false;
        this.aC = false;
        this.f34755n = false;
        this.f34756o = false;
        this.f34757p = false;
        this.f34758q = false;
        this.f34759r = false;
        this.aJ = null;
        this.aK = false;
        this.aL = false;
        this.aM = false;
        this.aN = false;
        this.aR = 2;
        this.bj = new c() { // from class: com.octopus.ad.internal.e.a.32
            @Override // com.octopus.ad.internal.e.a.c
            public void a() {
                if (a.this.an || a.this.ao || a.this.ap) {
                    return;
                }
                a.this.w();
            }
        };
        this.bk = false;
        this.f34761t = viewGroup;
        this.aE = str;
        a(context, (AttributeSet) null);
    }

    public void b(boolean z2) {
        com.octopus.ad.internal.b.f fVar;
        if (this.f34755n || (fVar = this.f34762u) == null || fVar.r() != 0) {
            return;
        }
        this.f34755n = true;
        SplashAdListener splashAdListener = this.f34766y;
        if (splashAdListener != null) {
            splashAdListener.onAdCacheLoaded(z2);
            return;
        }
        InterstitialAdListener interstitialAdListener = this.f34767z;
        if (interstitialAdListener != null) {
            interstitialAdListener.onAdCacheLoaded(z2);
            return;
        }
        FullScreenVideoAdListener fullScreenVideoAdListener = this.f34719A;
        if (fullScreenVideoAdListener != null) {
            fullScreenVideoAdListener.onAdCacheLoaded(z2);
            return;
        }
        RewardVideoAdListener rewardVideoAdListener = this.f34720B;
        if (rewardVideoAdListener != null) {
            rewardVideoAdListener.onRewardVideoCached(z2);
        }
    }

    public void a(boolean z2) {
        com.octopus.ad.internal.b.f fVar;
        if (this.f34727I) {
            return;
        }
        this.f34727I = true;
        this.f34728J = z2;
        if (z2 && (fVar = this.f34762u) != null) {
            this.f34728J = fVar.R();
        }
        if (this.f34728J) {
            SplashAdListener splashAdListener = this.f34766y;
            if (splashAdListener != null) {
                splashAdListener.onAdShown();
            } else {
                InterstitialAdListener interstitialAdListener = this.f34767z;
                if (interstitialAdListener != null) {
                    interstitialAdListener.onAdShown();
                } else {
                    FullScreenVideoAdListener fullScreenVideoAdListener = this.f34719A;
                    if (fullScreenVideoAdListener != null) {
                        fullScreenVideoAdListener.onAdShown();
                    } else {
                        RewardVideoAdListener rewardVideoAdListener = this.f34720B;
                        if (rewardVideoAdListener != null) {
                            rewardVideoAdListener.onRewardVideoAdShown();
                        }
                    }
                }
            }
        }
        com.octopus.ad.internal.b.f fVar2 = this.f34762u;
        if (fVar2 != null) {
            fVar2.a(this.f34721C, this.f34728J);
        }
        if (this.f34721C != null && getRequestId().equals(this.f34721C.a())) {
            q.a().f35022m.remove(this.f34721C.b());
        }
        B();
    }

    private void e(boolean z2) {
        com.octopus.ad.d.b.f.a("OctopusAd", "octopus clickable = " + z2);
        if (z2) {
            return;
        }
        a(new View.OnTouchListener() { // from class: com.octopus.ad.internal.e.a.24
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    private void b(String str) {
        View adView;
        View viewA;
        try {
            if (this.aU == null || (adView = getAdView()) == null || (viewA = this.aU.a(ViewUtil.px2dip(getContext(), adView.getWidth()), ViewUtil.px2dip(getContext(), adView.getHeight()), str, true)) == null) {
                return;
            }
            final com.octopus.ad.a.d dVar = new com.octopus.ad.a.d(1);
            viewA.setOnTouchListener(new View.OnTouchListener() { // from class: com.octopus.ad.internal.e.a.26
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    a aVar = a.this;
                    aVar.a(motionEvent, aVar.at, dVar);
                    return true;
                }
            });
            ViewParent parent = adView instanceof FrameLayout ? (FrameLayout) adView : adView.getParent();
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).addView(viewA);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public static void a(com.octopus.ad.internal.b.f fVar, final c cVar) {
        c.x xVarL;
        c.g gVarA;
        if (fVar == null || (xVarL = fVar.L()) == null || (gVarA = xVarL.a()) == null || gVarA.a() != 1) {
            return;
        }
        com.octopus.ad.d.e.a(new Runnable() { // from class: com.octopus.ad.internal.e.a.23
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        cVar2.a();
                    }
                } catch (Throwable th) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
                }
            }
        }, gVarA.b());
    }

    public static boolean a(com.octopus.ad.internal.b.f fVar) {
        c.x xVarL;
        c.g gVarA;
        return (fVar == null || (xVarL = fVar.L()) == null || (gVarA = xVarL.a()) == null || gVarA.c() != 1) ? false : true;
    }

    public void a(com.octopus.ad.a.d dVar) {
        com.octopus.ad.internal.e.b bVar = this.az;
        if (bVar != null) {
            bVar.a(this.ax, dVar);
        }
    }

    public boolean a(a.C0746a c0746a) {
        com.octopus.ad.internal.c cVar;
        this.f34745d = c0746a;
        if (!a()) {
            SplashAdListener splashAdListener = this.f34766y;
            if (splashAdListener != null) {
                splashAdListener.onAdFailedToLoad(MediationConstant.ErrorCode.ADN_INIT_FAIL);
            } else {
                InterstitialAdListener interstitialAdListener = this.f34767z;
                if (interstitialAdListener != null) {
                    interstitialAdListener.onAdFailedToLoad(MediationConstant.ErrorCode.ADN_INIT_FAIL);
                } else {
                    FullScreenVideoAdListener fullScreenVideoAdListener = this.f34719A;
                    if (fullScreenVideoAdListener != null) {
                        fullScreenVideoAdListener.onAdFailedToLoad(MediationConstant.ErrorCode.ADN_INIT_FAIL);
                    } else {
                        RewardVideoAdListener rewardVideoAdListener = this.f34720B;
                        if (rewardVideoAdListener != null) {
                            rewardVideoAdListener.onRewardVideoAdFailedToLoad(MediationConstant.ErrorCode.ADN_INIT_FAIL);
                        }
                    }
                }
            }
            return false;
        }
        if (getWindowVisibility() == 0 && (cVar = this.f34746e) != null) {
            cVar.a();
            this.f34746e.c();
            this.f34746e.a(this.aE);
            this.f34726H = true;
            this.f34749h = 1;
            this.f34750i = 0;
            return true;
        }
        com.octopus.ad.internal.c cVar2 = this.f34746e;
        if (cVar2 != null) {
            cVar2.a();
            this.f34746e.c();
            this.f34746e.a(this.aE);
            this.f34726H = true;
            this.f34749h = 1;
            this.f34750i = 0;
        }
        return false;
    }

    public Context a(View view) {
        Context context;
        if (view == null) {
            return null;
        }
        if (view.getContext() instanceof MutableContextWrapper) {
            context = ((MutableContextWrapper) view.getContext()).getBaseContext();
        } else {
            context = getContext();
        }
        if (context instanceof Activity) {
            return context;
        }
        return null;
    }

    public void a(AdLogoInfo adLogoInfo, AdLogoInfo adLogoInfo2, int i2) {
        try {
            ViewUtil.removeChildFromParent(this.f34740V);
            ViewUtil.removeChildFromParent(this.f34741W);
            float f2 = 1.0f;
            float f3 = i2 > 0 ? i2 / 640.0f : 1.0f;
            if (f3 <= 1.0f) {
                f2 = f3;
            }
            if (!TextUtils.isEmpty(adLogoInfo.getAdurl())) {
                this.f34740V = ViewUtil.createAdImageView(new MutableContextWrapper(getContext()), adLogoInfo, 0, GravityCompat.START, f2);
            }
            if (TextUtils.isEmpty(adLogoInfo2.getAdurl())) {
                return;
            }
            this.f34741W = ViewUtil.createLogoImageView(new MutableContextWrapper(getContext()), adLogoInfo2, 0, f2);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public void a(AdLogoInfo adLogoInfo, int i2) {
        try {
            ViewUtil.removeChildFromParent(this.f34740V);
            ViewUtil.removeChildFromParent(this.f34741W);
            float f2 = 1.0f;
            float f3 = i2 > 0 ? i2 / 640.0f : 1.0f;
            if (f3 <= 1.0f) {
                f2 = f3;
            }
            if (!TextUtils.isEmpty(adLogoInfo.getAdurl())) {
                this.f34741W = ViewUtil.createLogoImageView(new MutableContextWrapper(getContext()), adLogoInfo, 6, f2);
            }
            AdLogoInfo adLogoInfo2 = new AdLogoInfo();
            adLogoInfo2.setType(AdLogoInfo.TYPE_TEXT);
            adLogoInfo2.setAdurl("广告");
            if (TextUtils.isEmpty(adLogoInfo2.getAdurl())) {
                return;
            }
            this.f34740V = ViewUtil.createAdImageView(new MutableContextWrapper(getContext()), adLogoInfo2, 3, GravityCompat.END, f2);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public void a(final com.octopus.ad.d dVar, boolean z2) {
        try {
            ViewUtil.removeChildFromParent(this.f34737S);
            AppCompatImageView appCompatImageViewCreateMuteButton = ViewUtil.createMuteButton(getContext(), z2, this.f34752k, this.f34765x);
            this.f34737S = appCompatImageViewCreateMuteButton;
            appCompatImageViewCreateMuteButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    com.octopus.ad.d dVar2;
                    if (a.this.f34737S == null || (dVar2 = dVar) == null) {
                        return;
                    }
                    a.this.f34737S.setImageResource(dVar2.g() ? R.drawable.oct_voice_off : R.drawable.oct_voice_on);
                }
            });
            ViewParent parent = dVar.getParent();
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).addView(this.f34737S);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a(com.octopus.ad.d dVar) {
        try {
            ProgressBar progressBar = this.f34739U;
            if (progressBar == null) {
                this.f34739U = ViewUtil.createLoadingView(getContext(), this.f34765x);
                ViewParent parent = dVar.getParent();
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).addView(this.f34739U);
                    return;
                }
                return;
            }
            progressBar.setVisibility(0);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    public void a(ComplianceInfo complianceInfo, float f2) {
        this.f34738T = ViewUtil.createComplianceView(getContext(), complianceInfo, f2, false);
    }

    public void a(int i2, int i3, View view) {
        try {
            ViewUtil.removeChildFromParent(this.f34733O);
            ViewUtil.removeChildFromParent(this.f34731M);
            if (this.f34733O == null) {
                ImageView imageViewCreateImageCloseButton = ViewUtil.createImageCloseButton(getContext(), this.f34752k, this.f34765x);
                this.f34733O = imageViewCreateImageCloseButton;
                imageViewCreateImageCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        a.this.x();
                    }
                });
            }
            if (i3 > 0) {
                this.af = i3;
            } else if (i2 > 0) {
                this.af = i2;
            }
            if (this.af > 0) {
                this.f34733O.setVisibility(8);
                this.f34731M = ViewUtil.createInterstitialCountDown(getContext(), this.f34752k, this.f34765x);
                com.octopus.ad.b.a aVar = new com.octopus.ad.b.a(this.af * 1000, 50L);
                this.f34734P = aVar;
                aVar.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.internal.e.a.8
                    @Override // com.octopus.ad.b.b
                    public void a(long j2) {
                        if (a.this.f34731M == null) {
                            return;
                        }
                        a.this.f34731M.setText(String.valueOf((int) ((j2 / 1000) + 1)));
                    }

                    @Override // com.octopus.ad.b.b
                    public void b() {
                    }

                    @Override // com.octopus.ad.b.b
                    public void a() {
                        if (a.this.av) {
                            if (a.this.f34731M != null) {
                                a.this.f34731M.setText("0");
                            }
                            a.this.A();
                        } else {
                            if (a.this.f34731M == null || a.this.f34733O == null) {
                                return;
                            }
                            a.this.f34731M.setVisibility(8);
                            a.this.f34733O.setVisibility(0);
                        }
                    }
                });
                this.f34734P.a();
            }
            ViewParent parent = view instanceof FrameLayout ? (FrameLayout) view : view.getParent();
            if (parent instanceof FrameLayout) {
                ImageView imageView = this.f34733O;
                if (imageView != null) {
                    ((FrameLayout) parent).addView(imageView);
                }
                AppCompatTextView appCompatTextView = this.f34731M;
                if (appCompatTextView != null) {
                    ((FrameLayout) parent).addView(appCompatTextView);
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a(int i2) {
        try {
            com.octopus.ad.b.a aVar = this.f34734P;
            if (aVar != null) {
                aVar.d();
            }
            if (i2 <= 0) {
                this.af = 5;
            } else {
                this.af = i2;
            }
            this.f34731M = ViewUtil.createCountDown(getContext(), this.af, this.f34752k, this.f34753l, this.f34765x);
            com.octopus.ad.b.a aVar2 = new com.octopus.ad.b.a(this.af * 1000, 50L);
            this.f34734P = aVar2;
            aVar2.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.internal.e.a.9
                @Override // com.octopus.ad.b.b
                public void a(long j2) {
                    try {
                        if (a.this.f34731M == null) {
                            return;
                        }
                        a.this.getAdDispatcher().a(j2);
                        a.this.f34731M.setText(String.format(Locale.US, "跳过 %d", Integer.valueOf((int) ((j2 / 1000) + 1))));
                    } catch (Exception unused) {
                    }
                }

                @Override // com.octopus.ad.b.b
                public void b() {
                }

                @Override // com.octopus.ad.b.b
                public void a() {
                    try {
                        if (a.this.f34731M != null) {
                            a.this.f34731M.setText("跳过 0");
                        }
                        C0753a c0753a = a.this.f34742a;
                        if (c0753a != null) {
                            c0753a.a(true);
                            if (a.this.f34742a.a()) {
                                if (a.this.f34742a.c() == C0753a.EnumC0754a.UNCHANGE || a.this.f34742a.c() == C0753a.EnumC0754a.STATE_PREPARE_CHANGE) {
                                    a.this.av = true;
                                    if (a.this.getAdDispatcher() != null) {
                                        a.this.getAdDispatcher().a();
                                    }
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            });
            this.f34734P.a();
            com.octopus.ad.internal.b.f fVar = this.f34762u;
            if (fVar != null) {
                fVar.a(this.f34734P);
            }
            this.f34731M.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.x();
                }
            });
            AppCompatTextView appCompatTextView = this.f34731M;
            if (appCompatTextView != null) {
                ViewUtil.removeChildFromParent(appCompatTextView);
                addView(this.f34731M);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a(int i2, int i3, int i4) {
        try {
            ViewUtil.removeChildFromParent(this.f34733O);
            ViewUtil.removeChildFromParent(this.f34731M);
            com.octopus.ad.b.a aVar = this.f34734P;
            if (aVar != null) {
                aVar.d();
            }
            if (this.f34733O == null) {
                ImageView imageViewCreateImageCloseButton = ViewUtil.createImageCloseButton(getContext(), this.f34752k, 1.0f);
                this.f34733O = imageViewCreateImageCloseButton;
                imageViewCreateImageCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.e.a.11
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (a.this.aK) {
                            a.this.x();
                            return;
                        }
                        View adView = a.this.getAdView();
                        if (adView == null) {
                            return;
                        }
                        if (a.this.af > 0 || (a.this.au && !a.this.bh)) {
                            a.this.b(adView.getContext());
                        } else {
                            a.this.x();
                        }
                    }
                });
            }
            if (this.au) {
                this.f34731M = ViewUtil.createFeedBackButton(getContext(), "点击广告并浏览" + this.af + "秒可领奖", 0, this.f34752k, this.f34765x);
            } else if (i2 != -1 && this.f34731M == null) {
                this.f34753l = 30;
                this.af = Math.min(i2, i4);
                this.f34731M = ViewUtil.createCountDown(getContext(), this.af, this.f34752k, this.f34753l, this.f34765x);
                if (i3 > 0) {
                    this.f34733O.setVisibility(8);
                    int i5 = this.af;
                    if (i5 > i3) {
                        this.ag = i5 - i3;
                    }
                }
                com.octopus.ad.b.a aVar2 = new com.octopus.ad.b.a(this.af * 1000, 50L);
                this.f34734P = aVar2;
                aVar2.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.internal.e.a.13
                    @Override // com.octopus.ad.b.b
                    public void a(long j2) {
                        a aVar3 = a.this;
                        if (aVar3.f34758q || aVar3.f34731M == null || a.this.f34733O == null || a.this.aK) {
                            return;
                        }
                        int i6 = (int) ((j2 / 1000) + 1);
                        a.this.f34731M.setText(String.format(Locale.US, "奖励将于 %d 秒后发放", Integer.valueOf(i6)));
                        if (i6 <= a.this.ag && a.this.f34733O.getVisibility() == 8) {
                            a.this.f34733O.setVisibility(0);
                        }
                        if (a.this.af - i6 == 2 && a.this.ak) {
                            a.this.H();
                        }
                    }

                    @Override // com.octopus.ad.b.b
                    public void b() {
                    }

                    @Override // com.octopus.ad.b.b
                    public void a() {
                        a aVar3 = a.this;
                        if (aVar3.f34758q) {
                            return;
                        }
                        if (aVar3.f34733O != null) {
                            a.this.f34733O.setVisibility(0);
                        }
                        a.this.p();
                        a.this.o();
                        if (a.this.av) {
                            a.this.A();
                        } else if (a.this.ay == null) {
                            a.this.s();
                        }
                    }
                });
                this.f34734P.a();
                com.octopus.ad.d dVar = this.ay;
                if (dVar != null) {
                    dVar.setCountDownTimer(this.f34734P);
                }
            }
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            ViewParent parent = adView instanceof FrameLayout ? (FrameLayout) adView : adView.getParent();
            if (parent instanceof FrameLayout) {
                ImageView imageView = this.f34733O;
                if (imageView != null) {
                    ((FrameLayout) parent).addView(imageView);
                }
                AppCompatTextView appCompatTextView = this.f34731M;
                if (appCompatTextView != null) {
                    ((FrameLayout) parent).addView(appCompatTextView);
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public static void a(final String str, final u uVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.octopus.ad.internal.e.a.19
            @Override // java.lang.Runnable
            public void run() throws IOException {
                com.octopus.ad.internal.d.h hVarB = q.a().b();
                if (hVarB == null || hVarB.b(str)) {
                    return;
                }
                InputStream inputStreamOpenStream = null;
                try {
                    try {
                        try {
                            inputStreamOpenStream = new URL(hVarB.a(str)).openStream();
                            while (inputStreamOpenStream.read(new byte[1024]) != -1) {
                            }
                            inputStreamOpenStream.close();
                            inputStreamOpenStream.close();
                        } catch (Exception unused) {
                            u uVar2 = uVar;
                            if (uVar2 != null) {
                                uVar2.a(false, str);
                            }
                            com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34565a, "preload fail:" + str);
                            if (inputStreamOpenStream != null) {
                                inputStreamOpenStream.close();
                            }
                        }
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                } catch (Throwable th) {
                    if (inputStreamOpenStream != null) {
                        try {
                            inputStreamOpenStream.close();
                        } catch (Exception e3) {
                            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e3);
                        }
                    }
                    throw th;
                }
            }
        });
    }

    public void a(HashMap map) {
        if (!map.isEmpty() && map.containsKey("REWARD_ITEM")) {
            String str = (String) map.get("REWARD_ITEM");
            try {
                if (str != null) {
                    JSONObject jSONObject = new JSONObject(str);
                    this.aH = jSONObject.optString("callback_url");
                    this.aJ = Pair.create(jSONObject.optString("name"), Integer.valueOf(jSONObject.optInt("amount")));
                    if (TextUtils.isEmpty(this.aH) || getAdParameters() == null) {
                        return;
                    }
                    String extraData = getExtraData();
                    if (!TextUtils.isEmpty(extraData)) {
                        this.aH += "&extra=" + extraData;
                    }
                    String userId = getUserId();
                    if (TextUtils.isEmpty(userId)) {
                        return;
                    }
                    this.aH += "&userId=" + userId;
                    return;
                }
                this.aJ = Pair.create("", 0);
            } catch (JSONException unused) {
                com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34572h, "Error parse reward item: " + str);
                this.aJ = Pair.create("", 0);
            }
        }
    }

    public void a(String str, int i2) {
        RewardVideoAdListener rewardVideoAdListener;
        if (!this.f34728J || (rewardVideoAdListener = this.f34720B) == null) {
            return;
        }
        rewardVideoAdListener.onRewarded(new v(str, i2));
    }

    private void a(c.v vVar) {
        View adView;
        try {
            if (this.aS != null && vVar != null && (adView = getAdView()) != null) {
                this.aS.a(vVar);
                this.aS.a(adView);
                View viewA = this.aS.a(adView, adView, 12.0f, vVar.e(), getMediaType(), false);
                if (viewA != null) {
                    if (vVar.b() == 1) {
                        this.ax = 7;
                    }
                    this.aS.a(new l.a() { // from class: com.octopus.ad.internal.e.a.21
                        @Override // com.octopus.ad.d.l.a
                        public void a(com.octopus.ad.a.d dVar) {
                            a.this.a(dVar);
                            if (a.this.aV != null) {
                                a.this.aV.onShakeTrigger(1, dVar.o(), dVar.p());
                            }
                        }
                    });
                    final com.octopus.ad.a.d dVar = new com.octopus.ad.a.d(1);
                    if (vVar.i() == 1) {
                        viewA.setOnTouchListener(new View.OnTouchListener() { // from class: com.octopus.ad.internal.e.a.22
                            @Override // android.view.View.OnTouchListener
                            @SuppressLint({"ClickableViewAccessibility"})
                            public boolean onTouch(View view, MotionEvent motionEvent) {
                                a aVar = a.this;
                                aVar.a(motionEvent, aVar.at, dVar);
                                return true;
                            }
                        });
                    } else {
                        viewA.setOnClickListener(null);
                    }
                    ViewParent parent = adView instanceof FrameLayout ? (FrameLayout) adView : adView.getParent();
                    if ((parent instanceof FrameLayout) && vVar.g() == 1) {
                        ((FrameLayout) parent).addView(viewA);
                    }
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MotionEvent motionEvent, boolean z2, com.octopus.ad.a.d dVar) {
        try {
            if (motionEvent.getAction() == 0) {
                this.aP = motionEvent.getRawX();
                this.aQ = motionEvent.getRawY();
                dVar.a((int) motionEvent.getRawX());
                dVar.b((int) motionEvent.getRawY());
                dVar.a(String.valueOf(System.currentTimeMillis()));
                dVar.d(String.valueOf(System.currentTimeMillis()));
                dVar.c(String.valueOf(System.currentTimeMillis() / 1000));
                if (!z2 || this.f34729K) {
                    return;
                }
                int iA = i.a(150) + 50;
                dVar.c((int) motionEvent.getRawX());
                dVar.d((int) motionEvent.getRawY());
                dVar.b(String.valueOf(System.currentTimeMillis() + iA));
                View adView = getAdView();
                if (adView != null) {
                    dVar.e(adView.getWidth());
                    dVar.f(adView.getHeight());
                }
                a(dVar);
                this.f34729K = true;
                return;
            }
            if (motionEvent.getAction() == 1 && motionEvent.getRawX() - this.aP <= 100.0f && motionEvent.getRawY() - this.aQ <= 100.0f) {
                dVar.c((int) motionEvent.getRawX());
                dVar.d((int) motionEvent.getRawY());
                dVar.b(String.valueOf(System.currentTimeMillis()));
                View adView2 = getAdView();
                if (adView2 != null) {
                    dVar.e(adView2.getWidth());
                    dVar.f(adView2.getHeight());
                }
                a(dVar);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private void a(String str) {
        View viewA;
        try {
            com.octopus.ad.d.k kVar = this.aT;
            if (kVar != null) {
                kVar.a();
                View adView = getAdView();
                if (adView == null || (viewA = this.aT.a(ViewUtil.px2dip(getContext(), adView.getWidth()), ViewUtil.px2dip(getContext(), adView.getHeight()), str)) == null) {
                    return;
                }
                a("up", 100, new k.a() { // from class: com.octopus.ad.internal.e.a.25
                    @Override // com.octopus.ad.d.k.a
                    public void a(com.octopus.ad.a.d dVar) {
                        a.this.a(dVar);
                    }
                });
                ViewParent parent = adView instanceof FrameLayout ? (FrameLayout) adView : adView.getParent();
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).addView(viewA);
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    private void a(final String str, int i2, final k.a aVar) {
        if (aVar != null) {
            this.aT.a(aVar);
        }
        final int iDip2px = ViewUtil.dip2px(getContext(), i2);
        final com.octopus.ad.a.d dVar = new com.octopus.ad.a.d(3);
        View adView = getAdView();
        if (adView == null) {
            return;
        }
        dVar.e(adView.getWidth());
        dVar.f(adView.getHeight());
        setScrollClick(new View.OnTouchListener() { // from class: com.octopus.ad.internal.e.a.29

            /* renamed from: a, reason: collision with root package name */
            float f34797a;

            /* renamed from: b, reason: collision with root package name */
            float f34798b;

            /* renamed from: c, reason: collision with root package name */
            float f34799c;

            /* renamed from: d, reason: collision with root package name */
            float f34800d;

            /* renamed from: e, reason: collision with root package name */
            float f34801e;

            /* renamed from: f, reason: collision with root package name */
            float f34802f;

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                k.a aVar2;
                k.a aVar3;
                k.a aVar4;
                k.a aVar5;
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f34797a = motionEvent.getX();
                    this.f34798b = motionEvent.getY();
                    this.f34799c = motionEvent.getX();
                    this.f34800d = motionEvent.getY();
                    this.f34801e = motionEvent.getRawX();
                    this.f34802f = motionEvent.getRawY();
                    dVar.a((int) motionEvent.getRawX());
                    dVar.b((int) motionEvent.getRawY());
                    dVar.a(String.valueOf(System.currentTimeMillis()));
                    dVar.d(String.valueOf(System.currentTimeMillis()));
                    dVar.c(String.valueOf(System.currentTimeMillis() / 1000));
                } else if (action == 1) {
                    dVar.c((int) motionEvent.getRawX());
                    dVar.d((int) motionEvent.getRawY());
                    dVar.b(String.valueOf(System.currentTimeMillis()));
                    float f2 = this.f34800d;
                    float f3 = this.f34798b;
                    if (f2 - f3 <= 0.0f || Math.abs(f2 - f3) <= iDip2px) {
                        float f4 = this.f34800d;
                        float f5 = this.f34798b;
                        if (f4 - f5 >= 0.0f || Math.abs(f4 - f5) <= iDip2px) {
                            float f6 = this.f34799c;
                            float f7 = this.f34797a;
                            if (f6 - f7 >= 0.0f || Math.abs(f6 - f7) <= iDip2px) {
                                float f8 = this.f34799c;
                                float f9 = this.f34797a;
                                if (f8 - f9 < 0.0f && Math.abs(f8 - f9) > iDip2px && ScrollClickView.DIR_RIGHT.equalsIgnoreCase(str) && (aVar2 = aVar) != null) {
                                    aVar2.a(dVar);
                                }
                            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(str) && (aVar3 = aVar) != null) {
                                aVar3.a(dVar);
                            }
                        } else if ("up".equalsIgnoreCase(str) && (aVar4 = aVar) != null) {
                            aVar4.a(dVar);
                        }
                    } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(str) && (aVar5 = aVar) != null) {
                        aVar5.a(dVar);
                    }
                } else if (action == 2) {
                    this.f34799c = motionEvent.getX();
                    this.f34800d = motionEvent.getY();
                }
                return true;
            }
        });
    }

    public void a(View.OnTouchListener onTouchListener) {
        View adView = getAdView();
        if (adView == null) {
            return;
        }
        adView.setOnTouchListener(onTouchListener);
    }
}
