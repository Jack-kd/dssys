package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.work.WorkRequest;
import com.anythink.core.common.inner.b.b;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c2.e;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h1.i;
import com.smartdigimkt.k2.f;
import com.smartdigimkt.k2.g;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.p1.u;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;
import com.smartdigimkt.v1.b3;
import com.smartdigimkt.v1.g0;
import com.smartdigimkt.v1.h0;
import com.smartdigimkt.v1.i0;
import com.smartdigimkt.v1.j0;
import com.smartdigimkt.v1.j3;
import com.smartdigimkt.v1.k0;
import com.smartdigimkt.v1.n0;
import com.smartdigimkt.v1.o0;
import com.smartdigimkt.v1.p0;
import com.smartdigimkt.v1.q;
import com.smartdigimkt.v1.q0;
import com.smartdigimkt.v1.r;
import com.smartdigimkt.v1.r0;
import com.smartdigimkt.v1.s0;
import com.smartdigimkt.v1.t0;
import com.smartdigimkt.v1.u0;
import com.smartdigimkt.v1.v0;
import com.smartdigimkt.v1.w0;
import com.smartdigimkt.v1.x0;
import com.smartdigimkt.x.n;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.z.b0;
import com.smartdigimkt.z.p;
import com.smartdigimkt.z.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

/* loaded from: classes5.dex */
public abstract class BaseScreenATView extends BaseATView {
    public static final int FORMAT_INTERSTITIAL = 3;
    public static final int FORMAT_REWARD_VIDEO = 1;
    public static final String TAG = "BaseScreenATView";

    /* renamed from: A0, reason: collision with root package name */
    public int f43262A0;

    /* renamed from: B0, reason: collision with root package name */
    public int f43263B0;

    /* renamed from: E, reason: collision with root package name */
    public final int f43264E;

    /* renamed from: F, reason: collision with root package name */
    public final int f43265F;

    /* renamed from: G, reason: collision with root package name */
    public int f43266G;

    /* renamed from: H, reason: collision with root package name */
    public int f43267H;

    /* renamed from: I, reason: collision with root package name */
    public int f43268I;

    /* renamed from: J, reason: collision with root package name */
    public int f43269J;

    /* renamed from: K, reason: collision with root package name */
    public final int f43270K;

    /* renamed from: L, reason: collision with root package name */
    public long f43271L;

    /* renamed from: M, reason: collision with root package name */
    public final long f43272M;

    /* renamed from: N, reason: collision with root package name */
    public long f43273N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f43274O;

    /* renamed from: P, reason: collision with root package name */
    public int f43275P;

    /* renamed from: Q, reason: collision with root package name */
    public int f43276Q;

    /* renamed from: R, reason: collision with root package name */
    public final long f43277R;

    /* renamed from: S, reason: collision with root package name */
    public final long f43278S;

    /* renamed from: T, reason: collision with root package name */
    public long f43279T;

    /* renamed from: U, reason: collision with root package name */
    public long f43280U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f43281V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f43282W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f43283a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f43284b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f43285c0;

    /* renamed from: d0, reason: collision with root package name */
    public float f43286d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f43287e0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f43288f0;

    /* renamed from: g0, reason: collision with root package name */
    public RelativeLayout f43289g0;

    /* renamed from: h0, reason: collision with root package name */
    public PanelView f43290h0;

    /* renamed from: i0, reason: collision with root package name */
    public BaseEndCardView f43291i0;

    /* renamed from: j0, reason: collision with root package name */
    public j3 f43292j0;

    /* renamed from: k0, reason: collision with root package name */
    public n f43293k0;

    /* renamed from: l0, reason: collision with root package name */
    public CountDownView f43294l0;

    /* renamed from: m0, reason: collision with root package name */
    public CloseImageView f43295m0;

    /* renamed from: n0, reason: collision with root package name */
    public ViewGroup f43296n0;

    /* renamed from: o0, reason: collision with root package name */
    public MuteImageView f43297o0;

    /* renamed from: p0, reason: collision with root package name */
    public FullScreenHeaderPanelView f43298p0;

    /* renamed from: q0, reason: collision with root package name */
    public ValueAnimator f43299q0;

    /* renamed from: r0, reason: collision with root package name */
    public l f43300r0;

    /* renamed from: s0, reason: collision with root package name */
    public e f43301s0;

    /* renamed from: t0, reason: collision with root package name */
    public final t f43302t0;

    /* renamed from: u0, reason: collision with root package name */
    public com.smartdigimkt.p1.t f43303u0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f43304v0;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f43305w0;

    /* renamed from: x0, reason: collision with root package name */
    public final s0 f43306x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f43307y0;

    /* renamed from: z0, reason: collision with root package name */
    public int f43308z0;

    public BaseScreenATView(Context context) {
        super(context);
        this.f43276Q = 100;
        this.f43281V = false;
        this.f43306x0 = new s0(this);
    }

    private void getScreenParams() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        this.f43266G = i2;
        int i3 = displayMetrics.heightPixels;
        this.f43267H = i3;
        this.f43307y0 = i2;
        this.f43308z0 = i3;
    }

    public void A() {
        com.smartdigimkt.m3.e eVar;
        BasePlayerView basePlayerView;
        a(103);
        d dVar = this.f43229o;
        if (dVar != null && (basePlayerView = dVar.f39641h) != null && basePlayerView.getParent() != null && (dVar.f39641h.getParent() instanceof ViewGroup) && (!z.h(this.f43217c, this.f43216b) || this.f43227m)) {
            D();
        }
        d(8);
        if (getCloseView() != null) {
            a aVar = this.f43216b;
            double d2 = this.f43222h ? 1.0d : (aVar == null || (eVar = aVar.f41644r) == null) ? 1.0d : eVar.f41965q1;
            CloseImageView closeView = getCloseView();
            float f2 = this.f43286d0;
            if (closeView != null) {
                closeView.setClickAreaScaleFactor(f2);
                closeView.setClickViewAlpha(d2);
            }
        }
        MuteImageView muteImageView = this.f43297o0;
        if (muteImageView != null && muteImageView.getVisibility() != 8) {
            this.f43297o0.setVisibility(8);
        }
        FullScreenHeaderPanelView fullScreenHeaderPanelView = this.f43298p0;
        if (fullScreenHeaderPanelView == null || fullScreenHeaderPanelView.getVisibility() == 8) {
            return;
        }
        this.f43298p0.setVisibility(8);
    }

    public final void B() {
        i iVar;
        this.f43281V = true;
        try {
            n nVar = this.f43293k0;
            if (nVar == null || (iVar = nVar.f45052a) == null || !iVar.isShowing()) {
                a(110);
                d dVar = this.f43229o;
                if (dVar != null) {
                    dVar.c();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public abstract void C();

    public void D() {
        BasePlayerView basePlayerView;
        d dVar = this.f43229o;
        if (dVar == null || (basePlayerView = dVar.f39641h) == null || basePlayerView.getParent() == null) {
            return;
        }
        ((ViewGroup) dVar.f39641h.getParent()).removeView(dVar.f39641h);
        dVar.f39641h = null;
    }

    public void E() {
    }

    public void F() {
    }

    public void G() {
    }

    public final void H() {
        com.smartdigimkt.m3.e eVar;
        if (getFeedbackButton() != null && getFeedbackButton().getVisibility() != 0) {
            getFeedbackButton().setVisibility(0);
        }
        this.f43287e0 = true;
        View view = this.f43228n;
        if (view != null && (view instanceof CTAButtonLayout) && ((CTAButtonLayout) view).needInterceptCloseViewShow()) {
            ((CTAButtonLayout) this.f43228n).activateSubCloseButton();
            boolean z2 = this.f43282W;
            if (!z2) {
                return;
            }
            if (z2 && getPanelView() != null && getPanelView().getVisibility() == 0) {
                return;
            }
        }
        if (getCloseView() == null || getCloseView().getVisibility() == 0) {
            return;
        }
        getCloseView().setVisibility(0);
        a aVar = this.f43216b;
        double d2 = this.f43222h ? 1.0d : (aVar == null || (eVar = aVar.f41644r) == null) ? 1.0d : eVar.f41965q1;
        CloseImageView closeView = getCloseView();
        float f2 = this.f43286d0;
        if (closeView != null) {
            closeView.setClickAreaScaleFactor(f2);
            closeView.setClickViewAlpha(d2);
        }
    }

    public void I() {
        int i2;
        a(102);
        this.f43282W = true;
        int iNextInt = 0;
        if (z.b(this.f43217c)) {
            if (this.f43291i0 == null) {
                MraidEndCardView mraidEndCardView = new MraidEndCardView(getContext(), this.f43217c, this.f43216b, this.f43212A);
                mraidEndCardView.setEndCardListener(new w0(this));
                a(this.f43289g0);
                mraidEndCardView.init(false);
                this.f43291i0 = mraidEndCardView;
            }
            C();
            A();
        } else {
            this.f43275P = getPanelViewTypeForShowEndCard();
            EndCardView endCardView = new EndCardView(getContext(), this.f43217c, this.f43216b);
            endCardView.setSize(this.f43266G, this.f43267H);
            endCardView.init(false, false, new x0(this));
            this.f43291i0 = endCardView;
            C();
            endCardView.load();
            if (b(this.f43275P)) {
                J();
                PanelView panelView = getPanelView();
                if (panelView != null && panelView.getVisibility() == 0) {
                    if (panelView.getCTAButton() == null || panelView.getCTAButton().getVisibility() != 0) {
                        setTrackClickAreaView(panelView);
                    } else {
                        setTrackClickAreaView(panelView.getCTAButton());
                    }
                }
            }
            A();
        }
        BaseEndCardView baseEndCardView = this.f43291i0;
        if (baseEndCardView != null) {
            v0 v0Var = new v0(this);
            com.smartdigimkt.m3.e eVar = this.f43216b.f41644r;
            if (!this.f43287e0 && eVar != null && (i2 = (int) (eVar.f41972t / 100.0f)) != 0) {
                Random random = new Random();
                if (random.nextInt(100) <= i2) {
                    int i3 = eVar.f41975u;
                    int i4 = eVar.f41978v;
                    if (i4 > 0) {
                        if (i3 == i4) {
                            iNextInt = i3;
                        } else {
                            try {
                                iNextInt = random.nextInt(i4 - i3) + i3;
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                    }
                }
            }
            baseEndCardView.postDelayed(v0Var, iNextInt);
        }
        p.a(6, this.f43217c, c());
    }

    public void J() {
        PanelView panelView = getPanelView();
        if (panelView != null) {
            if (panelView.getVisibility() != 0) {
                a(104);
                panelView.setVisibility(0);
            }
            if (panelView.getCTAButton() == null || panelView.getCTAButton().getVisibility() != 0) {
                return;
            }
            View view = this.f43228n;
            if (view == null || !view.equals(panelView.getCTAButton())) {
                if (this.f43228n != null && (panelView.getCTAButton() instanceof CTAButtonLayout)) {
                    View view2 = this.f43228n;
                    if (view2 instanceof CTAButtonLayout) {
                        String majorCTAText = ((CTAButtonLayout) view2).getMajorCTAText();
                        if (!TextUtils.isEmpty(majorCTAText)) {
                            ((CTAButtonLayout) panelView.getCTAButton()).setMajorCTAText(majorCTAText);
                        }
                    }
                }
                this.f43228n = panelView.getCTAButton();
            }
        }
    }

    public void K() {
        if (this.f43298p0 == null) {
            E();
        }
        FullScreenHeaderPanelView fullScreenHeaderPanelView = this.f43298p0;
        if (fullScreenHeaderPanelView == null || fullScreenHeaderPanelView.getVisibility() == 0) {
            return;
        }
        ValueAnimator valueAnimator = this.f43299q0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.2f, 1.0f);
        this.f43299q0 = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f43299q0.addUpdateListener(new o0(this));
        this.f43299q0.start();
        this.f43298p0.setAlpha(0.2f);
        this.f43298p0.setVisibility(0);
    }

    public void L() {
        d(0);
        MuteImageView muteImageView = this.f43297o0;
        if (muteImageView != null && muteImageView.getVisibility() != 0) {
            this.f43297o0.setVisibility(0);
        }
        F();
    }

    public final void M() {
        d dVar = this.f43229o;
        if (dVar != null) {
            dVar.d();
        }
    }

    public void a(List list) {
        G();
        if (this.f43270K == 0) {
            H();
        }
        d dVar = this.f43229o;
        if (dVar == null) {
            return;
        }
        dVar.f39642i = new t0(this);
        com.smartdigimkt.p1.t tVar = this.f43303u0;
        if (tVar != null) {
            q qVar = (q) tVar;
            qVar.f44577d = "1";
            BaseATActivity baseATActivity = qVar.f44578e;
            int i2 = BaseATActivity.f43185z;
            baseATActivity.a("4", 0L);
        }
        if (f()) {
            this.f43229o.a(this.f43284b0, list, this.f43212A);
        }
        if (this.f43276Q == 1) {
            I();
            return;
        }
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setVisibility(0);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void b() {
        getScreenParams();
        getMaterialRealSize();
    }

    public abstract boolean b(int i2);

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final com.smartdigimkt.i0.l c() {
        com.smartdigimkt.i0.l lVar = new com.smartdigimkt.i0.l(this.f43216b, this.f43223i);
        lVar.f40669e = getWidth();
        lVar.f40670f = getHeight();
        d dVar = this.f43229o;
        if (dVar != null) {
            lVar.f40672h = dVar.a(true);
        }
        try {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            lVar.f40676l = iArr[0];
            lVar.f40677m = iArr[1];
        } catch (Throwable unused) {
        }
        d dVar2 = this.f43229o;
        if (dVar2 != null) {
            lVar.f40672h = dVar2.a(true);
        }
        lVar.f40678n = this.f43237w;
        return lVar;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void d() {
        g gVar;
        com.smartdigimkt.g2.d dVar;
        super.d();
        r rVar = this.f43230p;
        if (rVar != null) {
            r0 r0Var = new r0(this);
            ArrayList arrayList = rVar.f41295e;
            if (arrayList == null || arrayList.size() <= 0) {
                gVar = null;
                if (gVar != null && (dVar = gVar.f41312i) != null) {
                    dVar.f40327h = r0Var;
                }
            } else {
                ArrayList arrayList2 = rVar.f41295e;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    f fVar = (f) obj;
                    if (fVar instanceof g) {
                        gVar = (g) fVar;
                        break;
                    }
                }
                gVar = null;
                if (gVar != null) {
                    dVar.f40327h = r0Var;
                }
            }
        }
        d dVar2 = this.f43229o;
        if (dVar2 != null) {
            dVar2.f39640g = this.f43230p;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void destroy() {
        com.smartdigimkt.y.a aVar;
        super.destroy();
        this.f43303u0 = null;
        BaseEndCardView baseEndCardView = this.f43291i0;
        if (baseEndCardView != null) {
            baseEndCardView.a();
        }
        d dVar = this.f43229o;
        if (dVar == null || (aVar = dVar.f39646m) == null) {
            return;
        }
        aVar.a();
        dVar.f39646m = null;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void g() {
        a(new com.smartdigimkt.i0.f(b.f4594k, b.ag));
        if (z.h(this.f43217c, this.f43216b)) {
            if (this.f43230p != null) {
                HashMap map = new HashMap();
                map.put("video_play_fail_message", "code[ 40002 ],desc[ the ad has been due ]");
                this.f43230p.a(map);
            }
            a(108);
            this.f43227m = true;
            if (!this.f43282W) {
                I();
            }
            d dVar = this.f43229o;
            if (dVar != null) {
                dVar.b();
            }
            D();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public List<View> getAutoClickCTAViews() {
        ArrayList arrayList = new ArrayList(2);
        PanelView panelView = getPanelView();
        if (panelView != null) {
            arrayList.add(panelView.getCTAButton());
        }
        arrayList.add(this.f43228n);
        return arrayList;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public View getAutoClickPanelView() {
        return getPanelView();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public View getAutoClickRootView() {
        return this.f43289g0;
    }

    public float getCloseButtonScaleFactor() {
        return this.f43286d0;
    }

    public CloseImageView getCloseView() {
        return this.f43295m0;
    }

    public ViewGroup getFeedbackButton() {
        return this.f43296n0;
    }

    public long getHideBannerTime() {
        return this.f43273N;
    }

    public void getMaterialRealSize() {
        int i2;
        String str = this.f43217c.f41815f;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c cVar = this.f43217c;
        synchronized (cVar) {
            i2 = cVar.f41788I;
        }
        if (i2 > 0 || this.f43217c.b() > 0) {
            this.f43262A0 = this.f43217c.c();
            int iB = this.f43217c.b();
            this.f43263B0 = iB;
            this.f43307y0 = this.f43262A0;
            this.f43308z0 = iB;
            return;
        }
        com.smartdigimkt.b4.e.a().getClass();
        if (com.smartdigimkt.b4.e.b()) {
            return;
        }
        b0.a().getClass();
        int[] iArrA = com.smartdigimkt.d5.d.a(b0.a(1, str));
        if (iArrA != null) {
            int i3 = iArrA[0];
            this.f43262A0 = i3;
            int i4 = iArrA[1];
            this.f43263B0 = i4;
            this.f43307y0 = i3;
            this.f43308z0 = i4;
        }
    }

    public PanelView getPanelView() {
        return this.f43290h0;
    }

    public abstract int getPanelViewTypeForShowEndCard();

    public int getPlayerViewType() {
        return this.f43276Q;
    }

    public long getShowBannerTime() {
        return this.f43271L;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f43265F == 2) {
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, 0, k.a(getContext(), 154.0f));
            return layoutParams;
        }
        int measuredHeight = (getMeasuredHeight() * 2) / 3;
        layoutParams.addRule(11);
        layoutParams.setMargins(0, measuredHeight, 0, 0);
        return layoutParams;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void h() {
        int i2;
        com.smartdigimkt.p1.t tVar = this.f43303u0;
        if (tVar != null) {
            int i3 = this.f43276Q;
            if (i3 == 101) {
                i2 = 7;
            } else if (i3 != 1) {
                i2 = 3;
                if (i3 != 2) {
                    if (i3 != 3) {
                        i2 = 5;
                        if (i3 != 4) {
                            i2 = i3 != 5 ? 1 : 6;
                        }
                    } else {
                        i2 = 4;
                    }
                }
            } else {
                i2 = this.f43216b.f41644r.f41952m0 == 1 ? 2 : 8;
            }
            u uVar = new u();
            uVar.f42579c = i2;
            if ((this instanceof LetterFullScreenATView) || (this instanceof LetterHalfScreenATView)) {
                uVar.f42580d = 1;
            } else {
                uVar.f42580d = 2;
            }
            if (this instanceof FullScreenATView) {
                uVar.f42582f = false;
            } else {
                uVar.f42582f = true;
            }
            uVar.f42583g = this.f43216b.f41644r.f41932f1;
            tVar.b(uVar);
        }
    }

    public void handleFullScreenClick() {
    }

    public boolean hasReward() {
        return this.f43283a0;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void i() {
        a aVar;
        com.smartdigimkt.m3.e eVar;
        this.f43285c0 = false;
        com.smartdigimkt.b4.e.a().a(new g0(this));
        if (this.f43288f0 && this.f43264E == 3 && (aVar = this.f43216b) != null && (eVar = aVar.f41644r) != null && eVar.f41848D0 == 1) {
            d dVar = this.f43229o;
            if (dVar != null) {
                dVar.d();
            }
            c(6);
        }
    }

    public void init() {
        v();
        if (this.f43282W) {
            I();
            return;
        }
        int i2 = this.f43264E;
        if (1 == i2) {
            if (this.f43276Q == 100) {
                a((List) null);
            } else {
                com.smartdigimkt.b4.e.a().c(new n0(this, new u0(this)));
            }
            if (z.b(this.f43217c)) {
                a aVar = this.f43216b;
                c cVar = this.f43217c;
                HashMap map = com.smartdigimkt.e0.t.f40025a;
                if ((aVar == null || cVar == null || !com.smartdigimkt.e0.t.f40026b.containsKey(com.smartdigimkt.e0.t.a(2, aVar, cVar))) && this.f43291i0 == null) {
                    MraidEndCardView mraidEndCardView = new MraidEndCardView(getContext(), this.f43217c, this.f43216b, this.f43212A);
                    mraidEndCardView.setEndCardListener(new w0(this));
                    a(this.f43289g0);
                    mraidEndCardView.init(true);
                    this.f43291i0 = mraidEndCardView;
                    return;
                }
                return;
            }
            return;
        }
        if (3 == i2) {
            if (!z.h(this.f43217c, this.f43216b)) {
                I();
                if (!z.b(this.f43217c)) {
                    a(Math.max(0, this.f43216b.f41644r.f41892S), new p0(this));
                }
                F();
                return;
            }
            a(new ArrayList());
            if (z.b(this.f43217c)) {
                a aVar2 = this.f43216b;
                c cVar2 = this.f43217c;
                HashMap map2 = com.smartdigimkt.e0.t.f40025a;
                if ((aVar2 == null || cVar2 == null || !com.smartdigimkt.e0.t.f40026b.containsKey(com.smartdigimkt.e0.t.a(2, aVar2, cVar2))) && this.f43291i0 == null) {
                    MraidEndCardView mraidEndCardView2 = new MraidEndCardView(getContext(), this.f43217c, this.f43216b, this.f43212A);
                    mraidEndCardView2.setEndCardListener(new w0(this));
                    a(this.f43289g0);
                    mraidEndCardView2.init(true);
                    this.f43291i0 = mraidEndCardView2;
                }
            }
        }
    }

    public boolean isShowEndCard() {
        return this.f43282W;
    }

    public boolean isVideoMute() {
        return this.f43284b0;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void j() {
        this.f43285c0 = true;
        if (this.f43292j0 == null) {
            this.f43292j0 = new j3(this.f43289g0);
        }
        this.f43292j0.a();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final View m() {
        RelativeLayout relativeLayout = this.f43289g0;
        return relativeLayout != null ? relativeLayout : this;
    }

    public boolean n() {
        return false;
    }

    public boolean o() {
        return false;
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        d dVar;
        BasePlayerView basePlayerView;
        if (!w() || (dVar = this.f43229o) == null || (basePlayerView = dVar.f39641h) == null || !(basePlayerView instanceof WebLandpagePlayerView)) {
            return;
        }
        ((WebLandpagePlayerView) basePlayerView).onActivityResult(i2, i3, intent);
    }

    public void p() {
        if (getPanelView() == null || getPanelView().getVisibility() == 8) {
            return;
        }
        getPanelView().setVisibility(8);
    }

    public void q() {
        l lVar = new l(this.f43217c, this.f43216b);
        this.f43300r0 = lVar;
        lVar.a(this);
    }

    public void r() {
        if (getCloseView() != null) {
            this.f43286d0 = a((b3) getCloseView(), false);
            getCloseView().setVisibility(8);
            getCloseView().setOnClickListener(new j0(this));
        }
    }

    public void s() {
        if (getFeedbackButton() != null) {
            getFeedbackButton().setOnClickListener(new k0(this));
        }
    }

    public void setCloseButtonScaleFactor(float f2) {
        this.f43286d0 = f2;
        if (getCloseView() != null) {
            getCloseView().setClickAreaScaleFactor(this.f43286d0);
        }
    }

    public void setCountDownDuration(long j2) {
        e eVar = this.f43301s0;
        if (eVar != null) {
            eVar.f39655d = j2;
            CountDownView countDownView = eVar.f39653b;
            if (countDownView != null) {
                countDownView.setDuration(j2);
            }
        }
    }

    public void setHasReward(boolean z2) {
        this.f43283a0 = z2;
    }

    public void setHideBannerTime(long j2) {
        this.f43273N = j2;
    }

    public void setIsShowEndCard(boolean z2) {
        this.f43282W = z2;
    }

    public void setListener(com.smartdigimkt.p1.t tVar) {
        this.f43303u0 = tVar;
    }

    public void setShowBannerTime(long j2) {
        this.f43271L = j2;
    }

    public void setVideoMute(boolean z2) {
        this.f43284b0 = z2;
    }

    public void t() {
    }

    public void u() {
        PanelView panelView = this.f43290h0;
        if (panelView != null) {
            panelView.setVisibility(4);
            PanelView panelView2 = this.f43290h0;
            c cVar = this.f43217c;
            a aVar = this.f43216b;
            panelView2.init(cVar, aVar, this.f43265F, z.d(aVar), new h0(this));
        }
    }

    public void v() {
        this.f43289g0 = (RelativeLayout) findViewById(k.a(getContext(), "myoffer_rl_root", "id"));
        this.f43295m0 = (CloseImageView) findViewById(k.a(getContext(), "myoffer_btn_close_id", "id"));
        this.f43290h0 = (PanelView) findViewById(k.a(getContext(), "myoffer_banner_view_id", "id"));
        this.f43294l0 = (CountDownView) findViewById(k.a(getContext(), "myoffer_count_down_view_id", "id"));
        this.f43297o0 = (MuteImageView) findViewById(k.a(getContext(), "myoffer_btn_mute_id", "id"));
        this.f43296n0 = (ViewGroup) findViewById(k.a(getContext(), "myoffer_feedback_ll_id", "id"));
        d dVar = new d(this, this.f43216b, this.f43217c, this.f43265F);
        this.f43229o = dVar;
        int aTViewType = getATViewType();
        BasePlayerView basePlayerView = dVar.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setViewType(aTViewType);
        }
        r rVar = this.f43230p;
        if (rVar != null) {
            this.f43229o.f39640g = rVar;
            HashMap map = new HashMap();
            map.put("material_direction", Integer.valueOf(this.f43307y0 > this.f43308z0 ? 2 : 1));
            this.f43230p.a(map);
        }
        this.f43229o.f39643j = new q0(this);
        this.f43301s0 = new e(this.f43216b.f41644r, this.f43294l0, (WebProgressBarView) findViewById(k.a(getContext(), "myoffer_player_view_progress_bar_id", "id")));
        q();
        d(4);
        MuteImageView muteImageView = this.f43297o0;
        if (muteImageView != null) {
            if (muteImageView.getVisibility() != 4) {
                this.f43297o0.setVisibility(4);
            }
            if (this.f43284b0) {
                this.f43297o0.setMute(true);
            } else {
                this.f43297o0.setMute(false);
            }
            this.f43297o0.setOnClickListener(new i0(this));
        }
        r();
        s();
        u();
        t();
        this.f43274O = b(this.f43275P);
    }

    public final boolean w() {
        d dVar;
        BasePlayerView basePlayerView;
        return this.f43264E == 1 && this.f43276Q == 101 && (dVar = this.f43229o) != null && (basePlayerView = dVar.f39641h) != null && (basePlayerView instanceof WebLandpagePlayerView);
    }

    public void x() {
        com.smartdigimkt.p1.t tVar;
        if (1 == this.f43264E) {
            H();
            if (this.f43283a0) {
                return;
            }
            this.f43283a0 = true;
            if (this.f43221g || (tVar = this.f43303u0) == null) {
                return;
            }
            tVar.b();
        }
    }

    public abstract void y();

    public void z() {
        destroy();
        com.smartdigimkt.b4.e eVarA = com.smartdigimkt.b4.e.a();
        eVarA.f39592b.removeCallbacks(this.f43306x0);
        ValueAnimator valueAnimator = this.f43299q0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void b(long j2) {
        e eVar = this.f43301s0;
        if (eVar != null) {
            CountDownView countDownView = eVar.f39653b;
            if (countDownView != null) {
                countDownView.refresh(j2);
            }
            WebProgressBarView webProgressBarView = eVar.f39654c;
            if (webProgressBarView != null) {
                long j3 = eVar.f39655d;
                if (j3 > 0) {
                    webProgressBarView.setProgress((int) ((j2 * 100.0d) / j3));
                } else {
                    webProgressBarView.setProgress(100);
                }
            }
        }
    }

    public BaseScreenATView(Context context, a aVar, c cVar, String str, int i2, int i3) {
        com.smartdigimkt.m3.e eVar;
        super(context, aVar, cVar, str);
        this.f43276Q = 100;
        this.f43281V = false;
        this.f43306x0 = new s0(this);
        this.f43264E = i2;
        this.f43265F = i3;
        this.f43304v0 = false;
        this.f43287e0 = false;
        this.f43305w0 = false;
        if (aVar != null && (eVar = aVar.f41644r) != null && z.a(eVar)) {
            this.f43302t0 = new t(cVar, aVar.f41644r);
        }
        com.smartdigimkt.m3.e eVar2 = this.f43216b.f41644r;
        int i4 = eVar2.f41921c;
        long j2 = i4 > 0 ? i4 * 1000 : i4;
        this.f43271L = j2;
        int i5 = eVar2.f41924d;
        long j3 = i5 > 0 ? i5 * 1000 : i5;
        this.f43272M = j3;
        if (j3 > 0 && j2 >= 0) {
            this.f43273N = j2 + j3;
        } else {
            this.f43273N = j3;
        }
        long j4 = eVar2.f41854F0;
        this.f43277R = j4;
        long j5 = eVar2.f41857G0;
        if (j5 > 0) {
            this.f43278S = j4 + j5;
        }
        this.f43270K = eVar2.f41933g * 1000;
        this.f43284b0 = eVar2.f41930f == 0;
        if (1 == i2) {
            if (this.f43217c.g()) {
                this.f43276Q = 100;
            } else {
                com.smartdigimkt.m3.e eVar3 = this.f43216b.f41644r;
                if (eVar3.f41949l0 == 1) {
                    this.f43276Q = 101;
                } else {
                    int i6 = eVar3.f41952m0;
                    if (i6 > 0) {
                        this.f43276Q = i6;
                    }
                }
            }
            long j6 = this.f43216b.f41644r.f41984x;
            this.f43280U = j6 <= 0 ? WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS : j6;
        }
    }

    public void c(int i2) {
        com.smartdigimkt.i0.l lVarC = c();
        lVarC.f40671g = getAdClickRecord();
        p.a(7, this.f43217c, lVarC);
        if (this.f43303u0 != null) {
            h.a(this.f43217c, this.f43216b, this.f43240z, this.f43239y);
            com.smartdigimkt.p1.t tVar = this.f43303u0;
            tVar.f42552b = i2;
            tVar.a();
        }
    }

    public void d(int i2) {
        e eVar = this.f43301s0;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(int i2, int i3) {
        this.f43286d0 = a((b3) getCloseView(), true);
        if (this.f43285c0 || this.f43217c == null) {
            return;
        }
        if (i2 == -100) {
            y();
        } else {
            super.a(i2, i3);
        }
    }

    public final void a(com.smartdigimkt.i0.f fVar) {
        com.smartdigimkt.p1.t tVar = this.f43303u0;
        if (tVar != null) {
            tVar.a(fVar);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(u uVar) {
        this.f43288f0 = true;
        com.smartdigimkt.p1.t tVar = this.f43303u0;
        if (tVar != null) {
            tVar.a(uVar);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(boolean z2) {
        com.smartdigimkt.p1.t tVar = this.f43303u0;
        if (tVar != null) {
            tVar.a(z2);
        }
    }

    public void a(long j2) {
        long j3 = this.f43273N;
        if (j3 >= 0 && j2 > j3) {
            p();
        } else if (this.f43274O) {
            long j4 = this.f43271L;
            if (j4 >= 0 && j2 >= j4) {
                J();
            }
        }
        if (j2 <= this.f43278S) {
            if (j2 >= this.f43277R) {
                K();
            }
        } else {
            FullScreenHeaderPanelView fullScreenHeaderPanelView = this.f43298p0;
            if (fullScreenHeaderPanelView == null || fullScreenHeaderPanelView.getVisibility() == 8) {
                return;
            }
            this.f43298p0.setVisibility(8);
        }
    }
}
