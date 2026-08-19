package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.kn;
import com.beizi.fusion.ln;
import com.beizi.fusion.mm;
import com.beizi.fusion.mn;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.oj;
import com.beizi.fusion.t7;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.vl;
import com.beizi.fusion.widget.BZVideoView;
import com.beizi.fusion.widget.CircleProgressView;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.widget.SkipView;
import com.beizi.fusion.wn;
import com.beizi.fusion.work.splash.SplashContainer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class j4 extends e2 implements wn.c, vl.c, kn.d {

    /* renamed from: D0, reason: collision with root package name */
    AdSpacesBean.BuyerBean.RegionalClickViewBean f14522D0;

    /* renamed from: E0, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ScrollClickBean f14523E0;

    /* renamed from: F0, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ScrollClickBean f14524F0;

    /* renamed from: G0, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ScrollClickBean f14525G0;

    /* renamed from: H0, reason: collision with root package name */
    AdSpacesBean.BuyerBean.FullScreenClickBean f14526H0;

    /* renamed from: J0, reason: collision with root package name */
    View.OnClickListener f14528J0;

    /* renamed from: K0, reason: collision with root package name */
    private wn f14529K0;

    /* renamed from: L0, reason: collision with root package name */
    private vl f14530L0;

    /* renamed from: M0, reason: collision with root package name */
    private kn f14531M0;

    /* renamed from: N0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RollViewBean f14532N0;

    /* renamed from: O0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolRollViewBean f14533O0;

    /* renamed from: P0, reason: collision with root package name */
    private mm f14534P0;

    /* renamed from: Q0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f14535Q0;

    /* renamed from: R0, reason: collision with root package name */
    private t7 f14536R0;

    /* renamed from: S0, reason: collision with root package name */
    private List f14537S0;

    /* renamed from: T0, reason: collision with root package name */
    private View f14538T0;

    /* renamed from: U, reason: collision with root package name */
    private Context f14539U;

    /* renamed from: U0, reason: collision with root package name */
    private Boolean f14540U0;

    /* renamed from: V, reason: collision with root package name */
    private String f14541V;

    /* renamed from: W, reason: collision with root package name */
    private long f14543W;

    /* renamed from: X, reason: collision with root package name */
    private fj f14545X;

    /* renamed from: X0, reason: collision with root package name */
    private int f14546X0;

    /* renamed from: Y, reason: collision with root package name */
    private ViewGroup f14547Y;

    /* renamed from: Y0, reason: collision with root package name */
    private int f14548Y0;

    /* renamed from: Z, reason: collision with root package name */
    private ViewGroup f14549Z;

    /* renamed from: Z0, reason: collision with root package name */
    private boolean f14550Z0;

    /* renamed from: a0, reason: collision with root package name */
    private View f14551a0;

    /* renamed from: a1, reason: collision with root package name */
    private int f14552a1;

    /* renamed from: b0, reason: collision with root package name */
    private List f14553b0;

    /* renamed from: b1, reason: collision with root package name */
    private boolean f14554b1;

    /* renamed from: c1, reason: collision with root package name */
    private long f14556c1;

    /* renamed from: e1, reason: collision with root package name */
    private boolean f14560e1;

    /* renamed from: f1, reason: collision with root package name */
    private boolean f14562f1;

    /* renamed from: g1, reason: collision with root package name */
    private boolean f14564g1;

    /* renamed from: h1, reason: collision with root package name */
    private boolean f14566h1;

    /* renamed from: i1, reason: collision with root package name */
    private mn f14568i1;

    /* renamed from: j1, reason: collision with root package name */
    private ln f14570j1;

    /* renamed from: k0, reason: collision with root package name */
    private long f14571k0;

    /* renamed from: k1, reason: collision with root package name */
    private boolean f14572k1;

    /* renamed from: l0, reason: collision with root package name */
    private long f14573l0;

    /* renamed from: l1, reason: collision with root package name */
    private oj f14574l1;

    /* renamed from: m0, reason: collision with root package name */
    private boolean f14575m0;

    /* renamed from: n0, reason: collision with root package name */
    private CircleProgressView f14576n0;

    /* renamed from: o0, reason: collision with root package name */
    private AdSpacesBean.PositionBean f14577o0;

    /* renamed from: p0, reason: collision with root package name */
    private AdSpacesBean.PositionBean f14578p0;

    /* renamed from: q0, reason: collision with root package name */
    private float f14579q0;

    /* renamed from: r0, reason: collision with root package name */
    private float f14580r0;

    /* renamed from: s0, reason: collision with root package name */
    private AdSpacesBean.RenderViewBean f14581s0;

    /* renamed from: t0, reason: collision with root package name */
    private int f14582t0;

    /* renamed from: u0, reason: collision with root package name */
    private int f14583u0;

    /* renamed from: v0, reason: collision with root package name */
    private String f14584v0;

    /* renamed from: w0, reason: collision with root package name */
    private String f14585w0;

    /* renamed from: x0, reason: collision with root package name */
    private String f14586x0;

    /* renamed from: y0, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ShakeViewBean f14587y0;

    /* renamed from: z0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f14588z0;

    /* renamed from: c0, reason: collision with root package name */
    private List f14555c0 = new ArrayList();

    /* renamed from: d0, reason: collision with root package name */
    private List f14557d0 = new ArrayList();

    /* renamed from: e0, reason: collision with root package name */
    private boolean f14559e0 = false;

    /* renamed from: f0, reason: collision with root package name */
    private boolean f14561f0 = false;

    /* renamed from: g0, reason: collision with root package name */
    private boolean f14563g0 = false;

    /* renamed from: h0, reason: collision with root package name */
    private boolean f14565h0 = false;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f14567i0 = false;

    /* renamed from: j0, reason: collision with root package name */
    private long f14569j0 = 5000;

    /* renamed from: A0, reason: collision with root package name */
    private String f14519A0 = null;

    /* renamed from: B0, reason: collision with root package name */
    private boolean f14520B0 = false;

    /* renamed from: C0, reason: collision with root package name */
    private int f14521C0 = -1;

    /* renamed from: I0, reason: collision with root package name */
    private String f14527I0 = "full";

    /* renamed from: V0, reason: collision with root package name */
    private boolean f14542V0 = false;

    /* renamed from: W0, reason: collision with root package name */
    private boolean f14544W0 = false;

    /* renamed from: d1, reason: collision with root package name */
    private int f14558d1 = 5;

    public class a implements ln.d {
        public a() {
        }

        @Override // com.beizi.fusion.ln.d
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            try {
                if (!j4.this.f14572k1) {
                    go.b(j4.this.f14539U, j4.this.f14519A0, Long.valueOf(System.currentTimeMillis()));
                }
                j4.this.f14527I0 = "scroll";
                j4.this.f13612b.setClickType(j4.this.f14527I0);
                j4.this.I0();
                mh.a("BeiZis", "enter onScrollSlideCallBack ");
                j4.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements t7.c {
        public c() {
        }

        @Override // com.beizi.fusion.t7.c
        public void a() {
            try {
                j4.this.f14527I0 = "eulerAngle";
                j4.this.f13612b.setClickType("eulerAngle");
                j4.this.I0();
                j4.this.a("", "", "", "", "", "", "", "", 2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f14593a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f14594b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float[] f14595c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f14596d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f14597e;

        public d(float[] fArr, ImageView imageView, float[] fArr2, float f2, float f3) {
            this.f14593a = fArr;
            this.f14594b = imageView;
            this.f14595c = fArr2;
            this.f14596d = f2;
            this.f14597e = f3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2;
            int iA;
            int left;
            int top;
            try {
                float f2 = this.f14593a[0] / this.f14594b.getLayoutParams().width;
                float f3 = this.f14595c[0] / this.f14594b.getLayoutParams().height;
                if (j4.this.f14538T0 != null) {
                    i2 = j4.this.f14538T0.getLayoutParams().width;
                    iA = j4.this.f14538T0.getLayoutParams().height;
                    left = j4.this.f14538T0.getLeft();
                    top = j4.this.f14538T0.getTop();
                } else {
                    i2 = (int) (this.f14596d * 0.9d);
                    iA = vo.a(j4.this.f14539U, 65.0f);
                    left = (int) ((this.f14596d * 0.1d) / 2.0d);
                    top = (int) (this.f14597e * 0.8d);
                }
                int i3 = (int) (i2 * f2);
                int i4 = (int) (iA * f3);
                int i5 = left + i3;
                int i6 = top + i4;
                j4.this.b(i3 + ".0", i4 + ".0", i5 + ".0", i6 + ".0", i3 + ".0", i4 + ".0", i5 + ".0", i6 + ".0");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f14599a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ float[] f14600b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float[] f14601c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ float[] f14602d;

        public e(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
            this.f14599a = fArr;
            this.f14600b = fArr2;
            this.f14601c = fArr3;
            this.f14602d = fArr4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f14599a[0] = motionEvent.getX();
                    this.f14600b[0] = motionEvent.getY();
                    this.f14601c[0] = motionEvent.getRawX();
                    this.f14602d[0] = motionEvent.getRawY();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return false;
        }
    }

    public class f implements oj.e {
        public f() {
        }

        @Override // com.beizi.fusion.oj.e
        public void a() throws Throwable {
            j4.this.V0();
        }

        @Override // com.beizi.fusion.oj.e
        public void b() {
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            j4.this.V0();
        }
    }

    public class h implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f14606a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f14607b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float[] f14608c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f14609d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f14610e;

        public h(float[] fArr, ImageView imageView, float[] fArr2, float f2, float f3) {
            this.f14606a = fArr;
            this.f14607b = imageView;
            this.f14608c = fArr2;
            this.f14609d = f2;
            this.f14610e = f3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2;
            int iA;
            int left;
            int top;
            try {
                float f2 = this.f14606a[0] / this.f14607b.getLayoutParams().width;
                float f3 = this.f14608c[0] / this.f14607b.getLayoutParams().height;
                if (j4.this.f14538T0 != null) {
                    i2 = j4.this.f14538T0.getLayoutParams().width;
                    iA = j4.this.f14538T0.getLayoutParams().height;
                    left = j4.this.f14538T0.getLeft();
                    top = j4.this.f14538T0.getTop();
                } else {
                    i2 = (int) (this.f14609d * 0.9d);
                    iA = vo.a(j4.this.f14539U, 65.0f);
                    left = (int) ((this.f14609d * 0.1d) / 2.0d);
                    top = (int) (this.f14610e * 0.8d);
                }
                int i3 = (int) (i2 * f2);
                int i4 = (int) (iA * f3);
                int i5 = left + i3;
                int i6 = top + i4;
                j4.this.b(i3 + ".0", i4 + ".0", i5 + ".0", i6 + ".0", i3 + ".0", i4 + ".0", i5 + ".0", i6 + ".0");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class i implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f14612a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ float[] f14613b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float[] f14614c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ float[] f14615d;

        public i(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
            this.f14612a = fArr;
            this.f14613b = fArr2;
            this.f14614c = fArr3;
            this.f14615d = fArr4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f14612a[0] = motionEvent.getX();
                    this.f14613b[0] = motionEvent.getY();
                    this.f14614c[0] = motionEvent.getRawX();
                    this.f14615d[0] = motionEvent.getRawY();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return false;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                if (bq.a(j4.this.f14549Z) && !j4.this.f14562f1) {
                    j4.this.f13597G = 2;
                    j4.this.V0();
                    j4.this.C0();
                }
            } catch (Exception unused) {
            }
        }
    }

    public class k extends p1 {

        /* renamed from: a, reason: collision with root package name */
        boolean f14618a = false;

        public k() {
        }

        @Override // com.beizi.fusion.p1
        public void a(int i2) {
            j4.this.a(String.valueOf(i2), i2);
        }

        @Override // com.beizi.fusion.p1
        public void b() {
            try {
                if (j4.this.f13614d != null) {
                    j4.this.f13614d.c(j4.this.x());
                }
                j4.this.c0();
                if (j4.this.f14529K0 != null) {
                    j4.this.f14529K0.q();
                }
                if (j4.this.f14530L0 != null) {
                    j4.this.f14530L0.e();
                }
                if (j4.this.f14531M0 != null) {
                    j4.this.f14531M0.b();
                }
                if (j4.this.f14534P0 != null) {
                    j4.this.f14534P0.h();
                }
                if (j4.this.f14536R0 != null) {
                    j4.this.f14536R0.f();
                }
                if (j4.this.f14568i1 != null) {
                    j4.this.f14568i1.c();
                }
                if (j4.this.f14570j1 != null) {
                    j4.this.f14570j1.c();
                }
                j4.this.T0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.p1
        public void c() {
            if (q1.i().u() && j4.this.f14543W - (System.currentTimeMillis() - j4.this.f13614d.u()) < j4.this.f14552a1) {
                j4.this.f14550Z0 = true;
                j4.this.a(String.valueOf(3), 3);
                return;
            }
            System.currentTimeMillis();
            j4 j4Var = j4.this;
            j4Var.f14558d1 = j4Var.f14545X.e();
            j4.this.f13620j = c2.ADLOAD;
            if (j4.this.f14545X.q() != null) {
                try {
                    j4 j4Var2 = j4.this;
                    j4Var2.a(Double.parseDouble(j4Var2.f14545X.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            j4 j4Var3 = j4.this;
            j4Var3.f14540U0 = Boolean.valueOf(j4Var3.f14545X.s());
            j4 j4Var4 = j4.this;
            j4Var4.f14554b1 = j4Var4.f14545X.u();
            if (j4.this.f14545X != null) {
                j4 j4Var5 = j4.this;
                j4Var5.f13595E = j4Var5.f14545X.i();
                if (j4.this.f13595E != null) {
                    j4 j4Var6 = j4.this;
                    j4Var6.f13596F = j4Var6.f13595E.c();
                    if (j4.this.f13596F != 0) {
                        j4 j4Var7 = j4.this;
                        j4Var7.f13597G = j4Var7.f13595E.f() + 1;
                    }
                }
                j4 j4Var8 = j4.this;
                j4Var8.f13598H = j4Var8.f14545X.m();
            }
            if (j4.this.f14554b1) {
                j4 j4Var9 = j4.this;
                j4Var9.f14556c1 = j4Var9.f14545X.f();
                j4.this.f13612b.setIsCacheAd("1");
                if (j4.this.f14556c1 > 0) {
                    j4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - j4.this.f14556c1));
                }
                j4.this.I0();
            }
            j4.this.g0();
            if (j4.this.W()) {
                j4.this.j1();
            } else {
                j4.this.A();
            }
        }

        @Override // com.beizi.fusion.p1
        public void d() {
            j4.this.f13620j = c2.ADSHOW;
            if (j4.this.f14554b1) {
                j4.this.f13612b.setIsCacheAd("1");
                if (j4.this.f14556c1 > 0) {
                    j4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - j4.this.f14556c1));
                }
                j4.this.I0();
            }
            if (j4.this.f13614d != null) {
                if (j4.this.f13614d.z() != 2) {
                    j4.this.f13614d.d(j4.this.x());
                }
                j4.this.M0();
            }
            j4.this.j0();
            j4.this.z0();
            j4.this.e0();
            j4.this.q1();
            j4.this.k1();
            j4.this.O0();
        }

        @Override // com.beizi.fusion.p1
        public void a() {
            go.b(j4.this.f14539U, "uniteTime", Long.valueOf(System.currentTimeMillis()));
            if (j4.this.f13599I && j4.this.f13615e != null) {
                j4.this.f13612b.setCallBackStrategyUuid(j4.this.f13615e.getCallBackStrategyUuid());
                j4.this.I0();
            }
            j4.this.a0();
            j4 j4Var = j4.this;
            j4Var.a(j4Var.f14539U, j4.this.f14547Y, j4.this.f13598H);
            if (j4.this.O()) {
                j4.this.f14544W0 = true;
                if (j4.this.f13614d != null) {
                    j4.this.f13614d.b(j4.this.x());
                    j4.this.J0();
                }
                j4.this.Z();
            }
        }

        @Override // com.beizi.fusion.p1
        public void a(long j2) {
            try {
                if (!this.f14618a) {
                    j4.this.p1();
                    this.f14618a = true;
                }
                if (j4.this.f14575m0) {
                    if (j4.this.f14573l0 > 0 && j4.this.f14573l0 <= j4.this.f14569j0) {
                        if (j4.this.f14559e0) {
                            if (j4.this.f14571k0 <= 0 || j2 <= j4.this.f14571k0) {
                                j4.this.f14567i0 = false;
                                j4.this.f14551a0.setAlpha(1.0f);
                            } else {
                                j4.this.f14567i0 = true;
                                j4.this.f14551a0.setAlpha(0.2f);
                            }
                        }
                        if (j4.this.f14573l0 == j4.this.f14569j0) {
                            j4.this.f14551a0.setEnabled(false);
                        } else {
                            j4.this.f14551a0.setEnabled(true);
                        }
                    }
                    j4.this.e(Math.round(j2 / 1000.0f));
                }
                if (j4.this.f13614d == null || j4.this.f13614d.z() == 2) {
                    return;
                }
                j4.this.f13614d.a(j2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class l implements cm {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f14620a;

        public l(boolean z2) {
            this.f14620a = z2;
        }

        @Override // com.beizi.fusion.cm
        public void e() {
            if (this.f14620a) {
                j4.this.l1();
            }
        }
    }

    public class m implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a, reason: collision with root package name */
        boolean f14622a;

        /* renamed from: b, reason: collision with root package name */
        boolean f14623b;

        public class a implements View.OnTouchListener {
            public a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public m() {
        }

        public void a(boolean z2) {
            if (z2 || j4.this.f14545X == null) {
                return;
            }
            j4.this.f14545X.a(new a());
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                if (j4.this.f14549Z == null) {
                    return;
                }
                j4.this.f14549Z.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                if (j4.this.f13615e == null) {
                    return;
                }
                AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean = j4.this.f14526H0;
                if (fullScreenClickBean != null) {
                    String fullScreenClickUuid = fullScreenClickBean.getFullScreenClickUuid();
                    j4 j4Var = j4.this;
                    AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBeanB = j4Var.b(j4Var.f14526H0.getOrderData(), j4.this.f14545X.c());
                    if (orderDataFullScreenClickBeanB != null) {
                        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick = orderDataFullScreenClickBeanB.getFullScreenClick();
                        if (fullScreenClick != null) {
                            fullScreenClickUuid = fullScreenClick.getFullScreenClickUuid();
                            this.f14623b = rl.a(fullScreenClick.getRandomClickNum());
                            mh.a("BeiZis", "beizi clickable = " + this.f14623b);
                            a(this.f14623b);
                        }
                    } else {
                        this.f14622a = rl.a(j4.this.f14526H0.getRandomClickNum());
                        mh.a("BeiZis", "beizi clickable Two = " + this.f14622a);
                        a(this.f14622a);
                    }
                    if (j4.this.f13612b != null) {
                        j4.this.f13612b.setFullScreenClickUuid(fullScreenClickUuid);
                        j4.this.I0();
                    }
                }
                j4.this.m1();
                if (j4.this.f13615e.getInteractionRules() != null && j4.this.f13615e.getInteractionRules().size() > 0) {
                    String strA = d2.a(j4.this.f13615e.getInteractionRules(), rl.b(100));
                    switch (strA.hashCode()) {
                        case -1671124246:
                            if (strA.equals("eulerAngle")) {
                                if (!j4.this.P() && !q1.i().v()) {
                                    j4.this.W0();
                                    break;
                                }
                                j4.this.Y0();
                                return;
                            }
                            break;
                        case -907680051:
                            if (strA.equals("scroll")) {
                                j4.this.c1();
                                break;
                            }
                            break;
                        case -690338273:
                            if (strA.equals("regional")) {
                                j4.this.Y0();
                                break;
                            }
                            break;
                        case 3506301:
                            if (strA.equals("roll")) {
                                if (!j4.this.P() && !q1.i().v()) {
                                    j4.this.Z0();
                                    break;
                                }
                                j4.this.Y0();
                                return;
                            }
                            break;
                        case 109399814:
                            if (strA.equals("shake")) {
                                if (!j4.this.P() && !q1.i().v()) {
                                    j4.this.e1();
                                    break;
                                }
                                j4.this.Y0();
                                return;
                            }
                            break;
                    }
                } else if (j4.this.P() || q1.i().v()) {
                    j4.this.Y0();
                    j4.this.c1();
                } else {
                    j4.this.e1();
                    j4.this.Y0();
                    j4.this.c1();
                    j4.this.Z0();
                    j4.this.W0();
                }
                j4.this.N0();
                j4.this.P0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class n implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f14626a;

        public n(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f14626a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j4.this.f14520B0 = true;
            j4.this.f14529K0.a(this.f14626a);
        }
    }

    public class o implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f14628a;

        public o(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f14628a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j4.this.f14520B0 = true;
            j4.this.f14529K0.a(this.f14628a);
        }
    }

    public class p implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f14630a;

        /* renamed from: b, reason: collision with root package name */
        float f14631b;

        /* renamed from: c, reason: collision with root package name */
        float f14632c;

        /* renamed from: d, reason: collision with root package name */
        float f14633d;

        /* renamed from: e, reason: collision with root package name */
        float f14634e;

        /* renamed from: f, reason: collision with root package name */
        float f14635f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f14636g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f14637h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ kn.d f14638i;

        public p(int i2, String str, kn.d dVar) {
            this.f14636g = i2;
            this.f14637h = str;
            this.f14638i = dVar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f14630a = motionEvent.getX();
                this.f14631b = motionEvent.getY();
                this.f14632c = motionEvent.getX();
                this.f14633d = motionEvent.getY();
                this.f14634e = motionEvent.getRawX();
                this.f14635f = motionEvent.getRawY();
            } else if (action == 1) {
                mh.c("ScrollClickUtil", "mCurPosX = " + this.f14632c + ",mCurPosY = " + this.f14633d + ",mPosX = " + this.f14630a + ",mPosY = " + this.f14631b);
                float f2 = this.f14633d - this.f14631b;
                if (f2 <= 0.0f || Math.abs(f2) <= this.f14636g) {
                    float f3 = this.f14633d - this.f14631b;
                    if (f3 >= 0.0f || Math.abs(f3) <= this.f14636g) {
                        float f4 = this.f14632c - this.f14630a;
                        if (f4 >= 0.0f || Math.abs(f4) <= this.f14636g) {
                            float f5 = this.f14632c - this.f14630a;
                            if (f5 > 0.0f && Math.abs(f5) > this.f14636g && (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f14637h) || j4.this.f14564g1)) {
                                j4.this.a(this.f14638i, this.f14630a + "", this.f14631b + "", this.f14634e + "", this.f14635f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                            }
                        } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f14637h) || j4.this.f14564g1) {
                            j4.this.a(this.f14638i, this.f14630a + "", this.f14631b + "", this.f14634e + "", this.f14635f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        }
                    } else if ("up".equalsIgnoreCase(this.f14637h) || j4.this.f14564g1) {
                        j4.this.a(this.f14638i, this.f14630a + "", this.f14631b + "", this.f14634e + "", this.f14635f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                    }
                } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f14637h) || j4.this.f14564g1) {
                    j4.this.a(this.f14638i, this.f14630a + "", this.f14631b + "", this.f14634e + "", this.f14635f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                }
            } else if (action == 2) {
                this.f14632c = motionEvent.getX();
                this.f14633d = motionEvent.getY();
            }
            return true;
        }
    }

    public class q implements Comparator {
        public q() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(AdSpacesBean.RenderViewBean renderViewBean, AdSpacesBean.RenderViewBean renderViewBean2) {
            return renderViewBean2.getLevel() - renderViewBean.getLevel();
        }
    }

    public class r implements View.OnClickListener {
        public r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            try {
                if (j4.this.f14566h1 && !j4.this.f14562f1) {
                    j4.this.f14566h1 = false;
                    j4.this.V0();
                } else {
                    if (j4.this.f14545X != null) {
                        j4.this.f14545X.b();
                    }
                    j4.this.b0();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class s implements mn.f {
        public s() {
        }

        @Override // com.beizi.fusion.mn.f
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            try {
                if (!j4.this.f14572k1) {
                    go.b(j4.this.f14539U, j4.this.f14519A0, Long.valueOf(System.currentTimeMillis()));
                }
                j4.this.f14527I0 = "scroll";
                j4.this.f13612b.setClickType(j4.this.f14527I0);
                j4.this.I0();
                mh.a("BeiZis", "enter onScrollSlideCallBack ");
                j4.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public j4(Context context, String str, long j2, View view, ViewGroup viewGroup, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, List list, int i2, int i3, n3 n3Var) {
        this.f14539U = context;
        this.f14541V = str;
        this.f14543W = j2;
        this.f14547Y = viewGroup;
        this.f13615e = buyerBean;
        this.f13616f = forwardBean;
        this.f13614d = n3Var;
        this.f14549Z = new SplashContainer(context);
        this.f14551a0 = view;
        this.f14553b0 = list;
        this.f14546X0 = i2;
        this.f14548Y0 = i3;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0() {
        try {
            if (this.f14522D0 == null && (P() || q1.i().v())) {
                AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean = new AdSpacesBean.BuyerBean.RegionalClickViewBean();
                this.f14522D0 = regionalClickViewBean;
                regionalClickViewBean.setTitleColor("#FFFFFF");
                this.f14522D0.setTitle("点击跳转至网页或第三方应用");
                this.f14522D0.setRegionalClickUuid("-4");
                this.f14522D0.setIsDisableClick(0);
                AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean = new AdSpacesBean.BuyerBean.PercentPositionBean();
                percentPositionBean.setCenterX("50%");
                percentPositionBean.setCenterY("80%");
                this.f14522D0.setPosition(percentPositionBean);
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean2 = this.f14522D0;
            if (regionalClickViewBean2 == null || this.f14530L0 == null || regionalClickViewBean2.getPosition() == null) {
                return;
            }
            String regionalClickUuid = this.f14522D0.getRegionalClickUuid();
            AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBeanC = c(this.f14522D0.getOrderData(), this.f14545X.c());
            if (orderDataRegionalClickViewBeanC != null) {
                AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = orderDataRegionalClickViewBeanC.getRegionalClickView();
                if (regionalClickView != null) {
                    regionalClickUuid = regionalClickView.getRegionalClickUuid();
                }
                this.f14530L0.a(regionalClickView);
            } else {
                this.f14530L0.a(this.f14522D0);
            }
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setRegionalClickUuid(regionalClickUuid);
                I0();
            }
            this.f14530L0.a(this.f14540U0);
            View viewA = this.f14530L0.a(vo.b(this.f14539U, this.f14549Z.getWidth()), vo.b(this.f14539U, this.f14549Z.getHeight()), this.f14522D0.getPosition(), true);
            this.f14538T0 = viewA;
            if (viewA != null) {
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                    layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                    layoutParams2.topMargin = marginLayoutParams.topMargin;
                    try {
                        this.f14547Y.addView(this.f14538T0, layoutParams2);
                        this.f14530L0.a(this);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0() {
        try {
            AdSpacesBean.BuyerBean.RollViewBean rollView = this.f13615e.getRollView();
            this.f14532N0 = rollView;
            if (rollView == null) {
                return;
            }
            AdSpacesBean.BuyerBean.OrderDataRollViewBean orderDataRollViewBeanD = d(rollView.getOrderData(), this.f14545X.c());
            AdSpacesBean.BuyerBean.RollViewBean rollView2 = (orderDataRollViewBeanD == null || orderDataRollViewBeanD.getRollView() == null) ? null : orderDataRollViewBeanD.getRollView();
            if (rollView2 == null) {
                rollView2 = this.f14532N0;
            }
            if (rollView2.getPosition() == null) {
                return;
            }
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setRollViewUuid(rollView2.getRollViewUuid());
                I0();
            }
            if (this.f14534P0 == null) {
                this.f14534P0 = new mm(this.f14539U);
            }
            this.f14534P0.a(this.f14540U0);
            this.f14534P0.a(this.f14547Y, vo.b(this.f14539U, this.f14549Z.getWidth()), vo.b(this.f14539U, this.f14549Z.getHeight()), rollView2);
            AdSpacesBean.BuyerBean.RollViewBean rollViewBean = this.f14532N0;
            if (rollViewBean != null) {
                this.f14533O0 = rollViewBean.getCoolRollView();
            }
            a(rollView2);
            this.f14534P0.f();
            this.f14534P0.a(new b(rollView2.getIsClick()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a1() {
        try {
            if (this.f14523E0 != null) {
                this.f14568i1 = new mn(this.f14539U);
                int width = this.f14549Z.getWidth();
                int height = this.f14549Z.getHeight();
                if (this.f14572k1) {
                    this.f14568i1.a(this.f14525G0, h1(), this.f14540U0.booleanValue(), width, height);
                } else {
                    AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f14524F0;
                    if (scrollClickBean != null) {
                        this.f14568i1.a(scrollClickBean, h1(), this.f14540U0.booleanValue(), width, height);
                    } else {
                        this.f14568i1.a(this.f14523E0, h1(), this.f14540U0.booleanValue(), width, height);
                    }
                }
                View viewA = this.f14568i1.a(this.f14549Z);
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    ViewGroup viewGroup = this.f14547Y;
                    if (viewGroup != null) {
                        viewGroup.addView(viewA, layoutParams2);
                    }
                }
                this.f14568i1.a(new s());
                this.f14568i1.k();
            }
        } catch (Exception unused) {
        }
    }

    private void b1() {
        try {
            if (this.f14523E0 != null) {
                this.f14570j1 = new ln(this.f14539U);
                int width = this.f14549Z.getWidth();
                int height = this.f14549Z.getHeight();
                if (this.f14572k1) {
                    this.f14570j1.a(this.f14525G0, h1(), this.f14540U0.booleanValue(), width, height);
                } else {
                    AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f14524F0;
                    if (scrollClickBean != null) {
                        this.f14570j1.a(scrollClickBean, h1(), this.f14540U0.booleanValue(), width, height);
                    } else {
                        this.f14570j1.a(this.f14523E0, h1(), this.f14540U0.booleanValue(), width, height);
                    }
                }
                View viewA = this.f14570j1.a(this.f14549Z);
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, layoutParams.height);
                    layoutParams2.topMargin = marginLayoutParams.topMargin;
                    layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                    ViewGroup viewGroup = this.f14547Y;
                    if (viewGroup != null) {
                        viewGroup.addView(viewA, layoutParams2);
                    }
                }
                this.f14570j1.a(new a());
                this.f14570j1.i();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1() {
        int style;
        String scrollClickUuid;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f14523E0;
            if (scrollClickBean == null) {
                return;
            }
            AdSpacesBean.BuyerBean.ScrollClickBean coolScrollClick = scrollClickBean.getCoolScrollClick();
            this.f14525G0 = coolScrollClick;
            if (coolScrollClick != null && (c(coolScrollClick.getUserProtectTime()) || b(this.f14525G0.getCoolTime()))) {
                this.f14572k1 = true;
            }
            if (this.f14572k1) {
                style = this.f14525G0.getStyle();
            } else {
                AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanE = e(this.f14523E0.getOrderData(), this.f14545X.c());
                if (orderDataScrollViewOrderBeanE != null) {
                    this.f14524F0 = orderDataScrollViewOrderBeanE.getScrollClick();
                }
                AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean2 = this.f14524F0;
                style = scrollClickBean2 != null ? scrollClickBean2.getStyle() : this.f14523E0.getStyle();
            }
            if (this.f14572k1) {
                scrollClickUuid = this.f14525G0.getScrollClickUuid();
            } else {
                AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean3 = this.f14524F0;
                scrollClickUuid = scrollClickBean3 != null ? scrollClickBean3.getScrollClickUuid() : this.f14523E0.getScrollClickUuid();
            }
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setScrollClickUuid(scrollClickUuid);
                I0();
            }
            if (style == 1) {
                a1();
            } else if (style == 2) {
                b1();
            } else {
                X0();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void d1() {
        View view;
        View.OnClickListener onClickListener;
        if (this.f14575m0 || (view = this.f14551a0) == null || (onClickListener = this.f14528J0) == null) {
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (this.f14529K0 == null) {
                this.f14529K0 = new wn(this.f14539U);
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14587y0;
            if (shakeViewBean == null || this.f14529K0 == null || shakeViewBean.getPosition() == null) {
                return;
            }
            this.f14542V0 = true;
            String shakeViewUuid = this.f14587y0.getShakeViewUuid();
            AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanF = f(this.f14587y0.getOrderData(), this.f14545X.c());
            if (orderDataShakeViewBeanF == null || orderDataShakeViewBeanF.getShakeView() == null) {
                shakeView = null;
            } else {
                shakeView = orderDataShakeViewBeanF.getShakeView();
                if (shakeView != null) {
                    shakeViewUuid = shakeView.getShakeViewUuid();
                }
            }
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setShakeViewUuid(shakeViewUuid);
                I0();
            }
            this.f14529K0.a(this.f14540U0);
            View viewA = this.f14529K0.a(vo.b(this.f14539U, this.f14549Z.getWidth()), vo.b(this.f14539U, this.f14549Z.getHeight()), this.f14587y0.getPosition());
            if (viewA != null) {
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                    layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                    layoutParams2.topMargin = marginLayoutParams.topMargin;
                    this.f14547Y.addView(viewA, layoutParams2);
                }
            }
            n1();
            b(shakeView);
            this.f14529K0.a(this);
            a(shakeView, viewA);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private void f1() {
        boolean z2 = false;
        for (int i2 = 0; i2 < this.f14553b0.size(); i2++) {
            AdSpacesBean.RenderViewBean renderViewBean = (AdSpacesBean.RenderViewBean) this.f14553b0.get(i2);
            String type = renderViewBean.getType();
            if ("SKIPVIEW".equals(type)) {
                this.f14557d0.add(renderViewBean);
            } else if ("MATERIALVIEW".equals(type)) {
                this.f14555c0.add(renderViewBean);
            }
        }
        if (this.f14557d0.size() > 0) {
            AdSpacesBean.RenderViewBean renderViewBean2 = (AdSpacesBean.RenderViewBean) this.f14557d0.get(0);
            this.f14581s0 = renderViewBean2;
            if (renderViewBean2 != null) {
                this.f14578p0 = renderViewBean2.getTapPosition();
                this.f14577o0 = this.f14581s0.getLayerPosition();
                long skipViewTotalTime = this.f14581s0.getSkipViewTotalTime();
                if (skipViewTotalTime > 0) {
                    this.f14569j0 = skipViewTotalTime;
                }
                long skipUnavailableTime = this.f14581s0.getSkipUnavailableTime();
                if (skipUnavailableTime > 0) {
                    this.f14573l0 = skipUnavailableTime;
                }
                this.f14582t0 = this.f14581s0.getShowCountDown();
                this.f14583u0 = this.f14581s0.getShowBorder();
                String skipText = this.f14581s0.getSkipText();
                this.f14584v0 = skipText;
                if (TextUtils.isEmpty(skipText)) {
                    this.f14584v0 = "跳过";
                }
                String textColor = this.f14581s0.getTextColor();
                this.f14585w0 = textColor;
                if (TextUtils.isEmpty(textColor)) {
                    this.f14585w0 = "#FFFFFF";
                }
                String countDownColor = this.f14581s0.getCountDownColor();
                this.f14586x0 = countDownColor;
                if (TextUtils.isEmpty(countDownColor)) {
                    this.f14586x0 = "#FFFFFF";
                }
                this.f14566h1 = rl.a(this.f14581s0.getRandomClick());
                List<AdSpacesBean.PassPolicyBean> passPolicy = this.f14581s0.getPassPolicy();
                if (passPolicy != null && passPolicy.size() > 0) {
                    for (AdSpacesBean.PassPolicyBean passPolicyBean : passPolicy) {
                        String passType = passPolicyBean.getPassType();
                        int passPercent = passPolicyBean.getPassPercent();
                        passType.getClass();
                        ?? r7 = -1;
                        r7 = -1;
                        r7 = -1;
                        r7 = -1;
                        switch (passType.hashCode()) {
                            case 601561940:
                                if (passType.equals("RANDOMPASS")) {
                                    r7 = z2;
                                    break;
                                }
                                break;
                            case 1028793094:
                                if (passType.equals("WAITPASS")) {
                                    r7 = 1;
                                    break;
                                }
                                break;
                            case 1122973890:
                                if (passType.equals("LAYERPASS")) {
                                    r7 = 2;
                                    break;
                                }
                                break;
                        }
                        switch (r7) {
                            case 0:
                                this.f14561f0 = rl.a(passPercent);
                                z2 = false;
                                break;
                            case 1:
                                this.f14559e0 = rl.a(passPercent);
                                z2 = false;
                                break;
                            case 2:
                                AdSpacesBean.PositionBean positionBean = this.f14577o0;
                                if (positionBean != null && this.f14578p0 != null) {
                                    double centerX = positionBean.getCenterX();
                                    double centerY = this.f14577o0.getCenterY();
                                    double width = this.f14577o0.getWidth();
                                    double height = this.f14577o0.getHeight();
                                    double centerX2 = this.f14578p0.getCenterX();
                                    double centerY2 = this.f14578p0.getCenterY();
                                    double width2 = this.f14578p0.getWidth();
                                    double height2 = this.f14578p0.getHeight();
                                    if ((centerX > 0.0d && centerX2 > 0.0d && centerX != centerX2) || ((centerY > 0.0d && centerY2 > 0.0d && centerY != centerY2) || ((width > 0.0d && width2 > 0.0d && width != width2) || (height > 0.0d && height2 > 0.0d && height != height2)))) {
                                        this.f14563g0 = rl.a(passPercent);
                                    }
                                    if (width2 * height2 < width * height) {
                                        this.f14565h0 = true;
                                    }
                                    z2 = false;
                                    break;
                                } else {
                                    break;
                                }
                        }
                    }
                }
            }
        }
        if (this.f14555c0.size() > 0) {
            Collections.sort(this.f14555c0, new q());
        }
    }

    private View g1() {
        View view;
        String str;
        this.f14528J0 = new r();
        if (this.f14575m0) {
            View view2 = this.f14551a0;
            if (view2 != null) {
                view2.setVisibility(8);
                view2.setAlpha(0.0f);
            }
            SkipView skipView = new SkipView(this.f14539U);
            this.f14551a0 = skipView;
            skipView.setOnClickListener(this.f14528J0);
            CircleProgressView circleProgressView = new CircleProgressView(this.f14539U);
            this.f14576n0 = circleProgressView;
            circleProgressView.setAlpha(0.0f);
            view = this.f14576n0;
            str = "beizi";
        } else {
            view = this.f14551a0;
            if (view != null) {
                CircleProgressView circleProgressView2 = new CircleProgressView(this.f14539U);
                this.f14576n0 = circleProgressView2;
                circleProgressView2.setAlpha(0.0f);
                view = this.f14576n0;
                str = "app";
            } else {
                str = "buyer";
            }
        }
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            eventBean.setSkipType(str);
            I0();
        }
        return view;
    }

    private boolean h1() {
        fj fjVar = this.f14545X;
        if (fjVar == null) {
            return false;
        }
        try {
            zk zkVarP = fjVar.p();
            if (zkVarP == null) {
                return false;
            }
            boolean z2 = true;
            if (zkVarP.d() != 1) {
                z2 = false;
            }
            this.f14564g1 = z2;
            return z2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean i1() {
        try {
            if (this.f13615e.getInteractionRules() != null && this.f13615e.getInteractionRules().size() > 0) {
                if ("shake".equals(d2.a(this.f13615e.getInteractionRules(), rl.b(100))) && !P() && !q1.i().v() && this.f14587y0 != null) {
                    return true;
                }
            } else if (!P() && !q1.i().v() && this.f14587y0 != null) {
                return true;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1() {
        n3 n3Var = this.f13614d;
        if (n3Var == null) {
            return;
        }
        n3Var.C().toString();
        f();
        u5 u5Var = this.f13617g;
        if (u5Var == u5.SUCCESS) {
            d1();
            this.f13614d.b(x(), (View) null);
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() {
        fj fjVar = this.f14545X;
        if (fjVar == null) {
            return;
        }
        try {
            zk zkVarP = fjVar.p();
            if (zkVarP == null) {
                return;
            }
            int iA = zkVarP.a();
            boolean z2 = true;
            if (zkVarP.d() != 1) {
                z2 = false;
            }
            this.f14564g1 = z2;
            if (iA <= 0) {
                return;
            }
            new Handler().postDelayed(new g(), iA);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l1() {
        StringBuilder sb = new StringBuilder();
        sb.append("shakeViewBean != null ? ");
        sb.append(this.f14587y0 != null);
        sb.append(",regionalClickViewBean != null ? ");
        sb.append(this.f14522D0 != null);
        sb.append(",fullScreenClickBean != null ? ");
        sb.append(this.f14526H0 != null);
        mh.a("BeiZis", sb.toString());
        this.f14549Z.getViewTreeObserver().addOnGlobalLayoutListener(new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m1() {
        try {
            List list = this.f14537S0;
            if (list != null && list.size() != 0) {
                for (AdSpacesBean.ScreenConfigVoBean screenConfigVoBean : this.f14537S0) {
                    float width = this.f14549Z.getWidth();
                    float height = this.f14549Z.getHeight();
                    if (width == 0.0f) {
                        width = this.f14579q0;
                    }
                    float f2 = width;
                    if (height == 0.0f) {
                        height = this.f14580r0;
                    }
                    float f3 = height;
                    String screenW = screenConfigVoBean.getScreenW();
                    String screenH = screenConfigVoBean.getScreenH();
                    String screenX = screenConfigVoBean.getScreenX();
                    String screenY = screenConfigVoBean.getScreenY();
                    int i2 = (TextUtils.isEmpty(screenW) || screenW.equals("0")) ? (int) f2 : screenW.endsWith("%") ? (((int) f2) * Integer.parseInt(screenW.substring(0, screenW.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(screenW));
                    int i3 = (TextUtils.isEmpty(screenH) || screenH.equals("0")) ? (int) f3 : screenH.endsWith("%") ? (((int) f3) * Integer.parseInt(screenH.substring(0, screenH.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(screenH));
                    int i4 = (TextUtils.isEmpty(screenX) || screenX.equals("0")) ? (int) f2 : screenX.endsWith("%") ? (((int) f2) * Integer.parseInt(screenX.substring(0, screenX.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(screenX));
                    int i5 = (TextUtils.isEmpty(screenY) || screenY.equals("0")) ? (int) f3 : screenY.endsWith("%") ? (((int) f3) * Integer.parseInt(screenY.substring(0, screenY.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(screenY));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3);
                    int i6 = i5 - (i3 / 2);
                    int i7 = i4 - (i2 / 2);
                    if (i6 < 0) {
                        i6 = 0;
                    }
                    if (i7 < 0) {
                        i7 = 0;
                    }
                    layoutParams.topMargin = i6;
                    layoutParams.leftMargin = i7;
                    ImageView imageView = new ImageView(this.f14539U);
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    imageView.setVisibility(0);
                    imageView.setLayoutParams(layoutParams);
                    String screenImage = screenConfigVoBean.getScreenImage();
                    if (!TextUtils.isEmpty(screenImage) && screenImage.contains("http")) {
                        a4.a(this.f14539U).b(screenImage).a(imageView);
                    }
                    float[] fArr = new float[1];
                    float[] fArr2 = new float[1];
                    imageView.setOnClickListener(new d(fArr, imageView, fArr2, f2, f3));
                    imageView.setOnTouchListener(new e(fArr, fArr2, new float[1], new float[1]));
                    this.f14547Y.addView(imageView, layoutParams);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void n1() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14587y0;
        if (shakeViewBean == null) {
            return;
        }
        int sensorParam = shakeViewBean.getSensorParam();
        int compliantAngle = this.f14587y0.getCompliantAngle();
        boolean zIsReturnAngle = this.f14587y0.isReturnAngle();
        int isUnidirection = this.f14587y0.getIsUnidirection();
        fj fjVar = this.f14545X;
        Map mapR = fjVar != null ? fjVar.r() : null;
        wn wnVar = this.f14529K0;
        if (wnVar == null) {
            return;
        }
        wnVar.a(sensorParam, compliantAngle, zIsReturnAngle, isUnidirection, mapR);
    }

    private void o1() {
        int i2 = (int) (this.f14579q0 * 0.15d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, (int) (i2 * 0.45d));
        layoutParams.gravity = 53;
        layoutParams.topMargin = vo.a(this.f14539U, 20.0f);
        layoutParams.rightMargin = vo.a(this.f14539U, 20.0f);
        ViewGroup viewGroup = this.f14547Y;
        if (viewGroup != null) {
            viewGroup.addView(this.f14551a0, layoutParams);
        }
        View view = this.f14551a0;
        if (view != null) {
            this.f14582t0 = 1;
            this.f14583u0 = 1;
            ((SkipView) view).setData(1, 0);
            ((SkipView) this.f14551a0).setText(String.format("跳过 %d", Integer.valueOf(this.f14558d1)));
            this.f14551a0.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1() {
        float pivotX;
        float pivotY;
        int height;
        try {
            View view = this.f14551a0;
            if (view == null) {
                return;
            }
            view.getLocationOnScreen(new int[2]);
            if (this.f14578p0 != null) {
                float f2 = this.f14579q0;
                float height2 = this.f14547Y.getHeight();
                if (height2 == 0.0f) {
                    height2 = this.f14580r0 - vo.a(this.f14539U, 100.0f);
                }
                int width = (int) (f2 * this.f14578p0.getWidth() * 0.01d);
                int height3 = (int) (width * this.f14578p0.getHeight() * 0.01d);
                ViewGroup.LayoutParams layoutParams = this.f14576n0.getLayoutParams();
                layoutParams.width = width;
                layoutParams.height = height3;
                this.f14576n0.setLayoutParams(layoutParams);
                pivotX = (f2 * ((float) (this.f14578p0.getCenterX() * 0.01d))) - (width / 2);
                pivotY = height2 * ((float) (this.f14578p0.getCenterY() * 0.01d));
                height = height3 / 2;
            } else {
                pivotX = (r2[0] + this.f14551a0.getPivotX()) - (this.f14576n0.getWidth() / 2);
                pivotY = r2[1] + this.f14551a0.getPivotY();
                height = this.f14576n0.getHeight() / 2;
            }
            this.f14576n0.setX(pivotX);
            this.f14576n0.setY(pivotY - height);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1() {
        fj fjVar = this.f14545X;
        if (fjVar == null || this.f14547Y == null || this.f14549Z == null) {
            return;
        }
        try {
            nj njVarO = fjVar.o();
            if (njVarO != null && njVarO.f() > 0) {
                this.f14574l1 = new oj();
                this.f14574l1.a(njVarO.h() == 0 ? this.f14547Y : this.f14549Z, this.f14549Z.getWidth(), this.f14549Z.getHeight(), njVarO, new f());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void r1() {
        if (this.f14559e0) {
            m0();
        }
        if (this.f14561f0) {
            o0();
        }
        if (this.f14563g0) {
            n0();
        }
        if (this.f14565h0) {
            p0();
        }
        this.f14571k0 = this.f14569j0 - this.f14573l0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        List<d5> listH;
        ViewGroup viewGroup;
        try {
            fj fjVar = this.f14545X;
            if (fjVar != null && (listH = fjVar.h()) != null && !listH.isEmpty() && (viewGroup = this.f14549Z) != null) {
                float width = viewGroup.getWidth();
                float height = this.f14549Z.getHeight();
                if (width == 0.0f) {
                    width = this.f14579q0;
                }
                float f2 = width;
                if (height == 0.0f) {
                    height = this.f14580r0;
                }
                float f3 = height;
                for (d5 d5Var : listH) {
                    if (d5Var != null) {
                        fl flVarC = d5Var.c();
                        String strE = flVarC.e();
                        String strC = flVarC.c();
                        String strA = flVarC.a();
                        String strB = flVarC.b();
                        int i2 = (TextUtils.isEmpty(strE) || strE.equals("0")) ? (int) f2 : strE.endsWith("%") ? (((int) f2) * Integer.parseInt(strE.substring(0, strE.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(strE));
                        int i3 = (TextUtils.isEmpty(strC) || strC.equals("0")) ? (int) f3 : strC.endsWith("%") ? (((int) f3) * Integer.parseInt(strC.substring(0, strC.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(strC));
                        int i4 = (TextUtils.isEmpty(strA) || strA.equals("0")) ? (int) f2 : strA.endsWith("%") ? (((int) f2) * Integer.parseInt(strA.substring(0, strA.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(strA));
                        int i5 = (TextUtils.isEmpty(strB) || strB.equals("0")) ? (int) f3 : strB.endsWith("%") ? (((int) f3) * Integer.parseInt(strB.substring(0, strB.indexOf("%")))) / 100 : vo.a(this.f14539U, Integer.parseInt(strB));
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3);
                        int i6 = i5 - (i3 / 2);
                        int i7 = i4 - (i2 / 2);
                        if (i6 < 0) {
                            i6 = 0;
                        }
                        if (i7 < 0) {
                            i7 = 0;
                        }
                        layoutParams.topMargin = i6;
                        layoutParams.leftMargin = i7;
                        ImageView imageView = new ImageView(this.f14539U);
                        imageView.setVisibility(0);
                        imageView.setLayoutParams(layoutParams);
                        String strA2 = d5Var.a();
                        if (!TextUtils.isEmpty(strA2) && strA2.startsWith("#")) {
                            imageView.setBackgroundColor(Color.parseColor(strA2));
                        }
                        String strB2 = d5Var.b();
                        if (!TextUtils.isEmpty(strB2) && strB2.contains("http")) {
                            a4.a(this.f14539U).b(strB2).a(imageView);
                        }
                        float[] fArr = new float[1];
                        float[] fArr2 = new float[1];
                        h hVar = new h(fArr, imageView, fArr2, f2, f3);
                        float f4 = f3;
                        float f5 = f2;
                        imageView.setOnClickListener(hVar);
                        imageView.setOnTouchListener(new i(fArr, fArr2, new float[1], new float[1]));
                        this.f14549Z.addView(imageView, layoutParams);
                        f2 = f5;
                        f3 = f4;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        Handler handler;
        try {
            int iK = k();
            if (iK > 0 && (handler = this.f13602L) != null) {
                handler.postDelayed(new j(), iK);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        View viewG1 = g1();
        if (this.f14576n0 != null) {
            this.f14547Y.addView(this.f14576n0, new FrameLayout.LayoutParams(-2, -2));
        }
        this.f14545X.a(viewG1);
        R0();
        if (this.f14575m0) {
            r1();
        }
    }

    private void Q0() {
        wn wnVar;
        try {
            if (this.f13595E != null && (wnVar = this.f14529K0) != null) {
                if (this.f14588z0 == null) {
                    wnVar.a(1.9d, 1.5d);
                }
                if (this.f13597G != 1) {
                    return;
                }
                double dB = this.f13595E.b();
                double dA = this.f13595E.a();
                double dI = this.f14529K0.i();
                double dJ = this.f14529K0.j();
                if (dA > 0.0d && dI > 0.0d && dI < dA) {
                    this.f13597G = 2;
                } else {
                    if (dB <= 0.0d || dJ <= 0.0d || dJ >= dB) {
                        return;
                    }
                    this.f13597G = 2;
                }
            }
        } catch (Exception unused) {
        }
    }

    private void R0() {
        fl flVarJ;
        if (!this.f14575m0) {
            View view = this.f14551a0;
            if (view != null) {
                view.setVisibility(0);
                this.f14551a0.setAlpha(1.0f);
                return;
            }
            return;
        }
        if (this.f14577o0 == null || this.f14581s0 == null) {
            o1();
            return;
        }
        float f2 = this.f14579q0;
        float height = this.f14547Y.getHeight();
        if (height == 0.0f) {
            height = this.f14580r0 - vo.a(this.f14539U, 100.0f);
        }
        int width = (int) (f2 * this.f14577o0.getWidth() * 0.01d);
        if (this.f14577o0.getHeight() < 12.0d) {
            o1();
            return;
        }
        int height2 = (int) (width * this.f14577o0.getHeight() * 0.01d);
        int paddingHeight = (int) (height2 * this.f14581s0.getPaddingHeight() * 0.01d);
        if (paddingHeight < 0) {
            paddingHeight = 0;
        }
        ((SkipView) this.f14551a0).setData(this.f14583u0, paddingHeight);
        e(this.f14558d1);
        this.f14547Y.addView(this.f14551a0, new FrameLayout.LayoutParams(width, height2));
        float centerX = (((float) (this.f14577o0.getCenterX() * 0.01d)) * f2) - (width / 2);
        float centerY = (((float) (this.f14577o0.getCenterY() * 0.01d)) * height) - (height2 / 2);
        try {
            fj fjVar = this.f14545X;
            if (fjVar != null && (flVarJ = fjVar.j()) != null) {
                String strA = flVarJ.a();
                String strD = flVarJ.d();
                if (!TextUtils.isEmpty(strA)) {
                    centerX = strA.endsWith("%") ? (f2 * Integer.parseInt(strA.substring(0, strA.indexOf("%")))) / 100.0f : Integer.parseInt(strA);
                }
                if (!TextUtils.isEmpty(strD)) {
                    centerY = strD.endsWith("%") ? ((height * Integer.parseInt(strD.substring(0, strD.indexOf("%")))) / 100.0f) + (height2 / 2) : Integer.parseInt(strD);
                }
            }
        } catch (Exception unused) {
        }
        this.f14551a0.setX(centerX);
        this.f14551a0.setY(centerY);
        View view2 = this.f14551a0;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void S0() {
        try {
            this.f14562f1 = true;
            fj fjVar = this.f14545X;
            if (fjVar != null) {
                fjVar.x();
            }
            oj ojVar = this.f14574l1;
            if (ojVar != null) {
                ojVar.c();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        try {
            oj ojVar = this.f14574l1;
            if (ojVar != null) {
                ojVar.b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void U0() {
        ViewGroup viewGroup;
        boolean z2;
        fj fjVar = this.f14545X;
        if (fjVar == null || !fjVar.t() || (viewGroup = this.f14547Y) == null) {
            B();
            return;
        }
        viewGroup.removeAllViews();
        this.f14547Y.addView(this.f14549Z);
        AdSpacesBean.BuyerBean buyerBean = this.f13615e;
        boolean z3 = false;
        if (buyerBean != null) {
            boolean z4 = buyerBean.getIsImageSpeed() == 1;
            z2 = this.f13615e.getIsHideInteraction() == 1;
            z3 = z4;
        } else {
            z2 = false;
        }
        if (!z3) {
            l1();
            return;
        }
        this.f14545X.a(new l(z2));
        if (z2) {
            return;
        }
        l1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void V0() throws Throwable {
        try {
            try {
                if (this.f14562f1) {
                    return;
                }
                this.f14562f1 = true;
                this.f14527I0 = "regionalClick";
                this.f13612b.setClickType("regionalClick");
                I0();
                mh.a("BeiZis", "enter onClick");
                double width = this.f14549Z.getWidth();
                int[] iArr = {((int) (0.1d * width)) / 2, (int) (this.f14549Z.getHeight() * 0.8d)};
                int[] iArrB = rl.b(((int) (width * 0.9d)) / 2, vo.a(this.f14539U, 65.0f) / 2);
                try {
                    a(String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 0);
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule = this.f13615e.getEulerAngleRule();
            this.f14535Q0 = eulerAngleRule;
            if (eulerAngleRule == null) {
                return;
            }
            AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBeanA = a(eulerAngleRule.getOrderData(), this.f14545X.c());
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule2 = (orderDataEulerAngleViewBeanA == null || orderDataEulerAngleViewBeanA.getEulerAngleRule() == null) ? null : orderDataEulerAngleViewBeanA.getEulerAngleRule();
            if (eulerAngleRule2 != null) {
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setEulerAngleUuid(eulerAngleRule2.getEulerAngleUuid());
                    I0();
                }
            } else {
                EventBean eventBean2 = this.f13612b;
                if (eventBean2 != null) {
                    eventBean2.setEulerAngleUuid(this.f14535Q0.getEulerAngleUuid());
                    I0();
                }
            }
            if (this.f14536R0 == null) {
                this.f14536R0 = new t7(this.f14539U, this.f13619i, this.f14535Q0, eulerAngleRule2);
            }
            this.f14536R0.a(this.f14540U0);
            this.f14536R0.a(this.f14547Y, vo.b(this.f14539U, this.f14549Z.getWidth()), vo.b(this.f14539U, this.f14549Z.getHeight()));
            this.f14536R0.a(new c());
            this.f14536R0.e();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void X0() throws NumberFormatException {
        if (this.f14523E0 == null) {
            return;
        }
        kn knVar = new kn(this.f14539U);
        this.f14531M0 = knVar;
        if (this.f14572k1) {
            knVar.a(this.f14525G0);
        } else {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f14524F0;
            if (scrollClickBean != null) {
                knVar.a(scrollClickBean);
            } else {
                knVar.a(this.f14523E0);
            }
        }
        this.f14531M0.a(this.f14540U0);
        View viewA = this.f14531M0.a(vo.b(this.f14539U, this.f14549Z.getWidth()), vo.b(this.f14539U, this.f14549Z.getHeight()), this.f14523E0.getPosition());
        if (viewA != null) {
            ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                layoutParams2.topMargin = marginLayoutParams.topMargin;
                try {
                    this.f14547Y.addView(viewA, layoutParams2);
                    this.f14531M0.a(this);
                    a(this.f14523E0.getScrollDirection(), this.f14523E0.getScrollDistance(), this);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        Object obj;
        EventBean eventBean;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f13615e.getShakeView();
        this.f14587y0 = shakeView;
        if (shakeView != null) {
            this.f14588z0 = shakeView.getCoolShakeView();
        }
        this.f14522D0 = this.f13615e.getRegionalClickView();
        this.f14526H0 = this.f13615e.getFullScreenClick();
        this.f14523E0 = this.f13615e.getScrollClick();
        this.f14537S0 = this.f13615e.getScreenConfigVo();
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f13615e;
            if (buyerBean != null && buyerBean.getIsImageSpeed() == 1 && (eventBean = this.f13612b) != null) {
                eventBean.setIsImageSpeed("1");
                I0();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        h0();
        L0();
        k kVar = new k();
        fj fjVar = new fj(this.f14539U, this.f14549Z, null, this.f13619i);
        this.f14545X = fjVar;
        fjVar.a((int) this.f14543W);
        this.f14545X.a(this.f13615e);
        try {
            this.f14545X.a(this.f13612b.m44clone());
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f14545X.a(10, 20, 10, 10);
        this.f14545X.b(true);
        this.f14545X.a(kVar);
        this.f14545X.a(vo.a(this.f14539U, this.f14546X0), vo.a(this.f14539U, this.f14548Y0));
        if ("S2S".equals(l())) {
            this.f14545X.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f14545X.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            Map mapY = n3Var2.y();
            this.f14545X.c(mapY);
            if (mapY != null && mapY.containsKey("returnInteraction") && (obj = mapY.get("returnInteraction")) != null && (obj instanceof Boolean)) {
                this.f14560e1 = ((Boolean) obj).booleanValue();
            }
            this.f14545X.d(this.f13614d.v());
        }
        this.f14545X.w();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x007d, code lost:
    
        r7.f13600J = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r4.getRate()));
     */
    @Override // com.beizi.fusion.e2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B0() {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.j4.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
        x();
        try {
            U0();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        fj fjVar = this.f14545X;
        if (fjVar == null) {
            return false;
        }
        return fjVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void T() {
        BZVideoView bZVideoViewY;
        try {
            fj fjVar = this.f14545X;
            if (fjVar == null || (bZVideoViewY = fjVar.y()) == null) {
                return;
            }
            bZVideoViewY.onViewPause(true);
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void U() {
        BZVideoView bZVideoViewY;
        try {
            fj fjVar = this.f14545X;
            if (fjVar == null || (bZVideoViewY = fjVar.y()) == null) {
                return;
            }
            bZVideoViewY.onViewResume(true);
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        super.g();
        fj fjVar = this.f14545X;
        if (fjVar != null) {
            fjVar.a();
            this.f14545X = null;
        }
    }

    @Override // com.beizi.fusion.e2
    public c2 h() {
        return this.f13620j;
    }

    @Override // com.beizi.fusion.e2
    public AdSpacesBean.BuyerBean m() {
        return this.f13615e;
    }

    @Override // com.beizi.fusion.e2
    public String n() {
        fj fjVar = this.f14545X;
        if (fjVar == null) {
            return null;
        }
        return fjVar.d();
    }

    @Override // com.beizi.fusion.e2
    public Map o() {
        try {
            if (!this.f14560e1) {
                if (!this.f14544W0) {
                    return null;
                }
                if (this.f14542V0) {
                    wn wnVar = this.f14529K0;
                    if (wnVar == null) {
                        return null;
                    }
                    return wnVar.d();
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14587y0;
                if (shakeViewBean == null || shakeViewBean.getSensorParam() == 0) {
                    return null;
                }
                HashMap map = new HashMap();
                map.put("actionType", 0);
                return map;
            }
            if (!i1()) {
                HashMap map2 = new HashMap();
                map2.put("actionType", 0);
                return map2;
            }
            fj fjVar = this.f14545X;
            if (fjVar == null) {
                return null;
            }
            Map mapK = fjVar.k();
            if (mapK == null) {
                mapK = new HashMap();
                mapK.put("maxAcc", 15);
                mapK.put("angle", 35);
                mapK.put("duration", 3000);
                mapK.put("direction", "x或y或z");
            }
            mapK.put("actionType", 1);
            return mapK;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        fj fjVar = this.f14545X;
        if (fjVar == null) {
            return null;
        }
        return fjVar.l();
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        fj fjVar = this.f14545X;
        if (fjVar == null) {
            return null;
        }
        return fjVar.q();
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f14545X == null) {
            return;
        }
        G0();
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean f(List list, String str) {
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

    private boolean c(long j2) {
        try {
            return System.currentTimeMillis() - vo.a(this.f14539U).longValue() < j2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataRollViewBean d(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataRollViewBean orderDataRollViewBean = (AdSpacesBean.BuyerBean.OrderDataRollViewBean) it.next();
                List<String> orderList = orderDataRollViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRollViewBean;
                }
            }
        }
        return null;
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean e(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBean = (AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean) it.next();
                List<String> orderList = orderDataScrollViewOrderBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataScrollViewOrderBean;
                }
            }
        }
        return null;
    }

    public class b implements mm.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14590a;

        public b(int i2) {
            this.f14590a = i2;
        }

        @Override // com.beizi.fusion.mm.e
        public void a() {
            if (j4.this.f14520B0 && j4.this.f14533O0 != null) {
                go.b(j4.this.f14539U, j4.this.f14519A0, Long.valueOf(System.currentTimeMillis()));
            }
            j4.this.f14527I0 = "roll";
            j4.this.f13612b.setClickType("roll");
            j4.this.I0();
            mh.a("BeiZis", "enter onRollHappened  ");
            j4.this.a("", "", "", "", "", "", "", "", 5);
        }

        @Override // com.beizi.fusion.mm.e
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            if (this.f14590a == 1) {
                j4.this.f14527I0 = "regionalClick";
                j4.this.f13612b.setClickType("regionalClick");
                j4.this.I0();
                mh.a("BeiZis", "enter onClickHappened  ");
                j4.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
                j4.this.f14534P0.g();
            }
        }
    }

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = shakeViewBean != null ? shakeViewBean : this.f14587y0;
        int regulatoryAngle = shakeViewBean2.getRegulatoryAngle();
        wn wnVar = this.f14529K0;
        if (wnVar != null) {
            wnVar.g(regulatoryAngle);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f14529K0.a(g5Var.b());
            }
        }
        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f14588z0;
        if (coolShakeViewBean == null) {
            if (a(shakeViewBean)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean2.getAliaseShakeView();
                if (aliaseShakeView != null) {
                    this.f14529K0.a(aliaseShakeView);
                    new Handler().postDelayed(new n(shakeViewBean2), rl.b(aliaseShakeView.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f14520B0 = true;
            this.f14529K0.a(shakeViewBean2);
            return;
        }
        if (b(coolShakeViewBean.getCoolTime())) {
            this.f14521C0 = this.f14588z0.getFeedback();
            this.f14529K0.a(this.f14588z0);
            return;
        }
        if (c(this.f14588z0.getUserProtectTime())) {
            this.f14521C0 = this.f14588z0.getFeedback();
            this.f14529K0.a(this.f14588z0);
        } else {
            if (a(shakeViewBean)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean2.getAliaseShakeView();
                if (aliaseShakeView2 != null) {
                    this.f14529K0.a(aliaseShakeView2);
                    new Handler().postDelayed(new o(shakeViewBean2), rl.b(aliaseShakeView2.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f14520B0 = true;
            this.f14529K0.a(shakeViewBean2);
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean c(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBean = (AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean) it.next();
                List<String> orderList = orderDataRegionalClickViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRegionalClickViewBean;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i2) {
        if (this.f14582t0 == 1) {
            String strValueOf = String.valueOf(i2);
            String str = this.f14584v0 + " ";
            String str2 = str + strValueOf;
            SpannableString spannableString = new SpannableString(str2);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(this.f14585w0)), 0, str.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(this.f14586x0)), str2.indexOf(strValueOf), str2.length(), 33);
            ((SkipView) this.f14551a0).setText(spannableString);
            return;
        }
        SpannableString spannableString2 = new SpannableString(this.f14584v0);
        spannableString2.setSpan(new ForegroundColorSpan(Color.parseColor(this.f14585w0)), 0, this.f14584v0.length(), 33);
        ((SkipView) this.f14551a0).setText(spannableString2);
    }

    @Override // com.beizi.fusion.e2
    public void d(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            fj fjVar = this.f14545X;
            if (fjVar == null) {
                return;
            }
            fjVar.b(map);
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

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            fj fjVar = this.f14545X;
            if (fjVar == null) {
                return;
            }
            fjVar.a(map);
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
    public void a(Message message) {
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            int i2 = message.what;
            if (this.f14550Z0) {
                i2 = 10180;
            }
            eventBean.setError(String.valueOf(i2));
            this.f13612b.setErrorCode(String.valueOf(i2));
            I0();
            f0();
        }
    }

    private boolean a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean != null) {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean.getAliaseShakeView();
            if (aliaseShakeView == null || aliaseShakeView.getPassivationTime() <= 0) {
                return false;
            }
            return aliaseShakeView.getShakeCount() > 0 || aliaseShakeView.getRotatCount() > 0;
        }
        AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = this.f14587y0.getAliaseShakeView();
        if (this.f14587y0.getAliaseShakeView() == null || aliaseShakeView2.getPassivationTime() <= 0) {
            return false;
        }
        return aliaseShakeView2.getShakeCount() > 0 || aliaseShakeView2.getRotatCount() > 0;
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, View view) {
        if (this.f14521C0 == -1) {
            this.f14521C0 = this.f14587y0.getFeedback();
            if (shakeViewBean != null) {
                this.f14521C0 = shakeViewBean.getFeedback();
            }
        }
        if (this.f14521C0 == 0 || view == null || this.f14529K0 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ShakeArcView shakeArcView = new ShakeArcView(this.f14539U);
            shakeArcView.setLineRadius(5);
            int i2 = (int) (r9.width * 0.5d);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (((r9.width - i2) - 12) / 2);
            layoutParams2.topMargin = (int) (r9.topMargin + (r9.height * 0.08d));
            this.f14547Y.addView(shakeArcView, layoutParams2);
            this.f14529K0.a(shakeArcView, this.f14521C0);
        }
    }

    private boolean b(long j2) {
        long jLongValue = ((Long) go.a(this.f14539U, this.f14519A0, (Object) 0L)).longValue();
        return jLongValue != 0 && System.currentTimeMillis() - jLongValue < j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean b(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBean = (AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean) it.next();
                List<String> orderList = orderDataFullScreenClickBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataFullScreenClickBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.vl.c
    public void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f14527I0 = "regionalClick";
        this.f13612b.setClickType("regionalClick");
        I0();
        mh.a("BeiZis", "enter onRegionClickByPosition ");
        a(str, str2, str3, str4, str5, str6, str7, str8, 0);
    }

    private void a(String str, int i2, kn.d dVar) {
        this.f14545X.b(new p(vo.a(this.f14539U, i2), str, dVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(kn.d dVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        try {
            if (!this.f14572k1) {
                go.b(this.f14539U, this.f14519A0, Long.valueOf(System.currentTimeMillis()));
            }
            if (dVar != null) {
                dVar.a(str, str2, str3, str4, str5, str6, str7, str8);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.kn.d
    public void b() {
        this.f14527I0 = "scroll";
        this.f13612b.setClickType("scroll");
        I0();
        mh.a("BeiZis", "enter onScrollDistanceMeet ");
        S0();
    }

    private AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBean = (AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean) it.next();
                List<String> orderList = orderDataEulerAngleViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataEulerAngleViewBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.wn.c
    public void a() {
        if (this.f14520B0 && this.f14588z0 != null) {
            go.b(this.f14539U, this.f14519A0, Long.valueOf(System.currentTimeMillis()));
        }
        this.f14527I0 = "shake";
        this.f13612b.setClickType("shake");
        I0();
        mh.a("BeiZis", "enter onShakeHappened  ");
        Q0();
        a("", "", "", "", "", "", "", "", 2);
        C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2) {
        try {
            this.f14562f1 = true;
            fj fjVar = this.f14545X;
            if (fjVar != null) {
                fjVar.a(str, str2, str3, str4, str5, str6, str7, str8, i2, this.f13597G);
            }
            oj ojVar = this.f14574l1;
            if (ojVar != null) {
                ojVar.c();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.kn.d
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f14527I0 = "scroll";
        this.f13612b.setClickType("scroll");
        I0();
        mh.a("BeiZis", "enter onScrollDistanceMeetByPosition ");
        a(str, str2, str3, str4, str5, str6, str7, str8, 1);
    }

    private void a(AdSpacesBean.BuyerBean.RollViewBean rollViewBean) {
        AdSpacesBean.BuyerBean.CoolRollViewBean coolRollViewBean = this.f14533O0;
        if (coolRollViewBean == null) {
            this.f14520B0 = true;
            this.f14534P0.a(rollViewBean);
        } else if (b(coolRollViewBean.getCoolTime())) {
            this.f14534P0.a(this.f14533O0);
        } else if (c(this.f14533O0.getUserProtectTime())) {
            this.f14534P0.a(this.f14533O0);
        } else {
            this.f14520B0 = true;
            this.f14534P0.a(rollViewBean);
        }
    }
}
