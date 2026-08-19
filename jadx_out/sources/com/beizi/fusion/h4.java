package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.g7;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rf;
import com.beizi.fusion.ui;
import com.beizi.fusion.widget.BZVideoView;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.work.splash.SplashContainer;
import com.beizi.fusion.x5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class h4 extends e2 implements b2 {

    /* renamed from: A0, reason: collision with root package name */
    private long f14142A0;

    /* renamed from: B0, reason: collision with root package name */
    private int f14143B0;

    /* renamed from: C0, reason: collision with root package name */
    private int f14144C0;

    /* renamed from: D0, reason: collision with root package name */
    private FrameLayout f14145D0;

    /* renamed from: E0, reason: collision with root package name */
    private boolean f14146E0;

    /* renamed from: G0, reason: collision with root package name */
    private long f14148G0;

    /* renamed from: H0, reason: collision with root package name */
    private String f14149H0;

    /* renamed from: I0, reason: collision with root package name */
    private boolean f14150I0;

    /* renamed from: J0, reason: collision with root package name */
    private boolean f14151J0;

    /* renamed from: L0, reason: collision with root package name */
    private boolean f14153L0;

    /* renamed from: M0, reason: collision with root package name */
    private boolean f14154M0;

    /* renamed from: N0, reason: collision with root package name */
    private ViewGroup f14155N0;

    /* renamed from: O0, reason: collision with root package name */
    private FrameLayout f14156O0;

    /* renamed from: P0, reason: collision with root package name */
    private long f14157P0;

    /* renamed from: Q0, reason: collision with root package name */
    private AdSpacesBean.ComplainBean f14158Q0;

    /* renamed from: R0, reason: collision with root package name */
    private boolean f14159R0;

    /* renamed from: S0, reason: collision with root package name */
    private long f14160S0;

    /* renamed from: U, reason: collision with root package name */
    private Context f14162U;

    /* renamed from: V, reason: collision with root package name */
    private String f14164V;

    /* renamed from: V0, reason: collision with root package name */
    private BZVideoView f14165V0;

    /* renamed from: W, reason: collision with root package name */
    private long f14166W;

    /* renamed from: W0, reason: collision with root package name */
    private boolean f14167W0;

    /* renamed from: X, reason: collision with root package name */
    private long f14168X;

    /* renamed from: X0, reason: collision with root package name */
    private boolean f14169X0;

    /* renamed from: Y, reason: collision with root package name */
    private float f14170Y;

    /* renamed from: Y0, reason: collision with root package name */
    private boolean f14171Y0;

    /* renamed from: Z, reason: collision with root package name */
    private float f14172Z;

    /* renamed from: Z0, reason: collision with root package name */
    private boolean f14173Z0;

    /* renamed from: a0, reason: collision with root package name */
    private ji f14174a0;

    /* renamed from: a1, reason: collision with root package name */
    private boolean f14175a1;

    /* renamed from: b0, reason: collision with root package name */
    private ViewGroup f14176b0;

    /* renamed from: c0, reason: collision with root package name */
    private View f14177c0;

    /* renamed from: d0, reason: collision with root package name */
    private List f14178d0;

    /* renamed from: e0, reason: collision with root package name */
    private AdSpacesBean.RenderViewBean f14179e0;

    /* renamed from: f0, reason: collision with root package name */
    private List f14180f0;

    /* renamed from: g0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f14181g0;

    /* renamed from: h0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f14182h0;

    /* renamed from: i0, reason: collision with root package name */
    private ui f14183i0;

    /* renamed from: l0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.DislikeConfigBean f14186l0;

    /* renamed from: m0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.DislikeConfigBean f14187m0;

    /* renamed from: s0, reason: collision with root package name */
    private pi f14193s0;

    /* renamed from: u0, reason: collision with root package name */
    private Boolean f14195u0;

    /* renamed from: v0, reason: collision with root package name */
    private long f14196v0;

    /* renamed from: w0, reason: collision with root package name */
    private int f14197w0;

    /* renamed from: x0, reason: collision with root package name */
    private int f14198x0;

    /* renamed from: y0, reason: collision with root package name */
    private boolean f14199y0;

    /* renamed from: z0, reason: collision with root package name */
    private boolean f14200z0;

    /* renamed from: j0, reason: collision with root package name */
    private String f14184j0 = null;

    /* renamed from: k0, reason: collision with root package name */
    private boolean f14185k0 = false;

    /* renamed from: n0, reason: collision with root package name */
    private float f14188n0 = 0.0f;

    /* renamed from: o0, reason: collision with root package name */
    private float f14189o0 = 0.0f;

    /* renamed from: p0, reason: collision with root package name */
    private float f14190p0 = 0.0f;

    /* renamed from: q0, reason: collision with root package name */
    private float f14191q0 = 0.0f;

    /* renamed from: r0, reason: collision with root package name */
    private String f14192r0 = null;

    /* renamed from: t0, reason: collision with root package name */
    private String f14194t0 = null;

    /* renamed from: F0, reason: collision with root package name */
    private String[] f14147F0 = new String[4];

    /* renamed from: K0, reason: collision with root package name */
    private String f14152K0 = "#00000000";

    /* renamed from: T0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f14161T0 = new d();

    /* renamed from: U0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f14163U0 = new f();

    public class a implements g7.c {
        public a() {
        }

        @Override // com.beizi.fusion.g7.c
        public void a() {
            try {
                if (h4.this.f13614d != null && h4.this.f13614d.z() != 2) {
                    h4.this.f13614d.a(h4.this.x(), h4.this.f14177c0);
                }
                h4.this.c0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements mi {
        public b() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            h4.this.U0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                h4.this.f14146E0 = true;
                h4.this.f14147F0[0] = motionEvent.getX() + "";
                h4.this.f14147F0[1] = motionEvent.getY() + "";
                h4.this.f14147F0[2] = motionEvent.getRawX() + "";
                h4.this.f14147F0[3] = motionEvent.getRawY() + "";
            }
            return false;
        }
    }

    public class d implements ViewTreeObserver.OnScrollChangedListener {
        public d() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (h4.this.f14146E0 && !h4.this.f14199y0 && !h4.this.f14150I0 && System.currentTimeMillis() - h4.this.f14148G0 >= h4.this.f14142A0 && System.currentTimeMillis() - h4.this.f14196v0 >= 50) {
                    h4.this.f14196v0 = System.currentTimeMillis();
                    if (bq.a(h4.this.f14177c0, 0.8d)) {
                        int[] iArr = new int[2];
                        if (h4.this.f14177c0 != null) {
                            h4.this.f14177c0.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && h4.this.f14144C0 == 0) {
                            h4.this.f14144C0 = iArr[1];
                        }
                        if (Math.abs(h4.this.f14144C0 - iArr[1]) < h4.this.f14143B0) {
                            return;
                        }
                        h4 h4Var = h4.this;
                        h4Var.a(h4Var.f14147F0, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class e implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f14205a;

        public e(float[] fArr) {
            this.f14205a = fArr;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f14205a[0] = motionEvent.getX();
                    this.f14205a[1] = motionEvent.getY();
                    this.f14205a[2] = motionEvent.getRawX();
                    this.f14205a[3] = motionEvent.getRawY();
                    if (h4.this.f14153L0) {
                        h4 h4Var = h4.this;
                        FrameLayout frameLayout = h4Var.f14156O0;
                        ViewGroup viewGroup = h4.this.f14176b0;
                        float[] fArr = this.f14205a;
                        h4.this.a(h4Var.a(frameLayout, viewGroup, fArr[0], fArr[1], fArr[2], fArr[3]), 0);
                    }
                }
                if (motionEvent.getAction() == 1 && h4.this.f14154M0) {
                    h4 h4Var2 = h4.this;
                    FrameLayout frameLayout2 = h4Var2.f14156O0;
                    ViewGroup viewGroup2 = h4.this.f14176b0;
                    float[] fArr2 = this.f14205a;
                    h4.this.a(h4Var2.a(frameLayout2, viewGroup2, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!h4.this.f14153L0) {
                if (!h4.this.f14154M0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class f implements ViewTreeObserver.OnScrollChangedListener {
        public f() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (h4.this.f14176b0 != null && System.currentTimeMillis() - h4.this.f14157P0 >= 100) {
                    h4.this.f14157P0 = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    h4.this.f14176b0.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        h4.this.f14176b0.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (h4.this.f14156O0 == null || h4.this.f14155N0 == null) {
                            return;
                        }
                        h4.this.f14155N0.removeView(h4.this.f14156O0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        String[] f14208a = new String[4];

        public g() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ViewParent parent;
            try {
                if (motionEvent.getAction() == 0) {
                    if (h4.this.f14153L0 || h4.this.f14154M0) {
                        if (h4.this.f14176b0 != null && (parent = h4.this.f14176b0.getParent()) != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    this.f14208a[0] = motionEvent.getX() + "";
                    this.f14208a[1] = motionEvent.getY() + "";
                    this.f14208a[2] = motionEvent.getRawX() + "";
                    this.f14208a[3] = motionEvent.getRawY() + "";
                    if (h4.this.f14153L0) {
                        h4.this.a(this.f14208a);
                    }
                }
                if (motionEvent.getAction() == 1 && h4.this.f14154M0) {
                    h4.this.a(this.f14208a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!h4.this.f14153L0) {
                if (!h4.this.f14154M0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class h implements mi {
        public h() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            h4.this.U0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class i implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap f14211a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f14212b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ BitmapDrawable f14214a;

            public a(BitmapDrawable bitmapDrawable) {
                this.f14214a = bitmapDrawable;
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView;
                try {
                    BitmapDrawable bitmapDrawable = this.f14214a;
                    if (bitmapDrawable == null || (imageView = i.this.f14212b) == null) {
                        return;
                    }
                    imageView.setBackground(bitmapDrawable);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public i(Bitmap bitmap, ImageView imageView) {
            this.f14211a = bitmap;
            this.f14212b = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (h4.this.f14162U == null || this.f14211a == null) {
                    return;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(sf.a(h4.this.f14162U, this.f14211a, 20.0f));
                if (h4.this.f13602L != null) {
                    h4.this.f13602L.post(new a(bitmapDrawable));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (bq.a(h4.this.f14176b0) && !h4.this.f14199y0) {
                    h4.this.f13597G = 2;
                    if (h4.this.f14193s0 != null) {
                        h4.this.f14193s0.a(h4.this.f13597G);
                    }
                    h4.this.V0();
                    h4.this.C0();
                    if (h4.this.f14193s0 != null) {
                        h4.this.f14193s0.a(h4.this.f13597G);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class k implements ni {
        public k() {
        }

        @Override // com.beizi.fusion.ni
        public void a(pi piVar) {
            h4.this.f13620j = c2.ADLOAD;
            h4.this.f14193s0 = piVar;
            h4 h4Var = h4.this;
            h4Var.f14195u0 = Boolean.valueOf(h4Var.f14174a0.s());
            h4 h4Var2 = h4.this;
            h4Var2.f14159R0 = h4Var2.f14174a0.u();
            if (h4.this.f14174a0 != null) {
                h4 h4Var3 = h4.this;
                h4Var3.f13595E = h4Var3.f14174a0.i();
                if (h4.this.f13595E != null) {
                    h4 h4Var4 = h4.this;
                    h4Var4.f13596F = h4Var4.f13595E.c();
                    if (h4.this.f13596F != 0) {
                        h4 h4Var5 = h4.this;
                        h4Var5.f13597G = h4Var5.f13595E.f() + 1;
                    }
                }
                h4 h4Var6 = h4.this;
                h4Var6.f13598H = h4Var6.f14174a0.m();
            }
            if (h4.this.f14159R0) {
                h4 h4Var7 = h4.this;
                h4Var7.f14160S0 = h4Var7.f14174a0.f();
                h4.this.f13612b.setIsCacheAd("1");
                if (h4.this.f14160S0 > 0) {
                    h4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - h4.this.f14160S0));
                }
                h4.this.I0();
            }
            if (h4.this.f14174a0.q() != null) {
                try {
                    h4 h4Var8 = h4.this;
                    h4Var8.a(Double.parseDouble(h4Var8.f14174a0.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            h4.this.g0();
            if (piVar == null) {
                h4.this.a(-991);
            } else {
                h4.this.f(piVar);
            }
        }

        @Override // com.beizi.fusion.ni
        public void onAdFailed(int i2) {
            h4.this.a(String.valueOf(i2), i2);
        }
    }

    public class l implements BZVideoView.i {
        public l() {
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a(int i2, int i3) {
            h4.this.a(i2, i3);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void b() {
            if (h4.this.f14167W0) {
                return;
            }
            h4.this.f14167W0 = true;
            h4.this.b(0);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a() {
            if (h4.this.f14175a1) {
                return;
            }
            h4.this.f14175a1 = true;
            h4.this.b(100);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h4.this.f14174a0.a(h4.this.f14179e0.getOptimizeSize(), h4.this.f14165V0, h4.this.f14176b0, h4.this.f14179e0.getDirection());
        }
    }

    public class n implements mi {

        /* renamed from: a, reason: collision with root package name */
        boolean f14220a = false;

        public n() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            h4.this.U0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class o implements ri {
        public o() {
        }

        @Override // com.beizi.fusion.ri
        public void onAdShown() {
            h4.this.f14148G0 = System.currentTimeMillis();
            h4.this.f13620j = c2.ADSHOW;
            if (h4.this.f14159R0) {
                h4.this.f13612b.setIsCacheAd("1");
                if (h4.this.f14160S0 > 0) {
                    h4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - h4.this.f14160S0));
                }
                h4.this.I0();
            }
            if (h4.this.f13614d != null && h4.this.f13614d.z() != 2) {
                h4.this.f13614d.d(h4.this.x());
            }
            h4.this.j0();
            h4.this.e0();
            h4.this.M0();
            h4.this.N0();
            h4.this.R0();
            h4.this.O0();
        }
    }

    public class q implements x5.b {
        public q() {
        }

        @Override // com.beizi.fusion.x5.b
        public void a(String str) {
            try {
                go.b(h4.this.f14162U, h4.this.f14194t0, Long.valueOf(System.currentTimeMillis()));
                h4.this.f13612b.setComplain(str);
                h4.this.I0();
                h4.this.d0();
                h4.this.c1();
                if (h4.this.f13614d != null && h4.this.f13614d.z() != 2) {
                    h4.this.f13614d.a(h4.this.x(), h4.this.f14177c0);
                }
                h4.this.c0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class r implements ui.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14227a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f14228b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ pi f14229c;

        public class a implements mi {
            public a() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                h4.this.U0();
                h4.this.C0();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public r(int i2, int i3, pi piVar) {
            this.f14227a = i2;
            this.f14228b = i3;
            this.f14229c = piVar;
        }

        @Override // com.beizi.fusion.ui.b
        public void a() {
            try {
                if (bq.a(h4.this.f14177c0) && !h4.this.f14150I0) {
                    h4.this.f14199y0 = true;
                    h4.this.f14150I0 = true;
                    int[] iArr = new int[2];
                    h4.this.f14177c0.getLocationOnScreen(iArr);
                    int[] iArrB = rl.b(this.f14227a / 2, this.f14228b / 2);
                    if (this.f14229c != null && h4.this.f14177c0 != null) {
                        h4.this.S0();
                        this.f14229c.a(h4.this.f14177c0, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 2, new a());
                    }
                    if (!h4.this.f14185k0 || h4.this.f14182h0 == null) {
                        return;
                    }
                    h4.this.f14185k0 = false;
                    h4.this.f14183i0.b(h4.this.f14182h0);
                    go.b(h4.this.f14162U, h4.this.f14184j0, Long.valueOf(System.currentTimeMillis()));
                    tn.a().a(h4.this.f14184j0, System.currentTimeMillis());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class s implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f14232a;

        public s(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f14232a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            h4.this.f14183i0.a(this.f14232a);
        }
    }

    public class t implements View.OnTouchListener {
        public t() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return false;
            }
            h4.this.f14188n0 = motionEvent.getX();
            h4.this.f14189o0 = motionEvent.getY();
            h4.this.f14190p0 = motionEvent.getRawX();
            h4.this.f14191q0 = motionEvent.getRawY();
            return false;
        }
    }

    public class u implements View.OnClickListener {
        public u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!h4.this.X0()) {
                h4.this.e1();
                return;
            }
            h4.this.f14151J0 = false;
            h4.this.a(new String[]{String.valueOf(h4.this.f14188n0), String.valueOf(h4.this.f14189o0), String.valueOf(h4.this.f14190p0), String.valueOf(h4.this.f14191q0)}, 0);
        }
    }

    public h4(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, float f2, float f3) {
        this.f14162U = context;
        this.f14164V = str;
        this.f14166W = j2;
        this.f14168X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        this.f14170Y = f2;
        this.f14172Z = f3;
        this.f14176b0 = new SplashContainer(context);
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        try {
            if (this.f14200z0 && this.f14176b0 != null && this.f14162U != null) {
                this.f14145D0 = new FrameLayout(this.f14162U);
                int width = this.f14176b0.getWidth();
                int height = this.f14176b0.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.f14145D0.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.f14145D0.setBackgroundColor(Color.parseColor(this.f14152K0));
                this.f14176b0.addView(this.f14145D0);
                this.f14145D0.setOnTouchListener(new c());
                this.f14145D0.getViewTreeObserver().addOnScrollChangedListener(this.f14161T0);
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

    private void P0() {
        ViewGroup viewGroup = this.f14176b0;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setOnTouchListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        try {
            AdSpacesBean.ComplainBean complainBean = this.f14158Q0;
            if (complainBean != null && complainBean.getOpen() == 1) {
                x5 x5Var = new x5();
                x5Var.a(this.f14162U, this.f14176b0, "1");
                x5Var.a(new q());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.f14176b0 != null && this.f14162U != null && (buyerBean = this.f13615e) != null) {
                if ((this.f14153L0 || this.f14154M0) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && rl.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.f14176b0.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
                    this.f14155N0 = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iJ = vo.j(this.f14162U);
                    int iG = vo.g(this.f14162U);
                    int width2 = this.f14176b0.getWidth();
                    int height2 = this.f14176b0.getHeight();
                    int[] iArr = new int[2];
                    this.f14176b0.getLocationOnScreen(iArr);
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
                    this.f14156O0 = new FrameLayout(this.f14162U);
                    this.f14156O0.setLayoutParams(new FrameLayout.LayoutParams(iJ, i4));
                    int iA = a(horizontalSpace, iJ, width2, i2);
                    int iB = b(verticalSpace, i4, height2, i3);
                    int iA2 = vo.a(this.f14162U, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.f14156O0.setX(iA);
                    this.f14156O0.setY(iB);
                    this.f14156O0.setBackgroundColor(Color.parseColor(this.f14152K0));
                    this.f14155N0.addView(this.f14156O0);
                    this.f14156O0.setOnTouchListener(new e(new float[4]));
                    this.f14176b0.getViewTreeObserver().addOnScrollChangedListener(this.f14163U0);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0() {
        ui uiVar;
        try {
            if (this.f13595E != null && (uiVar = this.f14183i0) != null) {
                if (this.f14182h0 == null) {
                    uiVar.a(1.9d, 1.5d);
                }
                if (this.f13597G != 1) {
                    return;
                }
                double dB = this.f13595E.b();
                double dA = this.f13595E.a();
                double dC = this.f14183i0.c();
                double d2 = this.f14183i0.d();
                if (dA > 0.0d && dC > 0.0d && dC < dA) {
                    this.f13597G = 2;
                } else if (dB > 0.0d && d2 > 0.0d && d2 < dB) {
                    this.f13597G = 2;
                }
                pi piVar = this.f14193s0;
                if (piVar != null) {
                    piVar.a(this.f13597G);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfig = this.f13615e.getDislikeConfig();
        this.f14186l0 = dislikeConfig;
        if (dislikeConfig == null) {
            return;
        }
        String dislikeUuid = dislikeConfig.getDislikeUuid();
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBeanA = a(this.f14186l0.getOrderData(), this.f14174a0.c());
        if (dislikeConfigBeanA != null) {
            this.f14187m0 = dislikeConfigBeanA;
            dislikeUuid = dislikeConfigBeanA.getDislikeUuid();
        }
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            eventBean.setDislikeUuid(dislikeUuid);
            I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U0() {
        AdSpacesBean.BuyerBean buyerBean;
        this.f14199y0 = true;
        this.f14150I0 = false;
        this.f14151J0 = false;
        b1();
        if (this.f13599I && (buyerBean = this.f13615e) != null) {
            this.f13612b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
            I0();
        }
        a0();
        a(this.f14162U, this.f14176b0, this.f13598H);
        if (O()) {
            n3 n3Var = this.f13614d;
            if (n3Var != null && n3Var.z() != 2) {
                this.f13614d.b(x());
            }
            Z();
            J0();
            ji jiVar = this.f14174a0;
            if (jiVar != null) {
                jiVar.y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void V0() {
        try {
            if (!this.f14150I0 && !this.f14199y0) {
                double width = this.f14176b0.getWidth();
                int[] iArr = {((int) (0.1d * width)) / 2, (int) (this.f14176b0.getHeight() * 0.8d)};
                int[] iArrB = rl.b(((int) (width * 0.9d)) / 2, vo.a(this.f14162U, 65.0f) / 2);
                a(new String[]{String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1])}, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean W0() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.f14187m0;
        if (dislikeConfigBean != null) {
            return dislikeConfigBean.getIsHide() == 0;
        }
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.f14186l0;
        return dislikeConfigBean2 != null && dislikeConfigBean2.getIsHide() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean X0() {
        return this.f14151J0;
    }

    private boolean Y0() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14181g0;
        if (shakeViewBean == null) {
            return false;
        }
        return rl.a(shakeViewBean.getRenderRate());
    }

    private boolean Z0() {
        try {
            return System.currentTimeMillis() - vo.a(this.f14162U).longValue() < this.f14182h0.getUserProtectTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean a1() {
        try {
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.f14187m0;
            if (dislikeConfigBean != null) {
                return dislikeConfigBean.getIsShowDialog() == 1;
            }
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.f14186l0;
            return dislikeConfigBean2 != null && dislikeConfigBean2.getIsShowDialog() == 1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    private void b1() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        try {
            FrameLayout frameLayout3 = this.f14145D0;
            if (frameLayout3 != null && this.f14161T0 != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.f14161T0);
            }
            ViewGroup viewGroup = this.f14176b0;
            if (viewGroup != null && (frameLayout2 = this.f14145D0) != null) {
                viewGroup.removeView(frameLayout2);
                this.f14145D0 = null;
            }
            ViewGroup viewGroup2 = this.f14176b0;
            if (viewGroup2 != null && this.f14163U0 != null) {
                viewGroup2.getViewTreeObserver().removeOnScrollChangedListener(this.f14163U0);
            }
            ViewGroup viewGroup3 = this.f14155N0;
            if (viewGroup3 == null || (frameLayout = this.f14156O0) == null) {
                return;
            }
            viewGroup3.removeView(frameLayout);
            this.f14156O0 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1() {
        try {
            LinearLayout linearLayout = new LinearLayout(this.f14162U);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
            ImageView imageView = new ImageView(this.f14162U);
            imageView.setImageResource(R.drawable.beizi_icon_checkbox);
            imageView.setColorFilter(Color.parseColor("#000000"));
            linearLayout.addView(imageView);
            TextView textView = new TextView(this.f14162U);
            textView.setText("投诉成功，我们将重视您的反馈。");
            textView.setTextColor(Color.parseColor("#000000"));
            textView.setTextSize(2, 13.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 30, 0, 0);
            linearLayout.addView(textView, layoutParams);
            this.f14177c0.measure(0, 0);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.f14177c0.getMeasuredWidth(), this.f14177c0.getMeasuredHeight());
            layoutParams2.gravity = 17;
            this.f14176b0.addView(linearLayout, layoutParams2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d1() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.h4.d1():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1() {
        try {
            if (a1()) {
                g7.a aVar = new g7.a(this.f14162U);
                aVar.a(new a());
                aVar.a().show();
            } else {
                n3 n3Var = this.f13614d;
                if (n3Var != null && n3Var.z() != 2) {
                    this.f13614d.a(x(), this.f14177c0);
                }
                c0();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f13615e.getShakeView();
        this.f14181g0 = shakeView;
        if (shakeView != null) {
            this.f14182h0 = shakeView.getCoolShakeView();
        }
        this.f14184j0 = "cool_" + this.f13619i;
        this.f14192r0 = "dl_cool_" + this.f13619i;
        if (this.f14170Y <= 0.0f) {
            this.f14170Y = vo.i(this.f14162U);
        }
        if (this.f14172Z <= 0.0f) {
            this.f14172Z = 0.0f;
        }
        ji jiVar = new ji(this.f14162U, this.f13619i, 3, new k());
        this.f14174a0 = jiVar;
        jiVar.b(true);
        try {
            this.f14174a0.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f14174a0.a((int) this.f14166W);
        this.f14174a0.a(this.f13615e);
        if ("S2S".equals(l())) {
            this.f14174a0.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f14174a0.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f14174a0.c(n3Var2.y());
            this.f14174a0.d(this.f13614d.v());
        }
        this.f14174a0.w();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00af, code lost:
    
        r7.f13600J = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r4.getRate()));
     */
    @Override // com.beizi.fusion.e2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B0() {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.h4.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void D0() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f14183i0) == null) {
                return;
            }
            uiVar.g();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        ji jiVar = this.f14174a0;
        if (jiVar == null) {
            return false;
        }
        return jiVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void T() {
        try {
            BZVideoView bZVideoView = this.f14165V0;
            if (bZVideoView != null) {
                bZVideoView.onViewPause(true);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void U() {
        try {
            ui uiVar = this.f14183i0;
            if (uiVar != null) {
                uiVar.g();
            }
            BZVideoView bZVideoView = this.f14165V0;
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
            if (!q1.i().w() || (uiVar = this.f14183i0) == null) {
                return;
            }
            uiVar.a(false);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public AdSpacesBean.BuyerBean m() {
        return this.f13615e;
    }

    @Override // com.beizi.fusion.e2
    public String n() {
        ji jiVar = this.f14174a0;
        if (jiVar == null) {
            return null;
        }
        return jiVar.d();
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        ji jiVar = this.f14174a0;
        if (jiVar == null) {
            return null;
        }
        return jiVar.l();
    }

    @Override // com.beizi.fusion.e2
    public View r() {
        return this.f14177c0;
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        ji jiVar = this.f14174a0;
        if (jiVar == null) {
            return null;
        }
        return jiVar.q();
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f14174a0 == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public c2 h() {
        return this.f13620j;
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        pi piVar = this.f14193s0;
        if (piVar != null) {
            piVar.destroy();
        }
        ji jiVar = this.f14174a0;
        if (jiVar != null) {
            jiVar.a();
        }
        ui uiVar = this.f14183i0;
        if (uiVar != null) {
            uiVar.h();
        }
        b1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(pi piVar) {
        View viewA;
        if (piVar == null) {
            return;
        }
        try {
            if (piVar.p() == null || (viewA = si.a(this.f14162U, piVar)) == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.f14176b0.getLayoutParams().width * 2) / 3, -2);
            layoutParams.gravity = 83;
            this.f14176b0.addView(viewA, layoutParams);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(pi piVar) {
        if (piVar == null) {
            a(-991);
            return;
        }
        if (TextUtils.isEmpty(piVar.q())) {
            ArrayList arrayListJ = this.f14193s0.j();
            if (arrayListJ != null && arrayListJ.size() != 0) {
                c((String) arrayListJ.get(0));
            } else {
                a(-991);
                return;
            }
        } else {
            d1();
        }
        pi piVar2 = this.f14193s0;
        if (piVar2 != null) {
            piVar2.a(this.f13597G);
        }
        if (!this.f14153L0 && !this.f14154M0) {
            si.a(piVar, this.f14176b0, new n());
        } else {
            P0();
        }
        ji jiVar = this.f14174a0;
        if (jiVar != null) {
            jiVar.a(this.f14176b0, new o());
        }
    }

    private void c(pi piVar) {
        n3 n3Var = this.f13614d;
        if (n3Var == null) {
            return;
        }
        Map mapC = n3Var.C();
        x();
        mapC.toString();
        f();
        u5 u5Var = this.f13617g;
        if (u5Var == u5.SUCCESS) {
            if (this.f14177c0 != null) {
                this.f13614d.b(x(), this.f14177c0);
                return;
            } else {
                this.f13614d.a(10140);
                return;
            }
        }
        if (u5Var == u5.FAIL) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(pi piVar) {
        if (W()) {
            c(piVar);
        } else {
            A();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean b(List list, String str) {
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

    @Override // com.beizi.fusion.e2
    public void d(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            ji jiVar = this.f14174a0;
            if (jiVar == null) {
                return;
            }
            jiVar.b(map);
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

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            shakeViewBean = this.f14181g0;
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        int isUnidirection = shakeViewBean.getIsUnidirection();
        ui uiVar = this.f14183i0;
        if (uiVar != null) {
            uiVar.b(regulatoryAngle);
            this.f14183i0.d(isUnidirection);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f14183i0.a(g5Var.b());
            }
        }
        if (this.f14182h0 == null) {
            this.f14185k0 = true;
            this.f14183i0.a(shakeViewBean);
        } else if (a(shakeViewBean)) {
            this.f14183i0.b(this.f14182h0);
        } else if (Z0()) {
            this.f14183i0.b(this.f14182h0);
        } else {
            this.f14185k0 = true;
            this.f14183i0.a(shakeViewBean);
        }
    }

    private void c(String str) {
        ImageView imageView = new ImageView(this.f14162U);
        imageView.setVisibility(0);
        rf.a((Context) null).a(str, new p(imageView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(pi piVar) {
        try {
            LinearLayout linearLayout = new LinearLayout(this.f14162U);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this.f14162U, piVar.n());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this.f14162U, piVar.a());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            this.f14176b0.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = vo.a(this.f14162U, 12.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
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
            ji jiVar = this.f14174a0;
            if (jiVar == null) {
                return;
            }
            jiVar.a(map);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b(pi piVar) {
        ImageView imageView = new ImageView(this.f14162U);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(85, 85);
        imageView.setPadding(25, 15, 15, 25);
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(0);
        imageView.setImageResource(R.drawable.beizi_close);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(85, 85);
        layoutParams2.gravity = 5;
        this.f14176b0.addView(imageView, layoutParams2);
        imageView.setOnTouchListener(new t());
        imageView.setOnClickListener(new u());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(pi piVar, int i2, int i3, int i4) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!P() && !q1.i().v() && Y0()) {
                if (this.f14183i0 == null) {
                    this.f14183i0 = new ui(this.f14162U);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14181g0;
                if (shakeViewBean == null || this.f14183i0 == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f14181g0.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanB = b(this.f14181g0.getOrderData(), this.f14174a0.c());
                if (orderDataShakeViewBeanB == null || orderDataShakeViewBeanB.getShakeView() == null) {
                    shakeView = null;
                } else {
                    shakeView = orderDataShakeViewBeanB.getShakeView();
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
                this.f14183i0.a(this.f14195u0);
                View viewA = this.f14183i0.a(vo.b(this.f14162U, i2), vo.b(this.f14162U, i3), this.f14181g0.getPosition());
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        if (this.f14165V0 != null) {
                            layoutParams2.gravity = 17;
                        } else {
                            layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                            layoutParams2.topMargin = marginLayoutParams.topMargin;
                        }
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f14181g0;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.f14176b0.addView(viewA, layoutParams2);
                        }
                    }
                }
                b(shakeView);
                this.f14183i0.a(new r(i2, i3, piVar));
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f14182h0;
                if (coolShakeViewBean != null) {
                    this.f14183i0.a(coolShakeViewBean, this.f14184j0);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
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

    public class p implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f14223a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ji jiVar = h4.this.f14174a0;
                int optimizeSize = h4.this.f14179e0.getOptimizeSize();
                p pVar = p.this;
                jiVar.a(optimizeSize, pVar.f14223a, h4.this.f14176b0, h4.this.f14179e0.getDirection());
            }
        }

        public p(ImageView imageView) {
            this.f14223a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            Bitmap bitmap2;
            ViewGroup.LayoutParams layoutParams;
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                float f2 = (float) ((width * 1.0d) / height);
                int iA = vo.a(h4.this.f14162U, h4.this.f14170Y);
                int iA2 = h4.this.f14172Z > 0.0f ? vo.a(h4.this.f14162U, h4.this.f14172Z) : (int) (iA / f2);
                ImageView imageView = this.f14223a;
                if (imageView != null && (layoutParams = imageView.getLayoutParams()) != null) {
                    layoutParams.width = iA;
                    layoutParams.height = iA2;
                    this.f14223a.setLayoutParams(layoutParams);
                }
                ImageView imageView2 = this.f14223a;
                if (imageView2 != null) {
                    bitmap2 = bitmap;
                    h4.this.a(iA, iA2, f2, bitmap2, imageView2);
                    this.f14223a.setImageBitmap(bitmap2);
                } else {
                    bitmap2 = bitmap;
                }
                h4.this.f14197w0 = iA;
                h4.this.f14198x0 = iA2;
                if (h4.this.f14198x0 < 0) {
                    h4.this.f14198x0 = height;
                }
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iA, iA2);
                if (h4.this.f14176b0 != null) {
                    h4.this.f14176b0.removeAllViews();
                    h4.this.f14176b0.setLayoutParams(layoutParams2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("mNativeAd != null ? ");
                    sb.append(h4.this.f14174a0 != null);
                    sb.append(",renderViewBean != null ? ");
                    sb.append(h4.this.f14179e0 != null);
                    mh.a("BeiZis", sb.toString());
                    h4.this.f14176b0.addView(this.f14223a, layoutParams2);
                    h4 h4Var = h4.this;
                    h4Var.a(h4Var.f14193s0);
                    h4.this.Q0();
                    h4 h4Var2 = h4.this;
                    h4Var2.e(h4Var2.f14193s0);
                    h4 h4Var3 = h4.this;
                    h4Var3.a(h4Var3.f14193s0, iA, iA2, bitmap2.getHeight());
                    h4.this.T0();
                    if (h4.this.W0()) {
                        h4 h4Var4 = h4.this;
                        h4Var4.b(h4Var4.f14193s0);
                    }
                    h4 h4Var5 = h4.this;
                    h4Var5.f14177c0 = h4Var5.f14176b0;
                    if (h4.this.f14183i0 != null) {
                        h4.this.f14183i0.a(h4.this.f14177c0);
                    }
                }
                if (h4.this.f14174a0 != null && h4.this.f14179e0 != null) {
                    h4.this.f14174a0.a(h4.this.f14180f0);
                    h4.this.f14174a0.b(h4.this.f14179e0.getOptimizePercent());
                    mh.a("BeiZis", "percent = " + h4.this.f14179e0.getOptimizePercent());
                    h4.this.f14176b0.post(new a());
                }
                h4 h4Var6 = h4.this;
                h4Var6.d(h4Var6.f14193s0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            h4.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
        }
    }

    @Override // com.beizi.fusion.e2
    public void b(int i2) {
        ji jiVar = this.f14174a0;
        if (jiVar == null) {
            return;
        }
        jiVar.a(this.f14176b0, i2);
    }

    private boolean a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) go.a(this.f14162U, this.f14184j0, (Object) 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f14182h0.getCoolTime()) {
                new Handler().postDelayed(new s(shakeViewBean), this.f14182h0.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            tn.a().b(this.f14184j0);
        }
        return false;
    }

    private AdSpacesBean.BuyerBean.DislikeConfigBean a(List list, String str) {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislike;
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataDislikeConfigBean orderDataDislikeConfigBean = (AdSpacesBean.BuyerBean.OrderDataDislikeConfigBean) it.next();
                List<String> orderList = orderDataDislikeConfigBean.getOrderList();
                if (orderList != null && orderList.contains(str) && (dislike = orderDataDislikeConfigBean.getDislike()) != null) {
                    return dislike;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i2) {
        View view;
        try {
            b1();
            if (this.f14193s0 != null && this.f14177c0 != null && !this.f14150I0 && !this.f14199y0) {
                this.f14199y0 = true;
                this.f14150I0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f14149H0);
                    I0();
                }
                pi piVar = this.f14193s0;
                if (piVar == null || (view = this.f14177c0) == null) {
                    return;
                }
                piVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new b());
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
        View view;
        try {
            b1();
            if (this.f14193s0 != null && this.f14177c0 != null && !this.f14150I0) {
                this.f14199y0 = true;
                this.f14150I0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f14149H0);
                    I0();
                }
                pi piVar = this.f14193s0;
                if (piVar == null || (view = this.f14177c0) == null) {
                    return;
                }
                piVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new h());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, float f2, Bitmap bitmap, ImageView imageView) {
        try {
            float fAbs = Math.abs(((float) ((i2 * 1.0d) / i3)) - f2);
            if (fAbs > 0.15f) {
                x3.c().e().execute(new i(bitmap, imageView));
            } else if (imageView != null) {
                if (fAbs > 0.1d) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        double d2 = i3;
        double d3 = i2;
        if (d2 >= 0.25d * d3 && !this.f14169X0) {
            this.f14169X0 = true;
            b(25);
        }
        if (d2 >= 0.5d * d3 && !this.f14171Y0) {
            this.f14171Y0 = true;
            b(50);
        }
        if (d2 < d3 * 0.75d || this.f14173Z0) {
            return;
        }
        this.f14173Z0 = true;
        b(75);
    }
}
