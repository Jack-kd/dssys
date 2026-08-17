package com.beizi.fusion;

import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.lance.ApkBean;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.UnifiedAdDownloadAppInfo;
import com.beizi.fusion.rn;
import com.beizi.fusion.ui;
import com.beizi.fusion.widget.BZVideoView;
import com.beizi.fusion.widget.ScrollClickView;
import com.sigmob.sdk.base.common.C1244a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class g4 extends o3 {

    /* renamed from: A0, reason: collision with root package name */
    private FrameLayout f13924A0;

    /* renamed from: B0, reason: collision with root package name */
    private boolean f13925B0;

    /* renamed from: C0, reason: collision with root package name */
    private String[] f13926C0;

    /* renamed from: D0, reason: collision with root package name */
    private long f13927D0;

    /* renamed from: E0, reason: collision with root package name */
    private String f13928E0;

    /* renamed from: F0, reason: collision with root package name */
    private boolean f13929F0;

    /* renamed from: G0, reason: collision with root package name */
    private boolean f13930G0;

    /* renamed from: H0, reason: collision with root package name */
    private String f13931H0;

    /* renamed from: I0, reason: collision with root package name */
    private boolean f13932I0;

    /* renamed from: J0, reason: collision with root package name */
    private boolean f13933J0;

    /* renamed from: K0, reason: collision with root package name */
    private ViewGroup f13934K0;

    /* renamed from: L0, reason: collision with root package name */
    private FrameLayout f13935L0;

    /* renamed from: M0, reason: collision with root package name */
    private long f13936M0;

    /* renamed from: N0, reason: collision with root package name */
    private boolean f13937N0;

    /* renamed from: O0, reason: collision with root package name */
    private String[] f13938O0;

    /* renamed from: P0, reason: collision with root package name */
    private String[] f13939P0;

    /* renamed from: Q0, reason: collision with root package name */
    private int f13940Q0;

    /* renamed from: R0, reason: collision with root package name */
    private boolean f13941R0;

    /* renamed from: S0, reason: collision with root package name */
    private boolean f13942S0;

    /* renamed from: T0, reason: collision with root package name */
    private BZVideoView f13943T0;

    /* renamed from: U0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f13944U0;

    /* renamed from: V0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f13945V0;

    /* renamed from: W0, reason: collision with root package name */
    private boolean f13946W0;

    /* renamed from: X0, reason: collision with root package name */
    private boolean f13947X0;

    /* renamed from: Y0, reason: collision with root package name */
    private boolean f13948Y0;

    /* renamed from: Z0, reason: collision with root package name */
    private boolean f13949Z0;

    /* renamed from: a1, reason: collision with root package name */
    private boolean f13950a1;

    /* renamed from: b1, reason: collision with root package name */
    private qp f13951b1;

    /* renamed from: c0, reason: collision with root package name */
    private mp f13952c0;

    /* renamed from: c1, reason: collision with root package name */
    private String[] f13953c1;

    /* renamed from: d0, reason: collision with root package name */
    private pi f13954d0;

    /* renamed from: d1, reason: collision with root package name */
    private FrameLayout f13955d1;

    /* renamed from: e0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f13956e0;

    /* renamed from: e1, reason: collision with root package name */
    private int f13957e1;

    /* renamed from: f0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f13958f0;

    /* renamed from: f1, reason: collision with root package name */
    private boolean f13959f1;

    /* renamed from: g0, reason: collision with root package name */
    private ui f13960g0;

    /* renamed from: g1, reason: collision with root package name */
    private long f13961g1;

    /* renamed from: h0, reason: collision with root package name */
    private String f13962h0;

    /* renamed from: h1, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f13963h1;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f13964i0;

    /* renamed from: j0, reason: collision with root package name */
    private int f13965j0;

    /* renamed from: k0, reason: collision with root package name */
    private int f13966k0;

    /* renamed from: l0, reason: collision with root package name */
    private int f13967l0;

    /* renamed from: m0, reason: collision with root package name */
    private View f13968m0;

    /* renamed from: n0, reason: collision with root package name */
    private String f13969n0;

    /* renamed from: o0, reason: collision with root package name */
    private boolean f13970o0;

    /* renamed from: p0, reason: collision with root package name */
    private boolean f13971p0;

    /* renamed from: q0, reason: collision with root package name */
    private Boolean f13972q0;

    /* renamed from: r0, reason: collision with root package name */
    private boolean f13973r0;

    /* renamed from: s0, reason: collision with root package name */
    private long f13974s0;

    /* renamed from: t0, reason: collision with root package name */
    private long f13975t0;

    /* renamed from: u0, reason: collision with root package name */
    private long f13976u0;

    /* renamed from: v0, reason: collision with root package name */
    private boolean f13977v0;

    /* renamed from: w0, reason: collision with root package name */
    private boolean f13978w0;

    /* renamed from: x0, reason: collision with root package name */
    private long f13979x0;

    /* renamed from: y0, reason: collision with root package name */
    private int f13980y0;

    /* renamed from: z0, reason: collision with root package name */
    private int f13981z0;

    public class a implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f13982a;

        public a(float[] fArr) {
            this.f13982a = fArr;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f13982a[0] = motionEvent.getX();
                    this.f13982a[1] = motionEvent.getY();
                    this.f13982a[2] = motionEvent.getRawX();
                    this.f13982a[3] = motionEvent.getRawY();
                    if (g4.this.f13932I0) {
                        g4 g4Var = g4.this;
                        FrameLayout frameLayout = g4Var.f13935L0;
                        FrameLayout frameLayout2 = g4.this.f15408Z;
                        float[] fArr = this.f13982a;
                        g4.this.a(g4Var.a(frameLayout, frameLayout2, fArr[0], fArr[1], fArr[2], fArr[3]), 0);
                    }
                }
                if (motionEvent.getAction() == 1 && g4.this.f13933J0) {
                    g4 g4Var2 = g4.this;
                    FrameLayout frameLayout3 = g4Var2.f13935L0;
                    FrameLayout frameLayout4 = g4.this.f15408Z;
                    float[] fArr2 = this.f13982a;
                    g4.this.a(g4Var2.a(frameLayout3, frameLayout4, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!g4.this.f13932I0) {
                if (!g4.this.f13933J0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class b implements ViewTreeObserver.OnScrollChangedListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (g4.this.f15408Z != null && System.currentTimeMillis() - g4.this.f13936M0 >= 100) {
                    g4.this.f13936M0 = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    g4.this.f15408Z.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        g4.this.f15408Z.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (g4.this.f13935L0 == null || g4.this.f13934K0 == null) {
                            return;
                        }
                        g4.this.f13934K0.removeView(g4.this.f13935L0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        String[] f13985a = new String[4];

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f13986b;

        public c(View view) {
            this.f13986b = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ViewParent parent;
            try {
                if (motionEvent.getAction() == 0) {
                    if (g4.this.f13932I0 || g4.this.f13933J0) {
                        View view2 = this.f13986b;
                        if (view2 != null && (parent = view2.getParent()) != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    this.f13985a[0] = motionEvent.getX() + "";
                    this.f13985a[1] = motionEvent.getY() + "";
                    this.f13985a[2] = motionEvent.getRawX() + "";
                    this.f13985a[3] = motionEvent.getRawY() + "";
                    if (g4.this.f13932I0) {
                        g4.this.a(this.f13985a);
                    }
                }
                if (motionEvent.getAction() == 1 && g4.this.f13933J0) {
                    g4.this.a(this.f13985a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!g4.this.f13932I0) {
                if (!g4.this.f13933J0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class d implements mi {
        public d() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            g4.this.j1();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class e implements View.OnTouchListener {
        public e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                g4.this.f13959f1 = true;
                g4.this.f13953c1[0] = motionEvent.getX() + "";
                g4.this.f13953c1[1] = motionEvent.getY() + "";
                g4.this.f13953c1[2] = motionEvent.getRawX() + "";
                g4.this.f13953c1[3] = motionEvent.getRawY() + "";
            }
            return false;
        }
    }

    public class f implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f13990a;

        public f(int i2) {
            this.f13990a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                int i2 = this.f13990a;
                if (i2 == 1) {
                    if (g4.this.f13943T0 != null) {
                        g4.this.f13943T0.onViewPause(true);
                    }
                } else if (i2 == 2) {
                    g4 g4Var = g4.this;
                    g4Var.a(g4Var.f13953c1);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements ViewTreeObserver.OnScrollChangedListener {
        public g() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (g4.this.f13959f1 && !g4.this.f13977v0 && System.currentTimeMillis() - g4.this.f13961g1 >= 100) {
                    g4.this.f13961g1 = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    FrameLayout frameLayout = g4.this.f15408Z;
                    if (frameLayout != null) {
                        frameLayout.getLocationOnScreen(iArr);
                    }
                    if (iArr[1] > 0 && g4.this.f13957e1 == 0) {
                        g4.this.f13957e1 = iArr[1];
                    }
                    if (Math.abs(g4.this.f13957e1 - iArr[1]) < 30) {
                        return;
                    }
                    g4 g4Var = g4.this;
                    g4Var.a(g4Var.f13953c1, 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (bq.a(g4.this.f15408Z) && !g4.this.f13977v0) {
                    g4.this.f13597G = 2;
                    if (g4.this.f13954d0 != null) {
                        g4.this.f13954d0.a(g4.this.f13597G);
                    }
                    g4.this.k1();
                    g4.this.C0();
                    if (g4.this.f13954d0 != null) {
                        g4.this.f13954d0.a(g4.this.f13597G);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class i implements ni {
        public i() {
        }

        @Override // com.beizi.fusion.ni
        public void a(pi piVar) {
            g4.this.f13620j = c2.ADLOAD;
            g4 g4Var = g4.this;
            g4Var.f13972q0 = Boolean.valueOf(g4Var.f13952c0.s());
            g4 g4Var2 = g4.this;
            g4Var2.f13973r0 = g4Var2.f13952c0.u();
            if (g4.this.f13952c0 != null) {
                g4 g4Var3 = g4.this;
                g4Var3.f13595E = g4Var3.f13952c0.i();
                if (g4.this.f13595E != null) {
                    g4 g4Var4 = g4.this;
                    g4Var4.f13596F = g4Var4.f13595E.c();
                    if (g4.this.f13596F != 0) {
                        g4 g4Var5 = g4.this;
                        g4Var5.f13597G = g4Var5.f13595E.f() + 1;
                    }
                }
                g4 g4Var6 = g4.this;
                g4Var6.f13598H = g4Var6.f13952c0.m();
            }
            if (g4.this.f13973r0) {
                g4 g4Var7 = g4.this;
                g4Var7.f13974s0 = g4Var7.f13952c0.f();
                g4.this.f13612b.setIsCacheAd("1");
                if (g4.this.f13974s0 > 0) {
                    g4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - g4.this.f13974s0));
                }
                g4.this.I0();
            }
            if (g4.this.f13952c0.q() != null) {
                try {
                    g4 g4Var8 = g4.this;
                    g4Var8.a(Double.parseDouble(g4Var8.f13952c0.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            g4.this.g0();
            if (piVar == null) {
                g4.this.a(-991);
                return;
            }
            if (g4.this.f13952c0 != null) {
                g4 g4Var9 = g4.this;
                g4Var9.f13951b1 = g4Var9.f13952c0.n();
            }
            g4.this.f13954d0 = piVar;
            g4.this.c1();
        }

        @Override // com.beizi.fusion.ni
        public void onAdFailed(int i2) {
            g4.this.a(String.valueOf(i2), i2);
        }
    }

    public class j implements BZVideoView.i {
        public j() {
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a(int i2, int i3) {
            g4.this.a(i2, i3);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void b() {
            if (g4.this.f13946W0) {
                return;
            }
            g4.this.f13946W0 = true;
            g4.this.b(0);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a() {
            if (g4.this.f13950a1) {
                return;
            }
            g4.this.f13950a1 = true;
            g4.this.b(100);
        }
    }

    public class k implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f13996a;

        public class a implements mi {
            public a() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                g4.this.j1();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public class b implements mi {
            public b() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                g4.this.j1();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public class c implements ri {
            public c() {
            }

            @Override // com.beizi.fusion.ri
            public void onAdShown() {
                g4.this.l1();
            }
        }

        public k(List list) {
            this.f13996a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                g4 g4Var = g4.this;
                if (g4Var.f15408Z != null) {
                    g4Var.e1();
                    g4.this.q1();
                    g4 g4Var2 = g4.this;
                    g4Var2.f13965j0 = g4Var2.f15408Z.getWidth();
                    g4 g4Var3 = g4.this;
                    g4Var3.f13966k0 = g4Var3.f15408Z.getHeight();
                    g4 g4Var4 = g4.this;
                    g4Var4.a(g4Var4.f13965j0, g4.this.f13966k0, g4.this.f13966k0);
                }
                if (g4.this.f13954d0 != null) {
                    g4.this.f13954d0.a(g4.this.f13597G);
                }
                if (g4.this.f13932I0 || g4.this.f13933J0) {
                    g4.this.b(this.f13996a);
                } else {
                    List list = this.f13996a;
                    if (list == null || list.size() <= 0) {
                        si.a(g4.this.f13954d0, g4.this.f15408Z, new b());
                    } else {
                        si.a(g4.this.f13954d0, g4.this.f15408Z, this.f13996a, new a());
                    }
                }
                g4.this.m1();
                g4 g4Var5 = g4.this;
                if (g4Var5.f15409a0 || g4Var5.f13952c0 == null) {
                    return;
                }
                g4.this.f13952c0.a(g4.this.f15408Z, new c());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class l implements ui.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14001a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f14002b;

        public class a implements mi {
            public a() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                g4.this.j1();
                g4.this.C0();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public l(int i2, int i3) {
            this.f14001a = i2;
            this.f14002b = i3;
        }

        @Override // com.beizi.fusion.ui.b
        public void a() {
            try {
                if (bq.a(g4.this.f15408Z) && !g4.this.f13929F0) {
                    g4.this.f13977v0 = true;
                    g4.this.f13929F0 = true;
                    int[] iArr = new int[2];
                    g4.this.f15408Z.getLocationOnScreen(iArr);
                    int[] iArrB = rl.b(this.f14001a / 2, this.f14002b / 2);
                    if (g4.this.f13954d0 != null) {
                        g4 g4Var = g4.this;
                        if (g4Var.f15408Z != null) {
                            g4Var.i1();
                            g4.this.f13954d0.a(g4.this.f15408Z, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 2, new a());
                        }
                    }
                    if (!g4.this.f13964i0 || g4.this.f13958f0 == null) {
                        return;
                    }
                    g4.this.f13964i0 = false;
                    g4.this.f13960g0.b(g4.this.f13958f0);
                    g4 g4Var2 = g4.this;
                    go.b(g4Var2.f15403U, g4Var2.f13962h0, Long.valueOf(System.currentTimeMillis()));
                    tn.a().a(g4.this.f13962h0, System.currentTimeMillis());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class m implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f14005a;

        public m(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f14005a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.this.f13960g0.a(this.f14005a);
        }
    }

    public class n implements View.OnClickListener {
        public n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApkBean apkBeanP;
            try {
                g4 g4Var = g4.this;
                if (g4Var.f15403U == null || (apkBeanP = g4Var.f13954d0.p()) == null) {
                    return;
                }
                String apkName = apkBeanP.getApkName();
                String appPermissionsUrl = apkBeanP.getAppPermissionsUrl();
                String appPermissionsDesc = apkBeanP.getAppPermissionsDesc();
                if (TextUtils.isEmpty(appPermissionsUrl)) {
                    appPermissionsUrl = appPermissionsDesc;
                }
                String appPrivacyUrl = apkBeanP.getAppPrivacyUrl();
                String appintro = apkBeanP.getAppintro();
                Intent intent = new Intent(g4.this.f15403U, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", apkName);
                intent.putExtra("privacy_content_key", appPrivacyUrl);
                intent.putExtra("permission_content_key", appPermissionsUrl);
                intent.putExtra("intro_content_key", appintro);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                g4.this.f15403U.startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class o implements mi {
        public o() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            g4.this.j1();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class p implements View.OnTouchListener {
        public p() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                g4.this.f13925B0 = true;
                g4.this.f13926C0[0] = motionEvent.getX() + "";
                g4.this.f13926C0[1] = motionEvent.getY() + "";
                g4.this.f13926C0[2] = motionEvent.getRawX() + "";
                g4.this.f13926C0[3] = motionEvent.getRawY() + "";
            }
            return false;
        }
    }

    public class q implements ViewTreeObserver.OnScrollChangedListener {
        public q() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (g4.this.f13925B0 && !g4.this.f13977v0 && !g4.this.f13929F0 && System.currentTimeMillis() - g4.this.f13927D0 >= g4.this.f13979x0 && System.currentTimeMillis() - g4.this.f13976u0 >= 50) {
                    g4.this.f13976u0 = System.currentTimeMillis();
                    if (bq.a(g4.this.f15408Z, 0.8d)) {
                        int[] iArr = new int[2];
                        FrameLayout frameLayout = g4.this.f15408Z;
                        if (frameLayout != null) {
                            frameLayout.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && g4.this.f13981z0 == 0) {
                            g4.this.f13981z0 = iArr[1];
                        }
                        mh.b("BeiZis", "mOnScrollChangedListener mAdSlideScrollDistance:" + g4.this.f13981z0 + ";mAdSlideClickDistance:" + g4.this.f13980y0 + ";screenLocation[1]:" + iArr[1]);
                        if (Math.abs(g4.this.f13981z0 - iArr[1]) < g4.this.f13980y0) {
                            return;
                        }
                        g4 g4Var = g4.this;
                        g4Var.a(g4Var.f13926C0, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00e6, code lost:
    
        r9.f13600J = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r11.getRate()));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g4(android.content.Context r10, long r11, long r13, com.beizi.fusion.model.AdSpacesBean.BuyerBean r15, com.beizi.fusion.model.AdSpacesBean.ForwardBean r16, com.beizi.fusion.n3 r17, int r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.g4.<init>(android.content.Context, long, long, com.beizi.fusion.model.AdSpacesBean$BuyerBean, com.beizi.fusion.model.AdSpacesBean$ForwardBean, com.beizi.fusion.n3, int, boolean, boolean):void");
    }

    private void f1() {
        try {
            if (this.f13978w0 && this.f15408Z != null && this.f15403U != null) {
                this.f13924A0 = new FrameLayout(this.f15403U);
                int width = this.f15408Z.getWidth();
                int height = this.f15408Z.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.f13924A0.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.f13924A0.setBackgroundColor(Color.parseColor(this.f13931H0));
                this.f15408Z.addView(this.f13924A0);
                this.f13924A0.setOnTouchListener(new p());
                this.f13924A0.getViewTreeObserver().addOnScrollChangedListener(this.f13944U0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void g1() {
        Handler handler;
        try {
            int iK = k();
            if (iK > 0 && (handler = this.f13602L) != null) {
                handler.postDelayed(new h(), iK);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void h1() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.f15408Z != null && this.f15403U != null && (buyerBean = this.f13615e) != null) {
                if ((this.f13932I0 || this.f13933J0) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && rl.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.f15408Z.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
                    this.f13934K0 = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iJ = vo.j(this.f15403U);
                    int iG = vo.g(this.f15403U);
                    int width2 = this.f15408Z.getWidth();
                    int height2 = this.f15408Z.getHeight();
                    int[] iArr = new int[2];
                    this.f15408Z.getLocationOnScreen(iArr);
                    int i2 = iArr[0];
                    int i3 = iArr[1];
                    int i4 = -1;
                    if (reference == 0) {
                        iJ = width2;
                        iG = height2;
                    } else if (reference != 1) {
                        iJ = -1;
                        iG = -1;
                    }
                    try {
                        if (!TextUtils.isEmpty(width)) {
                            iJ = width.endsWith("%") ? (Integer.parseInt(width.substring(0, width.indexOf("%"))) * iJ) / 100 : Integer.parseInt(width);
                        }
                        if (!TextUtils.isEmpty(height)) {
                            iG = height.endsWith("%") ? (Integer.parseInt(height.substring(0, height.indexOf("%"))) * iG) / 100 : Integer.parseInt(height);
                        }
                    } catch (NumberFormatException e2) {
                        e2.printStackTrace();
                    }
                    if (iJ < 0) {
                        iJ = -1;
                    }
                    if (iG >= 0) {
                        i4 = iG;
                    }
                    this.f13935L0 = new FrameLayout(this.f15403U);
                    this.f13935L0.setLayoutParams(new FrameLayout.LayoutParams(iJ, i4));
                    int iA = a(horizontalSpace, iJ, width2, i2);
                    int iB = b(verticalSpace, i4, height2, i3);
                    int iA2 = vo.a(this.f15403U, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.f13935L0.setX(iA);
                    this.f13935L0.setY(iB);
                    this.f13935L0.setBackgroundColor(Color.parseColor(this.f13931H0));
                    this.f13934K0.addView(this.f13935L0);
                    this.f13935L0.setOnTouchListener(new a(new float[4]));
                    this.f15408Z.getViewTreeObserver().addOnScrollChangedListener(this.f13945V0);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1() {
        ui uiVar;
        try {
            if (this.f13595E != null && (uiVar = this.f13960g0) != null) {
                if (this.f13958f0 == null) {
                    uiVar.a(1.9d, 1.5d);
                }
                if (this.f13597G != 1) {
                    return;
                }
                double dB = this.f13595E.b();
                double dA = this.f13595E.a();
                double dC = this.f13960g0.c();
                double d2 = this.f13960g0.d();
                if (dA > 0.0d && dC > 0.0d && dC < dA) {
                    this.f13597G = 2;
                } else if (dB > 0.0d && d2 > 0.0d && d2 < dB) {
                    this.f13597G = 2;
                }
                pi piVar = this.f13954d0;
                if (piVar != null) {
                    piVar.a(this.f13597G);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1() {
        ui uiVar;
        AdSpacesBean.BuyerBean buyerBean;
        try {
            this.f13977v0 = true;
            this.f13929F0 = false;
            this.f13930G0 = false;
            p1();
            if (this.f13599I && (buyerBean = this.f13615e) != null) {
                this.f13612b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
                I0();
            }
            a0();
            a(this.f15403U, this.f15408Z, this.f13598H);
            if (O()) {
                n3 n3Var = this.f13614d;
                if (n3Var != null && n3Var.z() != 2) {
                    this.f13614d.b(x());
                }
                Z();
                J0();
                if (this.f13967l0 != 0 && (uiVar = this.f13960g0) != null && this.f13968m0 != null) {
                    uiVar.h();
                    this.f13968m0.setVisibility(8);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k1() {
        try {
            if (!this.f13929F0 && !this.f13977v0) {
                double width = this.f15408Z.getWidth();
                int[] iArr = {((int) (0.1d * width)) / 2, (int) (this.f15408Z.getHeight() * 0.8d)};
                int[] iArrB = rl.b(((int) (width * 0.9d)) / 2, vo.a(this.f15403U, 65.0f) / 2);
                a(new String[]{String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1])}, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l1() {
        this.f13927D0 = System.currentTimeMillis();
        this.f13965j0 = this.f15408Z.getWidth();
        int height = this.f15408Z.getHeight();
        this.f13966k0 = height;
        if (this.f13965j0 < 20 || height < 20) {
            return;
        }
        this.f13620j = c2.ADSHOW;
        if (this.f13973r0) {
            this.f13612b.setIsCacheAd("1");
            if (this.f13974s0 > 0) {
                this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - this.f13974s0));
            }
            I0();
        }
        n3 n3Var = this.f13614d;
        if (n3Var != null && n3Var.z() != 2) {
            this.f13614d.d(x());
        }
        if (!this.f15409a0) {
            this.f15409a0 = true;
            j0();
            e0();
            M0();
        }
        f1();
        h1();
        g1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m1() {
        try {
            qp qpVar = this.f13951b1;
            if (qpVar != null && this.f15408Z != null && this.f15403U != null) {
                int iB = qpVar.b();
                int iA = this.f13951b1.a();
                if (iB != 0) {
                    this.f13955d1 = new FrameLayout(this.f15403U);
                    int width = this.f15408Z.getWidth();
                    int height = this.f15408Z.getHeight();
                    if (width <= 0) {
                        width = -1;
                    }
                    if (height <= 0) {
                        height = -1;
                    }
                    this.f13955d1.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                    this.f13955d1.setBackgroundColor(Color.parseColor(this.f13931H0));
                    this.f15408Z.addView(this.f13955d1);
                    this.f13955d1.setOnTouchListener(new e());
                    if (iB == 1) {
                        this.f13955d1.getViewTreeObserver().addOnScrollChangedListener(this.f13963h1);
                    }
                }
                BZVideoView bZVideoView = this.f13943T0;
                if (bZVideoView == null) {
                    return;
                }
                if (iA == 1) {
                    bZVideoView.addPlayButton();
                }
                this.f13943T0.setOnClickListener(new f(iA));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean n1() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f13956e0;
        if (shakeViewBean == null) {
            return false;
        }
        return rl.a(shakeViewBean.getRenderRate());
    }

    private boolean o1() {
        try {
            return System.currentTimeMillis() - vo.a(this.f15403U).longValue() < this.f13958f0.getUserProtectTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void p1() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        try {
            FrameLayout frameLayout4 = this.f13924A0;
            if (frameLayout4 != null && this.f13944U0 != null) {
                frameLayout4.getViewTreeObserver().removeOnScrollChangedListener(this.f13944U0);
            }
            FrameLayout frameLayout5 = this.f15408Z;
            if (frameLayout5 != null && (frameLayout3 = this.f13924A0) != null) {
                frameLayout5.removeView(frameLayout3);
                this.f13924A0 = null;
            }
            FrameLayout frameLayout6 = this.f15408Z;
            if (frameLayout6 != null && this.f13945V0 != null) {
                frameLayout6.getViewTreeObserver().removeOnScrollChangedListener(this.f13945V0);
            }
            ViewGroup viewGroup = this.f13934K0;
            if (viewGroup != null && (frameLayout2 = this.f13935L0) != null) {
                viewGroup.removeView(frameLayout2);
                this.f13935L0 = null;
            }
            if (this.f15408Z == null || (frameLayout = this.f13955d1) == null) {
                return;
            }
            if (this.f13963h1 != null) {
                frameLayout.getViewTreeObserver().removeOnScrollChangedListener(this.f13963h1);
            }
            this.f15408Z.removeView(this.f13955d1);
            this.f13955d1 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1() {
        View viewA;
        try {
            pi piVar = this.f13954d0;
            if (piVar == null || this.f13971p0 || piVar.p() == null || (viewA = si.a(this.f15403U, this.f13954d0)) == null) {
                return;
            }
            viewA.setLayoutParams(new FrameLayout.LayoutParams((this.f15408Z.getLayoutParams().width * 2) / 3, -2));
            this.f15408Z.addView(viewA, new FrameLayout.LayoutParams(-2, -2, 51));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void D0() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f13960g0) == null) {
                return;
            }
            uiVar.g();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.o3
    public String N0() {
        String strK;
        ArrayList arrayListL;
        pi piVar = this.f13954d0;
        if (piVar != null) {
            strK = piVar.k();
            if (TextUtils.isEmpty(strK) && (arrayListL = this.f13954d0.l()) != null && arrayListL.size() >= 3) {
                strK = (String) arrayListL.get(2);
            }
        } else {
            strK = null;
        }
        return TextUtils.isEmpty(strK) ? "查看详情" : strK;
    }

    @Override // com.beizi.fusion.o3
    public ViewGroup O0() {
        return this.f15408Z;
    }

    @Override // com.beizi.fusion.o3
    public String P0() {
        ArrayList arrayListL;
        String strD = null;
        try {
            pi piVar = this.f13954d0;
            if (piVar != null && !TextUtils.isEmpty(piVar.d())) {
                strD = this.f13954d0.d();
                if (TextUtils.isEmpty(strD) && (arrayListL = this.f13954d0.l()) != null && arrayListL.size() >= 2) {
                    strD = (String) arrayListL.get(1);
                }
            }
            return TextUtils.isEmpty(strD) ? this.f13939P0[this.f13940Q0] : strD;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.o3
    public UnifiedAdDownloadAppInfo Q0() {
        try {
            ApkBean apkBeanP = this.f13954d0.p();
            if (apkBeanP == null) {
                return null;
            }
            UnifiedAdDownloadAppInfo unifiedAdDownloadAppInfo = new UnifiedAdDownloadAppInfo();
            unifiedAdDownloadAppInfo.setAppName(apkBeanP.getApkName());
            unifiedAdDownloadAppInfo.setAppVersion(apkBeanP.getAppVersion());
            unifiedAdDownloadAppInfo.setAppDeveloper(apkBeanP.getAppDeveloper());
            String appPermissionsUrl = apkBeanP.getAppPermissionsUrl();
            if (TextUtils.isEmpty(appPermissionsUrl)) {
                String appPermissionsDesc = apkBeanP.getAppPermissionsDesc();
                if (!TextUtils.isEmpty(appPermissionsDesc)) {
                    unifiedAdDownloadAppInfo.setAppPermission(appPermissionsDesc);
                }
            } else {
                unifiedAdDownloadAppInfo.setAppPermission(appPermissionsUrl);
            }
            if (!TextUtils.isEmpty(apkBeanP.getAppPrivacyUrl())) {
                unifiedAdDownloadAppInfo.setAppPrivacy(apkBeanP.getAppPrivacyUrl());
            }
            unifiedAdDownloadAppInfo.setAppIntro(apkBeanP.getAppintro());
            return unifiedAdDownloadAppInfo;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.o3
    public String R0() {
        pi piVar = this.f13954d0;
        if (piVar == null || TextUtils.isEmpty(piVar.getIconUrl())) {
            return null;
        }
        return this.f13954d0.getIconUrl();
    }

    @Override // com.beizi.fusion.o3
    public String S0() {
        pi piVar = this.f13954d0;
        if (piVar == null || TextUtils.isEmpty(piVar.getImageUrl())) {
            return null;
        }
        return this.f13954d0.getImageUrl();
    }

    @Override // com.beizi.fusion.o3
    public List T0() {
        pi piVar = this.f13954d0;
        if (piVar == null) {
            return null;
        }
        if ((piVar.j() != null) && (this.f13954d0.j().size() > 0)) {
            return this.f13954d0.j();
        }
        return null;
    }

    @Override // com.beizi.fusion.o3
    public String U0() {
        if (this.f13952c0 == null) {
            return null;
        }
        try {
            rn.e eVarN = this.f13954d0.n();
            if (eVarN == null) {
                return null;
            }
            return eVarN.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.o3
    public int V0() {
        return 1;
    }

    @Override // com.beizi.fusion.o3
    public String W0() {
        ArrayList arrayListL;
        String strB = null;
        try {
            pi piVar = this.f13954d0;
            if (piVar != null) {
                strB = piVar.b();
                if (TextUtils.isEmpty(strB) && (arrayListL = this.f13954d0.l()) != null && arrayListL.size() >= 1) {
                    strB = (String) arrayListL.get(0);
                }
            }
            return TextUtils.isEmpty(strB) ? this.f13938O0[this.f13940Q0] : strB;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.o3
    public View X0() {
        pi piVar = this.f13954d0;
        if (piVar == null || this.f15403U == null) {
            return null;
        }
        String strQ = piVar.q();
        if (TextUtils.isEmpty(strQ)) {
            return null;
        }
        String strG = this.f13954d0.g();
        this.f13943T0 = new BZVideoView(this.f15403U);
        boolean zH = this.f13941R0 ? this.f13942S0 : this.f13954d0.h();
        this.f13943T0.setPlayProgressCallback(new j());
        this.f13943T0.initVideoResource(strQ, strG, zH);
        return this.f13943T0;
    }

    @Override // com.beizi.fusion.o3
    public void Y0() {
        v0();
        yq.b(this.f15403U, this.f13618h);
        w0();
        x();
        long j2 = this.f15404V;
        if (j2 > 0) {
            this.f13602L.sendEmptyMessageDelayed(1, j2);
            return;
        }
        n3 n3Var = this.f13614d;
        if (n3Var == null || n3Var.n() >= 1 || this.f13614d.z() == 2) {
            return;
        }
        A0();
    }

    @Override // com.beizi.fusion.o3
    public boolean Z0() {
        pi piVar = this.f13954d0;
        return (piVar == null || TextUtils.isEmpty(piVar.q())) ? false : true;
    }

    @Override // com.beizi.fusion.o3
    public void b1() {
        Object obj;
        this.f15408Z = new FrameLayout(this.f15403U);
        mp mpVar = new mp(this.f15403U, this.f13619i, new i());
        this.f13952c0 = mpVar;
        mpVar.b(true);
        try {
            this.f13952c0.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f13952c0.a((int) this.f13975t0);
        this.f13952c0.a(this.f13615e);
        if ("S2S".equals(l())) {
            this.f13952c0.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f13952c0.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            Map mapY = n3Var2.y();
            if (mapY != null && mapY.containsKey(C1244a.f35698z) && (obj = mapY.get(C1244a.f35698z)) != null && (obj instanceof Boolean)) {
                this.f13941R0 = true;
                this.f13942S0 = ((Boolean) obj).booleanValue();
            }
            this.f13952c0.c(mapY);
            this.f13952c0.d(this.f13614d.v());
        }
        this.f13952c0.w();
    }

    public void e1() {
        try {
            if (this.f13954d0 == null || this.f13970o0) {
                return;
            }
            LinearLayout linearLayout = new LinearLayout(this.f15403U);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this.f15403U, this.f13954d0.n());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this.f15403U, this.f13954d0.a());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            this.f15408Z.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = vo.a(this.f15403U, 6.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        mp mpVar = this.f13952c0;
        if (mpVar == null) {
            return false;
        }
        return mpVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void T() {
        try {
            BZVideoView bZVideoView = this.f13943T0;
            if (bZVideoView != null) {
                bZVideoView.onViewPause(true);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void U() {
        try {
            ui uiVar = this.f13960g0;
            if (uiVar != null) {
                uiVar.g();
            }
            BZVideoView bZVideoView = this.f13943T0;
            if (bZVideoView != null) {
                bZVideoView.onViewResume(true);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void V() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f13960g0) == null) {
                return;
            }
            uiVar.a(false);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public String n() {
        mp mpVar = this.f13952c0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.d();
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        mp mpVar = this.f13952c0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.l();
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        mp mpVar = this.f13952c0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.q();
    }

    @Override // com.beizi.fusion.o3, com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f13952c0 == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        try {
            pi piVar = this.f13954d0;
            if (piVar != null) {
                piVar.destroy();
            }
            mp mpVar = this.f13952c0;
            if (mpVar != null) {
                mpVar.a();
            }
            ui uiVar = this.f13960g0;
            if (uiVar != null) {
                uiVar.h();
            }
            BZVideoView bZVideoView = this.f13943T0;
            if (bZVideoView != null) {
                bZVideoView.onViewDestroy();
            }
            p1();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            try {
                shakeViewBean = this.f13956e0;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        int isUnidirection = shakeViewBean.getIsUnidirection();
        ui uiVar = this.f13960g0;
        if (uiVar != null) {
            uiVar.b(regulatoryAngle);
            this.f13960g0.d(isUnidirection);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f13960g0.a(g5Var.b());
            }
        }
        if (this.f13958f0 == null) {
            this.f13964i0 = true;
            this.f13960g0.a(shakeViewBean);
        } else if (a(shakeViewBean)) {
            this.f13960g0.b(this.f13958f0);
        } else if (o1()) {
            this.f13960g0.b(this.f13958f0);
        } else {
            this.f13964i0 = true;
            this.f13960g0.a(shakeViewBean);
        }
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            mp mpVar = this.f13952c0;
            if (mpVar == null) {
                return;
            }
            mpVar.a(map);
            if (map.containsKey("winPrice") && (obj3 = map.get("winPrice")) != null && (obj3 instanceof String)) {
                String str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj2 = map.get("adnId")) != null && (obj2 instanceof String)) {
                String str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            }
            if (map.containsKey("lossReason") && (obj = map.get("lossReason")) != null && (obj instanceof String)) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setLossReason(str3);
                }
            }
            I0();
            s0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void d(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            mp mpVar = this.f13952c0;
            if (mpVar == null) {
                return;
            }
            mpVar.b(map);
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str = (String) obj4;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj3 = map.get("adnId")) != null && (obj3 instanceof String)) {
                String str2 = (String) obj3;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            }
            if (map.containsKey("highestLossPrice") && (obj2 = map.get("highestLossPrice")) != null && (obj2 instanceof String)) {
                String str3 = (String) obj2;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setHighestLossPrice(str3);
                }
            }
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null && (obj instanceof String)) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    this.f13612b.setSecondPrice(str4);
                }
            }
            I0();
            t0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.o3
    public void a(List list) {
        try {
            FrameLayout frameLayout = this.f15408Z;
            if (frameLayout != null) {
                frameLayout.post(new k(list));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean = (AdSpacesBean.BuyerBean.OrderDataShakeViewBean) it.next();
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    private int b(String str, int i2, int i3, int i4) {
        int i5;
        int i6;
        try {
            if (TextUtils.isEmpty(str)) {
                return i4;
            }
            if (!"top".equals(str)) {
                if ("center".equals(str)) {
                    if (i2 > i3) {
                        i6 = (i2 - i3) / 2;
                        i4 -= i6;
                    } else {
                        i5 = (i3 - i2) / 2;
                        i4 += i5;
                    }
                } else if (!"bottom".equals(str)) {
                    i4 = 0;
                } else if (i2 > i3) {
                    i6 = i2 - i3;
                    i4 -= i6;
                } else {
                    i5 = i3 - i2;
                    i4 += i5;
                }
            }
            if (i4 < 0) {
                return 0;
            }
            return i4;
        } catch (Exception e2) {
            e2.printStackTrace();
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, int i4) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!P() && !q1.i().v() && n1()) {
                if (this.f13960g0 == null) {
                    this.f13960g0 = new ui(this.f15403U);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f13956e0;
                if (shakeViewBean == null || this.f13960g0 == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f13956e0.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f13956e0.getOrderData(), this.f13952c0.c());
                if (orderDataShakeViewBeanA == null || orderDataShakeViewBeanA.getShakeView() == null) {
                    shakeView = null;
                } else {
                    shakeView = orderDataShakeViewBeanA.getShakeView();
                    if (shakeView != null) {
                        shakeViewUuid = shakeView.getShakeViewUuid();
                    }
                }
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setShakeViewUuid(shakeViewUuid);
                    I0();
                }
                if (i3 <= 0) {
                    i3 = i4;
                }
                this.f13960g0.a(this.f13972q0);
                View viewA = this.f13960g0.a(vo.b(this.f15403U, i2), vo.b(this.f15403U, i3), this.f13956e0.getPosition(), this.f13969n0);
                this.f13968m0 = viewA;
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f13956e0;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.f15408Z.addView(this.f13968m0, layoutParams2);
                        }
                    }
                }
                b(shakeView);
                this.f13960g0.a(new l(i2, i3));
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f13958f0;
                if (coolShakeViewBean != null) {
                    this.f13960g0.a(coolShakeViewBean, this.f13962h0);
                }
                this.f13960g0.a(this.f15408Z);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List list) {
        FrameLayout frameLayout;
        if (list == null || list.size() == 0) {
            list = new ArrayList();
        }
        if (this.f13937N0 && (frameLayout = this.f15408Z) != null) {
            list.add(frameLayout);
        }
        if (list.size() == 0) {
            return;
        }
        for (View view : list) {
            if (view != null) {
                view.setOnTouchListener(new c(view));
            }
        }
    }

    @Override // com.beizi.fusion.e2
    public void b(int i2) {
        mp mpVar = this.f13952c0;
        if (mpVar == null) {
            return;
        }
        mpVar.a(this.f15408Z, i2);
    }

    private boolean a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) go.a(this.f15403U, this.f13962h0, (Object) 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f13958f0.getCoolTime()) {
                new Handler().postDelayed(new m(shakeViewBean), this.f13958f0.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            tn.a().b(this.f13962h0);
        }
        return false;
    }

    @Override // com.beizi.fusion.o3
    public void a(View view) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i2) {
        FrameLayout frameLayout;
        try {
            p1();
            if (this.f13954d0 != null && this.f15408Z != null && !this.f13929F0 && !this.f13977v0) {
                this.f13977v0 = true;
                this.f13929F0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f13928E0);
                    I0();
                }
                pi piVar = this.f13954d0;
                if (piVar == null || (frameLayout = this.f15408Z) == null) {
                    return;
                }
                piVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], i2, new o());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private int a(String str, int i2, int i3, int i4) {
        int i5;
        int i6;
        try {
            if (TextUtils.isEmpty(str)) {
                return i4;
            }
            if (!ScrollClickView.DIR_LEFT.equals(str)) {
                if ("center".equals(str)) {
                    if (i2 > i3) {
                        i6 = (i2 - i3) / 2;
                        i4 -= i6;
                    } else {
                        i5 = (i3 - i2) / 2;
                        i4 += i5;
                    }
                } else if (!ScrollClickView.DIR_RIGHT.equals(str)) {
                    i4 = 0;
                } else if (i2 > i3) {
                    i6 = i2 - i3;
                    i4 -= i6;
                } else {
                    i5 = i3 - i2;
                    i4 += i5;
                }
            }
            if (i4 < 0) {
                return 0;
            }
            return i4;
        } catch (Exception e2) {
            e2.printStackTrace();
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] a(View view, View view2, float f2, float f3, float f4, float f5) {
        String[] strArr = new String[0];
        try {
            String[] strArr2 = {f2 + "", f3 + "", f4 + "", f5 + ""};
            if (view == null || view2 == null) {
                return strArr2;
            }
            try {
                view.getLocationOnScreen(new int[2]);
                int width = view2.getWidth();
                int height = view2.getHeight();
                int[] iArr = new int[2];
                view2.getLocationOnScreen(iArr);
                int width2 = (width * ((int) ((f2 * 100.0d) / view.getWidth()))) / 100;
                int height2 = (height * ((int) ((f3 * 100.0d) / view.getHeight()))) / 100;
                int i2 = iArr[0] + width2;
                int i3 = iArr[1] + height2;
                strArr2[0] = width2 + "";
                strArr2[1] = height2 + "";
                strArr2[2] = i2 + "";
                strArr2[3] = i3 + "";
                return strArr2;
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                    return strArr2;
                } catch (Exception e3) {
                    e = e3;
                    strArr = strArr2;
                    e.printStackTrace();
                    return strArr;
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr) {
        FrameLayout frameLayout;
        try {
            p1();
            if (this.f13954d0 != null && this.f15408Z != null && !this.f13929F0) {
                this.f13977v0 = true;
                this.f13929F0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f13928E0);
                    I0();
                }
                pi piVar = this.f13954d0;
                if (piVar == null || (frameLayout = this.f15408Z) == null) {
                    return;
                }
                piVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], 0, new d());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        double d2 = i3;
        double d3 = i2;
        if (d2 >= 0.25d * d3 && !this.f13947X0) {
            this.f13947X0 = true;
            b(25);
        }
        if (d2 >= 0.5d * d3 && !this.f13948Y0) {
            this.f13948Y0 = true;
            b(50);
        }
        if (d2 < d3 * 0.75d || this.f13949Z0) {
            return;
        }
        this.f13949Z0 = true;
        b(75);
    }
}
