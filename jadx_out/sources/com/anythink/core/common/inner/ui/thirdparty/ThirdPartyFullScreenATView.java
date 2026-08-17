package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.o;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.inner.e.e;
import com.anythink.core.common.inner.mixad.f.b;
import com.anythink.core.common.inner.ui.BaseEndCardView;
import com.anythink.core.common.inner.ui.BaseScreenATView;
import com.anythink.core.common.inner.ui.CloseShadeView;
import com.anythink.core.common.inner.ui.MuteImageView;
import com.anythink.core.common.inner.ui.PanelView;
import com.anythink.core.common.inner.ui.thirdparty.b;
import com.anythink.core.common.l.g.d;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.g;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

/* loaded from: classes2.dex */
public class ThirdPartyFullScreenATView extends BaseScreenATView implements com.anythink.core.common.l.e.a.c {

    /* renamed from: M, reason: collision with root package name */
    private static final String f5215M = "ThirdPartyFullScreenATView";

    /* renamed from: K, reason: collision with root package name */
    View f5216K;

    /* renamed from: L, reason: collision with root package name */
    Timer f5217L;

    /* renamed from: N, reason: collision with root package name */
    private BaseAd f5218N;

    /* renamed from: O, reason: collision with root package name */
    private CountDownTimer f5219O;

    /* renamed from: P, reason: collision with root package name */
    private TextView f5220P;

    /* renamed from: Q, reason: collision with root package name */
    private com.anythink.core.common.inner.mixad.f.b f5221Q;

    /* renamed from: R, reason: collision with root package name */
    private boolean f5222R;

    /* renamed from: S, reason: collision with root package name */
    private boolean f5223S;

    /* renamed from: T, reason: collision with root package name */
    private FrameLayout f5224T;

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView$2, reason: invalid class name */
    public class AnonymousClass2 extends CountDownTimer {
        public AnonymousClass2(long j2) {
            super(j2, 500L);
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            ThirdPartyFullScreenATView.this.p();
            ThirdPartyFullScreenATView.this.b(8);
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j2) {
            ThirdPartyFullScreenATView.a(ThirdPartyFullScreenATView.this, j2);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f5227a;

        public AnonymousClass3(long j2) {
            this.f5227a = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ThirdPartyFullScreenATView.this.a(this.f5227a);
        }
    }

    public ThirdPartyFullScreenATView(Context context) {
        super(context);
        this.f5222R = false;
        this.f5223S = false;
    }

    private void A() {
        ArrayList arrayList = new ArrayList();
        if (this.f4876r >= this.ranDom) {
            arrayList.add(this.f4884z);
        } else {
            CloseShadeView closeShadeView = this.f4884z;
            if (closeShadeView != null) {
                closeShadeView.setVisibility(8);
            }
        }
        int iQ = this.f4824f.f4500t.q();
        if (iQ == 0) {
            arrayList.addAll(this.f4881w.getClickViews());
            arrayList.add(this.f4881w);
            BaseEndCardView baseEndCardView = this.f4882x;
            if (baseEndCardView != null) {
                arrayList.add(baseEndCardView);
            }
            if (v()) {
                a(arrayList);
            }
        } else if (iQ == 1) {
            a(arrayList);
            if (u()) {
                c.a(this.f5218N.getAdIconView());
            }
        } else if (iQ == 2) {
            arrayList.addAll(this.f4881w.getClickViews());
            arrayList.add(this.f4881w);
            if (v()) {
                a(arrayList);
            }
        }
        final com.anythink.core.basead.b.b bVar = new com.anythink.core.basead.b.b();
        bVar.a(this.f4881w.getTitleView());
        bVar.d(this.f4881w.getDescView());
        bVar.e(this.f4881w.getCTAButton());
        bVar.b(this.f4881w.getIconView());
        b.a(this.f4880v, this.f5218N, new b.a() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView.4
            @Override // com.anythink.core.common.inner.ui.thirdparty.b.a
            public final void a(View view, View view2, View view3) {
                bVar.g(view);
                bVar.h(view2);
                bVar.f(view3);
            }
        });
        this.f5218N.registerListener(this.f5224T, arrayList, com.anythink.core.common.inner.mixad.f.a.a(this.f4824f.f4490j, 0, 0), bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void B() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView.B():void");
    }

    private void C() {
        Timer timer = this.f5217L;
        if (timer != null) {
            timer.cancel();
            this.f5217L = null;
        }
        CountDownTimer countDownTimer = this.f5219O;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f5219O = null;
        }
    }

    private boolean D() {
        if (H()) {
            return true;
        }
        BaseAd baseAd = this.f5218N;
        return (baseAd == null || !TextUtils.equals(baseAd.getAdType(), "1") || this.f5216K == null) ? false : true;
    }

    private void E() {
        this.f4882x.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        t().setVisibility(0);
        this.f4880v.addView(this.f4882x, 1);
    }

    private void F() {
    }

    private boolean G() {
        w wVar = this.f4825g;
        return (wVar == null || !TextUtils.isEmpty(wVar.n()) || this.f5216K == null) ? false : true;
    }

    private boolean H() {
        BaseAd baseAd = this.f5218N;
        return baseAd != null && baseAd.isNativeExpress();
    }

    public static /* synthetic */ boolean n(ThirdPartyFullScreenATView thirdPartyFullScreenATView) {
        thirdPartyFullScreenATView.f5223S = true;
        return true;
    }

    private void y() {
        ArrayList arrayList = new ArrayList();
        View view = this.f5216K;
        if (view != null) {
            arrayList.add(view);
        }
        BaseEndCardView baseEndCardView = this.f4882x;
        if (baseEndCardView != null) {
            arrayList.add(baseEndCardView);
        }
        PanelView panelView = this.f4881w;
        if (panelView != null) {
            arrayList.add(panelView.getIconView());
        }
        this.f5221Q = new b.a().a(arrayList).a(this.f4881w.getTitleView()).b(this.f4881w.getDescView()).c(this.f4881w.getCTAButton()).a();
    }

    private void z() {
        int i2 = this.f4872n;
        if (i2 <= 0) {
            b(8);
            p();
        } else {
            b(i2);
            b(0);
        }
        if (this.f4872n <= 0) {
            p();
        } else if (this.f5219O == null) {
            this.f5219O = new AnonymousClass2(this.f4872n).start();
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView, com.anythink.core.common.inner.ui.BaseATView
    public void destroy() {
        super.destroy();
        Timer timer = this.f5217L;
        if (timer != null) {
            timer.cancel();
            this.f5217L = null;
        }
        CountDownTimer countDownTimer = this.f5219O;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f5219O = null;
        }
        BaseAd baseAd = this.f5218N;
        if (baseAd != null) {
            baseAd.setNativeEventListener(null);
            this.f5218N.clear(this);
            this.f5218N.destroy();
        }
        RelativeLayout relativeLayout = this.f4880v;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
        PanelView panelView = this.f4881w;
        if (panelView != null) {
            panelView.removeAllViews();
        }
        BaseEndCardView baseEndCardView = this.f4882x;
        if (baseEndCardView != null) {
            baseEndCardView.mListener = null;
        }
        ViewGroup viewGroup = this.f4851A;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(null);
            this.f4851A.removeAllViews();
        }
        removeAllViews();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        com.anythink.core.common.inner.mixad.f.b bVar = this.f5221Q;
        if (bVar != null) {
            bVar.a(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void handleFullScreenClick(ViewGroup viewGroup) {
        if (H() || !x() || viewGroup == null || !w()) {
            return;
        }
        c.a(viewGroup);
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void init() {
        b();
        this.f4873o = a(this.f4874p);
        this.f5218N.setNativeEventListener(new o() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView.1
            @Override // com.anythink.core.common.d.o
            public final void a(String str, String str2) {
                ThirdPartyFullScreenATView.this.f();
                ThirdPartyFullScreenATView.this.a(com.anythink.core.common.inner.b.b.a(str, str2));
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdActReward(int i2) {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdActRewardSuccess() {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdClicked(View view) {
                int iA = com.anythink.core.common.inner.mixad.f.b.f4756a;
                if (ThirdPartyFullScreenATView.this.f5221Q != null) {
                    iA = ThirdPartyFullScreenATView.this.f5221Q.a();
                }
                ThirdPartyFullScreenATView thirdPartyFullScreenATView = ThirdPartyFullScreenATView.this;
                thirdPartyFullScreenATView.hasClick = true;
                int i2 = com.anythink.core.common.inner.mixad.f.b.f4762g;
                if (((BaseScreenATView) thirdPartyFullScreenATView).f4884z != null) {
                    if (((BaseScreenATView) ThirdPartyFullScreenATView.this).f4884z.isTouch()) {
                        i2 = com.anythink.core.common.inner.mixad.f.b.f4763h;
                    }
                    ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4884z.setVisibility(8);
                }
                if (((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E.b(new e().a(i2, iA));
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdDislikeButtonClick() {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdImpressed() {
                if (ThirdPartyFullScreenATView.this.f5222R) {
                    return;
                }
                ThirdPartyFullScreenATView.b(ThirdPartyFullScreenATView.this);
                if (((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E.a(new e());
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoEnd() {
                if (ThirdPartyFullScreenATView.this.f5223S) {
                    return;
                }
                ThirdPartyFullScreenATView.n(ThirdPartyFullScreenATView.this);
                ThirdPartyFullScreenATView.this.p();
                if (((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E.b();
                }
                ThirdPartyFullScreenATView.this.f();
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoProgress(int i2) {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoStart() {
                if (((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4855E.a();
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onDeeplinkCallback(boolean z2) {
            }

            @Override // com.anythink.core.common.d.n
            public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            }
        });
        if (this.f4877s) {
            f();
        } else {
            int i2 = this.f4866a;
            if (3 == i2 || 1 == i2) {
                if (D()) {
                    c();
                } else {
                    f();
                }
                int i3 = this.f4872n;
                if (i3 <= 0) {
                    b(8);
                    p();
                } else {
                    b(i3);
                    b(0);
                }
                if (this.f4872n <= 0) {
                    p();
                } else if (this.f5219O == null) {
                    this.f5219O = new AnonymousClass2(this.f4872n).start();
                }
            }
        }
        y();
    }

    public static /* synthetic */ boolean b(ThirdPartyFullScreenATView thirdPartyFullScreenATView) {
        thirdPartyFullScreenATView.f5222R = true;
        return true;
    }

    private void c(long j2) {
        post(new AnonymousClass3(j2));
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void f() {
        if (H()) {
            return;
        }
        w wVar = this.f4825g;
        if (wVar != null && TextUtils.isEmpty(wVar.n()) && this.f5216K == null) {
            return;
        }
        super.f();
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final int g() {
        int i2 = this.f4874p;
        return i2 == 8 ? i2 : this.f4868c < this.f4869d ? this.f4857G >= this.f4858H ? 1 : 5 : this.f4857G < this.f4858H ? 2 : 6;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void h() {
        String strN = this.f4825g.n();
        if (TextUtils.isEmpty(strN)) {
            return;
        }
        com.anythink.core.common.inner.a.b.a();
        int[] iArrA = g.a(com.anythink.core.common.inner.a.b.a(strN));
        if (iArrA != null) {
            int i2 = iArrA[0];
            this.f4859I = i2;
            int i3 = iArrA[1];
            this.f4860J = i3;
            this.f4857G = i2;
            this.f4858H = i3;
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void i() {
        PanelView panelView = this.f4881w;
        if (panelView != null) {
            panelView.setVisibility(4);
            this.f4881w.init(this.f4825g, this.f4824f, this.f4867b, false, null);
            BaseAd baseAd = this.f5218N;
            if (baseAd != null) {
                this.f4881w.setBaseAdIconView(baseAd.getAdIconView());
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void j() {
        View cTAButton;
        super.j();
        if (this.f4881w != null) {
            if (com.anythink.core.common.inner.a.a.a(this.f4825g)) {
                this.f4874p = 0;
            } else {
                this.f4874p = 8;
            }
            this.f4881w.setLayoutType(this.f4874p);
            w wVar = this.f4825g;
            if ((TextUtils.isEmpty(wVar != null ? wVar.p() : "") || (this.f4874p == 8 && this.f4824f.f4500t.q() == 0)) && (cTAButton = this.f4881w.getCTAButton()) != null) {
                cTAButton.setVisibility(8);
            }
            this.f4881w.setVisibility(0);
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void k() {
        MuteImageView muteImageView = this.f4852B;
        if (muteImageView == null) {
            return;
        }
        if (this.f4879u) {
            muteImageView.setMute(true);
        } else {
            muteImageView.setMute(false);
        }
        this.f4852B.setVisibility(4);
        this.f4852B.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThirdPartyFullScreenATView thirdPartyFullScreenATView = ThirdPartyFullScreenATView.this;
                if (thirdPartyFullScreenATView.f5216K == null || ((BaseScreenATView) thirdPartyFullScreenATView).f4852B == null || ThirdPartyFullScreenATView.this.f5218N == null) {
                    return;
                }
                ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4879u = !((BaseScreenATView) r2).f4879u;
                ((BaseScreenATView) ThirdPartyFullScreenATView.this).f4852B.setMute(((BaseScreenATView) ThirdPartyFullScreenATView.this).f4879u);
                ThirdPartyFullScreenATView.this.f5218N.setVideoMute(((BaseScreenATView) ThirdPartyFullScreenATView.this).f4879u);
            }
        });
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void l() {
        super.m();
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void n() {
        super.n();
        x xVar = this.f4824f;
        if (xVar == null) {
            return;
        }
        int i2 = xVar.f4490j;
        MuteImageView muteImageView = this.f4852B;
        if (muteImageView == null || i2 == 8) {
            return;
        }
        muteImageView.setVisibility(8);
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void p() {
        super.p();
        CountDownTimer countDownTimer = this.f5219O;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f5219O = null;
        }
        CloseShadeView closeShadeView = this.f4884z;
        if (closeShadeView != null) {
            if (this.f4876r < this.ranDom || this.hasClick) {
                closeShadeView.setVisibility(8);
            } else {
                closeShadeView.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q() {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyFullScreenATView.q():void");
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void r() {
        if (this.f5216K != null && !G() && this.f5216K.getParent() != null) {
            ((ViewGroup) this.f5216K.getParent()).removeView(this.f5216K);
        }
        b(8);
        MuteImageView muteImageView = this.f4852B;
        if (muteImageView != null) {
            muteImageView.setVisibility(8);
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void b() {
        super.b();
        this.f5220P = (TextView) findViewById(p.a(getContext(), "myoffer_tv_reward_tip", "id"));
        ViewGroup viewGroup = this.f4851A;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        if (this.f5220P != null) {
            BaseAd baseAd = this.f5218N;
            if ((baseAd instanceof d) && ((d) baseAd).s()) {
                this.f5220P.setVisibility(0);
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void c() {
        View view = this.f5216K;
        if (view != null) {
            this.f4880v.addView(view, 0, new RelativeLayout.LayoutParams(-1, -1));
            n();
            A();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ThirdPartyFullScreenATView(Context context, x xVar, w wVar, String str, int i2, int i3, BaseAd baseAd, com.anythink.core.common.l.a aVar) {
        super(context, xVar, wVar, str, i2, i3);
        this.f5222R = false;
        this.f5223S = false;
        this.f5218N = baseAd;
        View adMediaView = baseAd.getAdMediaView(new Object[0]);
        this.f5216K = adMediaView;
        if (adMediaView != null && this.f4824f.f4490j == 28) {
            c.a(adMediaView);
        }
        if (aVar instanceof View) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            this.f5224T.addView((View) aVar, layoutParams);
        }
        if (H()) {
            this.f4876r = -1;
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a() {
        this.f5224T = new FrameLayout(getContext());
        this.f5224T.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f5224T.addView(LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_thirdparty_full_screen", "layout"), (ViewGroup) this, false));
        addView(this.f5224T);
    }

    private void a(List<View> list) {
        if (this.f4881w.getCTAButton() != null) {
            list.add(this.f4881w.getCTAButton());
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final boolean a(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 5 || i2 == 6) {
            return com.anythink.core.common.inner.a.a.a(this.f4825g);
        }
        return i2 == 8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(com.anythink.core.common.l.a aVar) {
        if (aVar instanceof View) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            this.f5224T.addView((View) aVar, layoutParams);
        }
    }

    private void a(View view) {
        if (view == null || this.f4824f.f4490j != 28) {
            return;
        }
        c.a(view);
    }

    private void a(ViewGroup.LayoutParams layoutParams) {
        View view = this.f5216K;
        if (view == null || this.f4880v == null) {
            return;
        }
        ak.a(view);
        this.f4880v.addView(this.f5216K, 1, layoutParams);
    }

    public static /* synthetic */ void a(ThirdPartyFullScreenATView thirdPartyFullScreenATView, long j2) {
        thirdPartyFullScreenATView.post(thirdPartyFullScreenATView.new AnonymousClass3(j2));
    }
}
