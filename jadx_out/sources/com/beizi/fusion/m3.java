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
import android.widget.TextView;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.g7;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rf;
import com.beizi.fusion.ui;
import com.beizi.fusion.widget.BZVideoView;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.work.splash.SplashContainer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class m3 extends e2 implements b2 {

    /* renamed from: A0, reason: collision with root package name */
    protected int f14957A0;

    /* renamed from: B0, reason: collision with root package name */
    protected int f14958B0;

    /* renamed from: C0, reason: collision with root package name */
    private boolean f14959C0;

    /* renamed from: D0, reason: collision with root package name */
    private boolean f14960D0;

    /* renamed from: E0, reason: collision with root package name */
    private long f14961E0;

    /* renamed from: F0, reason: collision with root package name */
    private int f14962F0;

    /* renamed from: G0, reason: collision with root package name */
    private int f14963G0;

    /* renamed from: H0, reason: collision with root package name */
    private FrameLayout f14964H0;

    /* renamed from: I0, reason: collision with root package name */
    private boolean f14965I0;

    /* renamed from: K0, reason: collision with root package name */
    private long f14967K0;

    /* renamed from: L0, reason: collision with root package name */
    private String f14968L0;

    /* renamed from: M0, reason: collision with root package name */
    private boolean f14969M0;

    /* renamed from: N0, reason: collision with root package name */
    protected boolean f14970N0;

    /* renamed from: P0, reason: collision with root package name */
    private boolean f14972P0;

    /* renamed from: Q0, reason: collision with root package name */
    private boolean f14973Q0;

    /* renamed from: R0, reason: collision with root package name */
    private ViewGroup f14974R0;

    /* renamed from: S0, reason: collision with root package name */
    private FrameLayout f14975S0;

    /* renamed from: T0, reason: collision with root package name */
    private long f14976T0;

    /* renamed from: U, reason: collision with root package name */
    protected Context f14977U;

    /* renamed from: U0, reason: collision with root package name */
    protected BZVideoView f14978U0;

    /* renamed from: V, reason: collision with root package name */
    protected String f14979V;

    /* renamed from: V0, reason: collision with root package name */
    protected String f14980V0;

    /* renamed from: W, reason: collision with root package name */
    protected long f14981W;

    /* renamed from: X, reason: collision with root package name */
    protected long f14983X;

    /* renamed from: Y, reason: collision with root package name */
    protected float f14985Y;

    /* renamed from: Y0, reason: collision with root package name */
    protected boolean f14986Y0;

    /* renamed from: Z, reason: collision with root package name */
    protected float f14987Z;

    /* renamed from: Z0, reason: collision with root package name */
    private boolean f14988Z0;

    /* renamed from: a0, reason: collision with root package name */
    protected ViewGroup f14989a0;

    /* renamed from: a1, reason: collision with root package name */
    private boolean f14990a1;

    /* renamed from: b0, reason: collision with root package name */
    protected View f14991b0;

    /* renamed from: b1, reason: collision with root package name */
    private boolean f14992b1;

    /* renamed from: c0, reason: collision with root package name */
    protected List f14993c0;

    /* renamed from: c1, reason: collision with root package name */
    protected boolean f14994c1;

    /* renamed from: d0, reason: collision with root package name */
    protected AdSpacesBean.RenderViewBean f14995d0;

    /* renamed from: e0, reason: collision with root package name */
    protected List f14996e0;

    /* renamed from: f0, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.ShakeViewBean f14997f0;

    /* renamed from: g0, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.CoolShakeViewBean f14998g0;

    /* renamed from: h0, reason: collision with root package name */
    protected ui f14999h0;

    /* renamed from: k0, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.DislikeConfigBean f15002k0;

    /* renamed from: l0, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.DislikeConfigBean f15003l0;

    /* renamed from: r0, reason: collision with root package name */
    protected pi f15009r0;

    /* renamed from: s0, reason: collision with root package name */
    protected mp f15010s0;

    /* renamed from: t0, reason: collision with root package name */
    protected View f15011t0;

    /* renamed from: u0, reason: collision with root package name */
    protected AdSpacesBean.ComplainBean f15012u0;

    /* renamed from: w0, reason: collision with root package name */
    protected Boolean f15014w0;

    /* renamed from: x0, reason: collision with root package name */
    private boolean f15015x0;

    /* renamed from: y0, reason: collision with root package name */
    private long f15016y0;

    /* renamed from: z0, reason: collision with root package name */
    private long f15017z0;

    /* renamed from: i0, reason: collision with root package name */
    protected String f15000i0 = null;

    /* renamed from: j0, reason: collision with root package name */
    protected boolean f15001j0 = false;

    /* renamed from: m0, reason: collision with root package name */
    protected float f15004m0 = 0.0f;

    /* renamed from: n0, reason: collision with root package name */
    protected float f15005n0 = 0.0f;

    /* renamed from: o0, reason: collision with root package name */
    protected float f15006o0 = 0.0f;

    /* renamed from: p0, reason: collision with root package name */
    protected float f15007p0 = 0.0f;

    /* renamed from: q0, reason: collision with root package name */
    protected String f15008q0 = null;

    /* renamed from: v0, reason: collision with root package name */
    protected String f15013v0 = null;

    /* renamed from: J0, reason: collision with root package name */
    private String[] f14966J0 = new String[4];

    /* renamed from: O0, reason: collision with root package name */
    private String f14971O0 = "#00000000";

    /* renamed from: W0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f14982W0 = new b();

    /* renamed from: X0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f14984X0 = new d();

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                m3.this.f14965I0 = true;
                m3.this.f14966J0[0] = motionEvent.getX() + "";
                m3.this.f14966J0[1] = motionEvent.getY() + "";
                m3.this.f14966J0[2] = motionEvent.getRawX() + "";
                m3.this.f14966J0[3] = motionEvent.getRawY() + "";
            }
            return false;
        }
    }

    public class b implements ViewTreeObserver.OnScrollChangedListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (m3.this.f14965I0 && !m3.this.f14959C0 && !m3.this.f14969M0 && System.currentTimeMillis() - m3.this.f14967K0 >= m3.this.f14961E0 && System.currentTimeMillis() - m3.this.f15017z0 >= 50) {
                    m3.this.f15017z0 = System.currentTimeMillis();
                    if (bq.a(m3.this.f14991b0, 0.8d)) {
                        int[] iArr = new int[2];
                        View view = m3.this.f14991b0;
                        if (view != null) {
                            view.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && m3.this.f14963G0 == 0) {
                            m3.this.f14963G0 = iArr[1];
                        }
                        if (Math.abs(m3.this.f14963G0 - iArr[1]) < m3.this.f14962F0) {
                            return;
                        }
                        m3 m3Var = m3.this;
                        m3Var.a(m3Var.f14966J0, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f15020a;

        public c(float[] fArr) {
            this.f15020a = fArr;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f15020a[0] = motionEvent.getX();
                    this.f15020a[1] = motionEvent.getY();
                    this.f15020a[2] = motionEvent.getRawX();
                    this.f15020a[3] = motionEvent.getRawY();
                    if (m3.this.f14972P0) {
                        m3 m3Var = m3.this;
                        FrameLayout frameLayout = m3Var.f14975S0;
                        ViewGroup viewGroup = m3.this.f14989a0;
                        float[] fArr = this.f15020a;
                        m3.this.a(m3Var.a(frameLayout, viewGroup, fArr[0], fArr[1], fArr[2], fArr[3]), 0);
                    }
                }
                if (motionEvent.getAction() == 1 && m3.this.f14973Q0) {
                    m3 m3Var2 = m3.this;
                    FrameLayout frameLayout2 = m3Var2.f14975S0;
                    ViewGroup viewGroup2 = m3.this.f14989a0;
                    float[] fArr2 = this.f15020a;
                    m3.this.a(m3Var2.a(frameLayout2, viewGroup2, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!m3.this.f14972P0) {
                if (!m3.this.f14973Q0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class d implements ViewTreeObserver.OnScrollChangedListener {
        public d() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (m3.this.f14989a0 != null && System.currentTimeMillis() - m3.this.f14976T0 >= 50) {
                    m3.this.f14976T0 = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    m3.this.f14989a0.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        m3.this.f14989a0.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (m3.this.f14975S0 == null || m3.this.f14974R0 == null) {
                            return;
                        }
                        m3.this.f14974R0.removeView(m3.this.f14975S0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        String[] f15023a = new String[4];

        public e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ViewParent parent;
            try {
                if (motionEvent.getAction() == 0) {
                    if (m3.this.f14972P0 || m3.this.f14973Q0) {
                        ViewGroup viewGroup = m3.this.f14989a0;
                        if (viewGroup != null && (parent = viewGroup.getParent()) != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    this.f15023a[0] = motionEvent.getX() + "";
                    this.f15023a[1] = motionEvent.getY() + "";
                    this.f15023a[2] = motionEvent.getRawX() + "";
                    this.f15023a[3] = motionEvent.getRawY() + "";
                    if (m3.this.f14972P0) {
                        m3.this.a(this.f15023a);
                    }
                }
                if (motionEvent.getAction() == 1 && m3.this.f14973Q0) {
                    m3.this.a(this.f15023a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!m3.this.f14972P0) {
                if (!m3.this.f14973Q0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class f implements mi {
        public f() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            m3.this.T0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class g implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap f15026a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f15027b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ BitmapDrawable f15029a;

            public a(BitmapDrawable bitmapDrawable) {
                this.f15029a = bitmapDrawable;
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView;
                try {
                    BitmapDrawable bitmapDrawable = this.f15029a;
                    if (bitmapDrawable == null || (imageView = g.this.f15027b) == null) {
                        return;
                    }
                    imageView.setBackground(bitmapDrawable);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public g(Bitmap bitmap, ImageView imageView) {
            this.f15026a = bitmap;
            this.f15027b = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap;
            try {
                Context context = m3.this.f14977U;
                if (context == null || (bitmap = this.f15026a) == null) {
                    return;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(sf.a(context, bitmap, 20.0f));
                if (m3.this.f13602L != null) {
                    m3.this.f13602L.post(new a(bitmapDrawable));
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
                if (bq.a(m3.this.f14989a0) && !m3.this.f14959C0) {
                    m3.this.f13597G = 2;
                    m3 m3Var = m3.this;
                    pi piVar = m3Var.f15009r0;
                    if (piVar != null) {
                        piVar.a(m3Var.f13597G);
                    }
                    m3.this.U0();
                    m3.this.C0();
                    m3 m3Var2 = m3.this;
                    pi piVar2 = m3Var2.f15009r0;
                    if (piVar2 != null) {
                        piVar2.a(m3Var2.f13597G);
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
            m3.this.f13620j = c2.ADLOAD;
            m3 m3Var = m3.this;
            m3Var.f15014w0 = Boolean.valueOf(m3Var.f15010s0.s());
            m3 m3Var2 = m3.this;
            m3Var2.f15015x0 = m3Var2.f15010s0.u();
            m3 m3Var3 = m3.this;
            mp mpVar = m3Var3.f15010s0;
            if (mpVar != null) {
                m3Var3.f13595E = mpVar.i();
                if (m3.this.f13595E != null) {
                    m3 m3Var4 = m3.this;
                    m3Var4.f13596F = m3Var4.f13595E.c();
                    if (m3.this.f13596F != 0) {
                        m3 m3Var5 = m3.this;
                        m3Var5.f13597G = m3Var5.f13595E.f() + 1;
                    }
                }
                m3 m3Var6 = m3.this;
                m3Var6.f13598H = m3Var6.f15010s0.m();
            }
            if (m3.this.f15015x0) {
                m3 m3Var7 = m3.this;
                m3Var7.f15016y0 = m3Var7.f15010s0.f();
                m3.this.f13612b.setIsCacheAd("1");
                if (m3.this.f15016y0 > 0) {
                    m3.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - m3.this.f15016y0));
                }
                m3.this.I0();
            }
            if (m3.this.f15010s0.q() != null) {
                try {
                    m3 m3Var8 = m3.this;
                    m3Var8.a(Double.parseDouble(m3Var8.f15010s0.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            m3.this.g0();
            if (piVar == null) {
                m3.this.a(-991);
                return;
            }
            m3 m3Var9 = m3.this;
            m3Var9.f15009r0 = piVar;
            m3Var9.c1();
        }

        @Override // com.beizi.fusion.ni
        public void onAdFailed(int i2) {
            m3.this.a(String.valueOf(i2), i2);
        }
    }

    public class j implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f15033a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f15034b;

        public j(TextView textView, ImageView imageView) {
            this.f15033a = textView;
            this.f15034b = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                TextView textView = this.f15033a;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f15034b;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    this.f15034b.setImageBitmap(bitmap);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class k implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f15036a;

        public k(View view) {
            this.f15036a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            m3 m3Var = m3.this;
            mp mpVar = m3Var.f15010s0;
            int optimizeSize = m3Var.f14995d0.getOptimizeSize();
            View view = this.f15036a;
            m3 m3Var2 = m3.this;
            mpVar.a(optimizeSize, view, m3Var2.f14989a0, m3Var2.f14995d0.getDirection());
        }
    }

    public class l implements mi {

        /* renamed from: a, reason: collision with root package name */
        boolean f15038a = false;

        public l() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            m3.this.T0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class m implements ri {
        public m() {
        }

        @Override // com.beizi.fusion.ri
        public void onAdShown() {
            m3.this.f14967K0 = System.currentTimeMillis();
            m3.this.f13620j = c2.ADSHOW;
            if (m3.this.f15015x0) {
                m3.this.f13612b.setIsCacheAd("1");
                if (m3.this.f15016y0 > 0) {
                    m3.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - m3.this.f15016y0));
                }
                m3.this.I0();
            }
            if (m3.this.f13614d != null && m3.this.f13614d.z() != 2) {
                m3.this.f13614d.d(m3.this.x());
            }
            m3.this.j0();
            m3.this.e0();
            m3.this.M0();
            m3.this.N0();
            m3.this.Q0();
            m3.this.O0();
        }
    }

    public class n implements ui.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f15041a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f15042b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ pi f15043c;

        public class a implements mi {
            public a() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                m3.this.T0();
                m3.this.C0();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public n(int i2, int i3, pi piVar) {
            this.f15041a = i2;
            this.f15042b = i3;
            this.f15043c = piVar;
        }

        @Override // com.beizi.fusion.ui.b
        public void a() {
            AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean;
            try {
                if (bq.a(m3.this.f14991b0) && !m3.this.f14969M0) {
                    m3.this.f14959C0 = true;
                    m3.this.f14969M0 = true;
                    int[] iArr = new int[2];
                    m3.this.f14991b0.getLocationOnScreen(iArr);
                    int[] iArrB = rl.b(this.f15041a / 2, this.f15042b / 2);
                    if (this.f15043c != null) {
                        m3 m3Var = m3.this;
                        if (m3Var.f14991b0 != null) {
                            m3Var.R0();
                            this.f15043c.a(m3.this.f14991b0, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 2, new a());
                        }
                    }
                    m3 m3Var2 = m3.this;
                    if (!m3Var2.f15001j0 || (coolShakeViewBean = m3Var2.f14998g0) == null) {
                        return;
                    }
                    m3Var2.f15001j0 = false;
                    m3Var2.f14999h0.b(coolShakeViewBean);
                    m3 m3Var3 = m3.this;
                    go.b(m3Var3.f14977U, m3Var3.f15000i0, Long.valueOf(System.currentTimeMillis()));
                    tn.a().a(m3.this.f15000i0, System.currentTimeMillis());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class o implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f15046a;

        public o(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f15046a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.this.f14999h0.a(this.f15046a);
        }
    }

    public class p implements g7.c {
        public p() {
        }

        @Override // com.beizi.fusion.g7.c
        public void a() {
            try {
                if (m3.this.f13614d != null && m3.this.f13614d.z() != 2) {
                    m3.this.f13614d.a(m3.this.x(), m3.this.f14991b0);
                }
                m3.this.c0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class q implements mi {
        public q() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            m3.this.T0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public m3(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, float f2, float f3) {
        this.f14977U = context;
        this.f14979V = str;
        this.f14981W = j2;
        this.f14983X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        this.f14985Y = f2;
        this.f14987Z = f3;
        this.f14989a0 = new SplashContainer(context);
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        try {
            if (this.f14960D0 && this.f14989a0 != null && this.f14977U != null) {
                this.f14964H0 = new FrameLayout(this.f14977U);
                int width = this.f14989a0.getWidth();
                int height = this.f14989a0.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.f14964H0.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.f14964H0.setBackgroundColor(Color.parseColor(this.f14971O0));
                this.f14989a0.addView(this.f14964H0);
                this.f14964H0.setOnTouchListener(new a());
                this.f14964H0.getViewTreeObserver().addOnScrollChangedListener(this.f14982W0);
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
                handler.postDelayed(new h(), iK);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void P0() {
        ViewGroup viewGroup = this.f14989a0;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setOnTouchListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.f14989a0 != null && this.f14977U != null && (buyerBean = this.f13615e) != null) {
                if ((this.f14972P0 || this.f14973Q0) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && rl.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.f14989a0.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
                    this.f14974R0 = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iJ = vo.j(this.f14977U);
                    int iG = vo.g(this.f14977U);
                    int width2 = this.f14989a0.getWidth();
                    int height2 = this.f14989a0.getHeight();
                    int[] iArr = new int[2];
                    this.f14989a0.getLocationOnScreen(iArr);
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
                    this.f14975S0 = new FrameLayout(this.f14977U);
                    this.f14975S0.setLayoutParams(new FrameLayout.LayoutParams(iJ, i4));
                    int iA = a(horizontalSpace, iJ, width2, i2);
                    int iB = b(verticalSpace, i4, height2, i3);
                    int iA2 = vo.a(this.f14977U, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.f14975S0.setX(iA);
                    this.f14975S0.setY(iB);
                    this.f14975S0.setBackgroundColor(Color.parseColor(this.f14971O0));
                    this.f14974R0.addView(this.f14975S0);
                    this.f14975S0.setOnTouchListener(new c(new float[4]));
                    this.f14989a0.getViewTreeObserver().addOnScrollChangedListener(this.f14984X0);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        ui uiVar;
        try {
            if (this.f13595E != null && (uiVar = this.f14999h0) != null) {
                if (this.f14998g0 == null) {
                    uiVar.a(1.9d, 1.5d);
                }
                if (this.f13597G != 1) {
                    return;
                }
                double dB = this.f13595E.b();
                double dA = this.f13595E.a();
                double dC = this.f14999h0.c();
                double d2 = this.f14999h0.d();
                if (dA > 0.0d && dC > 0.0d && dC < dA) {
                    this.f13597G = 2;
                } else if (dB > 0.0d && d2 > 0.0d && d2 < dB) {
                    this.f13597G = 2;
                }
                pi piVar = this.f15009r0;
                if (piVar != null) {
                    piVar.a(this.f13597G);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void S0() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfig = this.f13615e.getDislikeConfig();
        this.f15002k0 = dislikeConfig;
        if (dislikeConfig == null) {
            return;
        }
        String dislikeUuid = dislikeConfig.getDislikeUuid();
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBeanA = a(this.f15002k0.getOrderData(), this.f15010s0.c());
        if (dislikeConfigBeanA != null) {
            this.f15003l0 = dislikeConfigBeanA;
            dislikeUuid = dislikeConfigBeanA.getDislikeUuid();
        }
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            eventBean.setDislikeUuid(dislikeUuid);
            I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        AdSpacesBean.BuyerBean buyerBean;
        this.f14959C0 = true;
        this.f14969M0 = false;
        this.f14970N0 = false;
        b1();
        if (this.f13599I && (buyerBean = this.f13615e) != null) {
            this.f13612b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
            I0();
        }
        a0();
        a(this.f14977U, this.f14989a0, this.f13598H);
        if (O()) {
            n3 n3Var = this.f13614d;
            if (n3Var != null && n3Var.z() != 2) {
                this.f13614d.b(x());
            }
            Z();
            J0();
            mp mpVar = this.f15010s0;
            if (mpVar != null) {
                mpVar.y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void U0() {
        try {
            if (!this.f14969M0 && !this.f14959C0) {
                double width = this.f14989a0.getWidth();
                int[] iArr = {((int) (0.1d * width)) / 2, (int) (this.f14989a0.getHeight() * 0.8d)};
                int[] iArrB = rl.b(((int) (width * 0.9d)) / 2, vo.a(this.f14977U, 65.0f) / 2);
                a(new String[]{String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1])}, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean X0() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14997f0;
        if (shakeViewBean == null) {
            return false;
        }
        return rl.a(shakeViewBean.getRenderRate());
    }

    private boolean Y0() {
        try {
            return System.currentTimeMillis() - vo.a(this.f14977U).longValue() < this.f14998g0.getUserProtectTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean Z0() {
        try {
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.f15003l0;
            if (dislikeConfigBean != null) {
                return dislikeConfigBean.getIsShowDialog() == 1;
            }
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.f15002k0;
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
            FrameLayout frameLayout3 = this.f14964H0;
            if (frameLayout3 != null && this.f14982W0 != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.f14982W0);
            }
            ViewGroup viewGroup = this.f14989a0;
            if (viewGroup != null && (frameLayout2 = this.f14964H0) != null) {
                viewGroup.removeView(frameLayout2);
                this.f14964H0 = null;
            }
            ViewGroup viewGroup2 = this.f14989a0;
            if (viewGroup2 != null && this.f14984X0 != null) {
                viewGroup2.getViewTreeObserver().removeOnScrollChangedListener(this.f14984X0);
            }
            ViewGroup viewGroup3 = this.f14974R0;
            if (viewGroup3 == null || (frameLayout = this.f14975S0) == null) {
                return;
            }
            viewGroup3.removeView(frameLayout);
            this.f14975S0 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f13615e.getShakeView();
        this.f14997f0 = shakeView;
        if (shakeView != null) {
            this.f14998g0 = shakeView.getCoolShakeView();
        }
        this.f15000i0 = "cool_" + this.f13619i;
        this.f15008q0 = "dl_cool_" + this.f13619i;
        if (this.f14985Y <= 0.0f) {
            this.f14985Y = vo.i(this.f14977U);
        }
        if (this.f14987Z <= 0.0f) {
            this.f14987Z = 0.0f;
        }
        mp mpVar = new mp(this.f14977U, this.f13619i, new i());
        this.f15010s0 = mpVar;
        mpVar.b(true);
        try {
            this.f15010s0.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f15010s0.a((int) this.f14981W);
        this.f15010s0.a(this.f13615e);
        if ("S2S".equals(l())) {
            this.f15010s0.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f15010s0.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f15010s0.c(n3Var2.y());
            this.f15010s0.d(this.f13614d.v());
        }
        this.f15010s0.w();
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
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.m3.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void D0() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f14999h0) == null) {
                return;
            }
            uiVar.g();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public void V() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f14999h0) == null) {
                return;
            }
            uiVar.a(false);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean V0() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.f15003l0;
        if (dislikeConfigBean != null) {
            return dislikeConfigBean.getIsHide() == 0;
        }
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.f15002k0;
        return dislikeConfigBean2 != null && dislikeConfigBean2.getIsHide() == 0;
    }

    public boolean W0() {
        return this.f14970N0;
    }

    public abstract void a(pi piVar);

    public void a1() {
        try {
            if (!W()) {
                A();
                return;
            }
            n3 n3Var = this.f13614d;
            if (n3Var == null) {
                return;
            }
            Map mapC = n3Var.C();
            x();
            mapC.toString();
            f();
            u5 u5Var = this.f13617g;
            if (u5Var != u5.SUCCESS) {
                if (u5Var == u5.FAIL) {
                    x();
                }
            } else if (this.f14991b0 != null) {
                this.f13614d.b(x(), this.f14991b0);
            } else {
                this.f13614d.a(10140);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public abstract void c1();

    public void d1() {
        try {
            pi piVar = this.f15009r0;
            if (piVar != null && this.f15011t0 != null) {
                piVar.a(this.f13597G);
                if (!this.f14972P0 && !this.f14973Q0) {
                    si.a(this.f15009r0, this.f15011t0, new l());
                    return;
                }
                P0();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void e1() {
        View view;
        try {
            mp mpVar = this.f15010s0;
            if (mpVar != null && (view = this.f15011t0) != null) {
                mpVar.a(view, new m());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void f1() {
        try {
            if (Z0()) {
                g7.a aVar = new g7.a(this.f14977U);
                aVar.a(new p());
                aVar.a().show();
            } else {
                n3 n3Var = this.f13614d;
                if (n3Var != null && n3Var.z() != 2) {
                    this.f13614d.a(x(), this.f14991b0);
                }
                c0();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        mp mpVar = this.f15010s0;
        if (mpVar == null) {
            return false;
        }
        return mpVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void T() {
        BZVideoView bZVideoView;
        try {
            if (TextUtils.isEmpty(this.f14980V0) || (bZVideoView = this.f14978U0) == null) {
                return;
            }
            bZVideoView.onViewPause(true);
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void U() {
        BZVideoView bZVideoView;
        try {
            ui uiVar = this.f14999h0;
            if (uiVar != null) {
                uiVar.g();
            }
            if (TextUtils.isEmpty(this.f14980V0) || (bZVideoView = this.f14978U0) == null) {
                return;
            }
            bZVideoView.onViewResume(true);
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        pi piVar = this.f15009r0;
        if (piVar != null) {
            piVar.destroy();
        }
        mp mpVar = this.f15010s0;
        if (mpVar != null) {
            mpVar.a();
        }
        ui uiVar = this.f14999h0;
        if (uiVar != null) {
            uiVar.h();
        }
        b1();
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
        mp mpVar = this.f15010s0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.d();
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        mp mpVar = this.f15010s0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.l();
    }

    @Override // com.beizi.fusion.e2
    public View r() {
        return this.f14991b0;
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        mp mpVar = this.f15010s0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.q();
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f15010s0 == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            mp mpVar = this.f15010s0;
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
            mp mpVar = this.f15010s0;
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

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            shakeViewBean = this.f14997f0;
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        int isUnidirection = shakeViewBean.getIsUnidirection();
        ui uiVar = this.f14999h0;
        if (uiVar != null) {
            uiVar.b(regulatoryAngle);
            this.f14999h0.d(isUnidirection);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f14999h0.a(g5Var.b());
            }
        }
        if (this.f14998g0 == null) {
            this.f15001j0 = true;
            this.f14999h0.a(shakeViewBean);
        } else if (a(shakeViewBean)) {
            this.f14999h0.b(this.f14998g0);
        } else if (Y0()) {
            this.f14999h0.b(this.f14998g0);
        } else {
            this.f15001j0 = true;
            this.f14999h0.a(shakeViewBean);
        }
    }

    public void a(TextView textView, ImageView imageView) {
        ArrayList arrayListL;
        try {
            pi piVar = this.f15009r0;
            if (piVar == null) {
                return;
            }
            String strK = piVar.k();
            if (TextUtils.isEmpty(strK) && (arrayListL = this.f15009r0.l()) != null && arrayListL.size() >= 3) {
                strK = (String) arrayListL.get(2);
            }
            if (TextUtils.isEmpty(strK)) {
                if (textView != null) {
                    textView.setVisibility(8);
                }
                if (imageView != null) {
                    imageView.setVisibility(8);
                    return;
                }
                return;
            }
            if (strK.startsWith("http")) {
                rf.a((Context) null).a(strK, new j(textView, imageView));
                return;
            }
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(strK);
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

    public void a(View view) {
        try {
            int iA = vo.a(this.f14977U, this.f14985Y);
            float f2 = this.f14987Z;
            int iA2 = f2 > 0.0f ? vo.a(this.f14977U, f2) : -2;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA2);
            ViewGroup viewGroup = this.f14989a0;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                StringBuilder sb = new StringBuilder();
                sb.append("mNativeAd != null ? ");
                boolean z2 = true;
                sb.append(this.f15010s0 != null);
                sb.append(",renderViewBean != null ? ");
                if (this.f14995d0 == null) {
                    z2 = false;
                }
                sb.append(z2);
                mh.a("BeiZis", sb.toString());
                this.f14989a0.addView(this.f15011t0, layoutParams);
                this.f15011t0.measure(0, 0);
                a(this.f15009r0, iA, iA2, this.f15011t0.getMeasuredHeight());
                S0();
                if (V0()) {
                    a(this.f15009r0);
                }
                ViewGroup viewGroup2 = this.f14989a0;
                this.f14991b0 = viewGroup2;
                ui uiVar = this.f14999h0;
                if (uiVar != null) {
                    uiVar.a(viewGroup2);
                }
            }
            mp mpVar = this.f15010s0;
            if (mpVar == null || this.f14995d0 == null) {
                return;
            }
            mpVar.a(this.f14996e0);
            this.f15010s0.b(this.f14995d0.getOptimizePercent());
            mh.a("BeiZis", "percent = " + this.f14995d0.getOptimizePercent());
            this.f14989a0.post(new k(view));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void b(int i2) {
        mp mpVar = this.f15010s0;
        if (mpVar == null) {
            return;
        }
        mpVar.a(this.f14989a0, i2);
    }

    private void a(pi piVar, int i2, int i3, int i4) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!P() && !q1.i().v() && X0()) {
                if (this.f14999h0 == null) {
                    this.f14999h0 = new ui(this.f14977U);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f14997f0;
                if (shakeViewBean == null || this.f14999h0 == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f14997f0.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanB = b(this.f14997f0.getOrderData(), this.f15010s0.c());
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
                this.f14999h0.a(this.f15014w0);
                View viewA = this.f14999h0.a(vo.b(this.f14977U, i2), vo.b(this.f14977U, i3), this.f14997f0.getPosition());
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f14997f0;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.f14989a0.addView(viewA, layoutParams2);
                        }
                    }
                }
                b(shakeView);
                this.f14999h0.a(new n(i2, i3, piVar));
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f14998g0;
                if (coolShakeViewBean != null) {
                    this.f14999h0.a(coolShakeViewBean, this.f15000i0);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) go.a(this.f14977U, this.f15000i0, (Object) 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f14998g0.getCoolTime()) {
                new Handler().postDelayed(new o(shakeViewBean), this.f14998g0.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            tn.a().b(this.f15000i0);
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

    public void a(String[] strArr, int i2) {
        View view;
        try {
            b1();
            if (this.f15009r0 != null && this.f14991b0 != null && !this.f14969M0 && !this.f14959C0) {
                this.f14959C0 = true;
                this.f14969M0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f14968L0);
                    I0();
                }
                pi piVar = this.f15009r0;
                if (piVar == null || (view = this.f14991b0) == null) {
                    return;
                }
                piVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new q());
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
            if (this.f15009r0 != null && this.f14991b0 != null && !this.f14969M0) {
                this.f14959C0 = true;
                this.f14969M0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f14968L0);
                    I0();
                }
                pi piVar = this.f15009r0;
                if (piVar == null || (view = this.f14991b0) == null) {
                    return;
                }
                piVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new f());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(int i2, int i3, float f2, Bitmap bitmap, ImageView imageView) {
        try {
            float fAbs = Math.abs(((float) ((i2 * 1.0d) / i3)) - f2);
            if (fAbs > 0.15f) {
                x3.c().e().execute(new g(bitmap, imageView));
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

    public void a(int i2, int i3) {
        double d2 = i3;
        double d3 = i2;
        if (d2 >= 0.25d * d3 && !this.f14988Z0) {
            this.f14988Z0 = true;
            b(25);
        }
        if (d2 >= 0.5d * d3 && !this.f14990a1) {
            this.f14990a1 = true;
            b(50);
        }
        if (d2 < d3 * 0.75d || this.f14992b1) {
            return;
        }
        this.f14992b1 = true;
        b(75);
    }
}
