package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
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
import com.anythink.core.common.inner.ui.HalfScreenATView;
import com.anythink.core.common.inner.ui.MuteImageView;
import com.anythink.core.common.inner.ui.PanelView;
import com.anythink.core.common.inner.ui.thirdparty.b;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.g;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.Timer;

/* loaded from: classes2.dex */
public class ThirdPartyHalfScreenATView extends HalfScreenATView implements com.anythink.core.common.l.e.a.c {

    /* renamed from: P, reason: collision with root package name */
    private static final String f5232P = "ThirdPartyHalfScreenATView";

    /* renamed from: Q, reason: collision with root package name */
    private BaseAd f5233Q;

    /* renamed from: R, reason: collision with root package name */
    private View f5234R;

    /* renamed from: S, reason: collision with root package name */
    private Timer f5235S;

    /* renamed from: T, reason: collision with root package name */
    private com.anythink.core.common.inner.mixad.f.b f5236T;

    /* renamed from: U, reason: collision with root package name */
    private boolean f5237U;

    /* renamed from: V, reason: collision with root package name */
    private boolean f5238V;

    /* renamed from: W, reason: collision with root package name */
    private FrameLayout f5239W;
    private CountDownTimer aa;

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyHalfScreenATView$4, reason: invalid class name */
    public class AnonymousClass4 extends CountDownTimer {
        public AnonymousClass4(long j2) {
            super(j2, 500L);
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            ThirdPartyHalfScreenATView.this.p();
            ThirdPartyHalfScreenATView.this.b(8);
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j2) {
            ThirdPartyHalfScreenATView.a(ThirdPartyHalfScreenATView.this, j2);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyHalfScreenATView$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f5245a;

        public AnonymousClass5(long j2) {
            this.f5245a = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ThirdPartyHalfScreenATView.this.a(this.f5245a);
        }
    }

    public ThirdPartyHalfScreenATView(Context context) {
        super(context);
        this.f5237U = false;
        this.f5238V = false;
    }

    private void A() {
        Timer timer = this.f5235S;
        if (timer != null) {
            timer.cancel();
            this.f5235S = null;
        }
        CountDownTimer countDownTimer = this.aa;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.aa = null;
        }
    }

    private boolean B() {
        if (F()) {
            return true;
        }
        BaseAd baseAd = this.f5233Q;
        return (baseAd == null || !TextUtils.equals(baseAd.getAdType(), "1") || this.f5234R == null) ? false : true;
    }

    private void C() {
        ViewGroup customAdContainer;
        if (this.f4880v == null || (customAdContainer = this.f5233Q.getCustomAdContainer()) == null) {
            return;
        }
        handleFullScreenClick(customAdContainer);
        ViewParent parent = this.f4880v.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            int iIndexOfChild = viewGroup.indexOfChild(this.f4880v);
            if (iIndexOfChild >= 0) {
                viewGroup.removeViewAt(iIndexOfChild);
            }
            ViewGroup.LayoutParams layoutParams = this.f4880v.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = customAdContainer.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new ViewGroup.LayoutParams(layoutParams.width, layoutParams.height);
            } else {
                if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
                } else if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                    ((RelativeLayout.LayoutParams) layoutParams2).addRule(13);
                } else if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                    ((LinearLayout.LayoutParams) layoutParams2).gravity = 17;
                }
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            }
            customAdContainer.addView(this.f4880v, layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
            layoutParams3.addRule(13);
            layoutParams3.leftMargin = p.a(getContext(), 26.0f);
            layoutParams3.rightMargin = p.a(getContext(), 26.0f);
            if (customAdContainer.getParent() instanceof ViewGroup) {
                ((ViewGroup) customAdContainer.getParent()).removeView(customAdContainer);
            }
            viewGroup.addView(customAdContainer, iIndexOfChild, layoutParams3);
        }
    }

    private void D() {
        ArrayList arrayList = new ArrayList();
        View view = this.f5234R;
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
        this.f5236T = new b.a().a(arrayList).a(this.f4881w.getTitleView()).b(this.f4881w.getDescView()).c(this.f4881w.getCTAButton()).a();
    }

    private boolean E() {
        w wVar = this.f4825g;
        return (wVar == null || !TextUtils.isEmpty(wVar.n()) || this.f5234R == null) ? false : true;
    }

    private boolean F() {
        BaseAd baseAd = this.f5233Q;
        return baseAd != null && baseAd.isNativeExpress();
    }

    public static /* synthetic */ boolean n(ThirdPartyHalfScreenATView thirdPartyHalfScreenATView) {
        thirdPartyHalfScreenATView.f5238V = true;
        return true;
    }

    private void y() {
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
        } else if (iQ == 1) {
            if (this.f4881w.getCTAButton() != null) {
                arrayList.add(this.f4881w.getCTAButton());
            }
            if (u()) {
                c.a(this.f5233Q.getAdIconView());
            }
        } else if (iQ == 2) {
            arrayList.addAll(this.f4881w.getClickViews());
            arrayList.add(this.f4881w);
        }
        final com.anythink.core.basead.b.b bVar = new com.anythink.core.basead.b.b();
        bVar.a(this.f4881w.getTitleView());
        bVar.d(this.f4881w.getDescView());
        bVar.e(this.f4881w.getCTAButton());
        bVar.b(this.f4881w.getIconView());
        b.a(this.f4880v, this.f5233Q, new b.a() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyHalfScreenATView.3
            @Override // com.anythink.core.common.inner.ui.thirdparty.b.a
            public final void a(View view, View view2, View view3) {
                bVar.g(view);
                bVar.h(view2);
                bVar.f(view3);
            }
        });
        this.f5233Q.registerListener(this.f5239W, arrayList, com.anythink.core.common.inner.mixad.f.a.a(this.f4824f.f4490j, 0, 0), bVar);
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
        } else if (this.aa == null) {
            this.aa = new AnonymousClass4(this.f4872n).start();
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView, com.anythink.core.common.inner.ui.BaseATView
    public void destroy() {
        super.destroy();
        Timer timer = this.f5235S;
        if (timer != null) {
            timer.cancel();
            this.f5235S = null;
        }
        CountDownTimer countDownTimer = this.aa;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.aa = null;
        }
        BaseAd baseAd = this.f5233Q;
        if (baseAd != null) {
            baseAd.setNativeEventListener(null);
            this.f5233Q.clear(this);
            this.f5233Q.destroy();
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
        com.anythink.core.common.inner.mixad.f.b bVar = this.f5236T;
        if (bVar != null) {
            bVar.a(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void handleFullScreenClick(ViewGroup viewGroup) {
        if (F() || !x() || viewGroup == null || !w()) {
            return;
        }
        c.a(viewGroup);
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void init() {
        BaseAd baseAd;
        b();
        this.f4873o = a(this.f4874p);
        this.f5233Q.setNativeEventListener(new o() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyHalfScreenATView.1
            @Override // com.anythink.core.common.d.o
            public final void a(String str, String str2) {
                ThirdPartyHalfScreenATView.this.f();
                ThirdPartyHalfScreenATView.this.a(com.anythink.core.common.inner.b.b.a(str, str2));
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
                if (ThirdPartyHalfScreenATView.this.f5236T != null) {
                    iA = ThirdPartyHalfScreenATView.this.f5236T.a();
                }
                ThirdPartyHalfScreenATView thirdPartyHalfScreenATView = ThirdPartyHalfScreenATView.this;
                thirdPartyHalfScreenATView.hasClick = true;
                int i2 = com.anythink.core.common.inner.mixad.f.b.f4762g;
                if (((BaseScreenATView) thirdPartyHalfScreenATView).f4884z != null) {
                    if (((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4884z.isTouch()) {
                        i2 = com.anythink.core.common.inner.mixad.f.b.f4763h;
                    }
                    ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4884z.setVisibility(8);
                }
                if (((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E.b(new e().a(i2, iA));
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdDislikeButtonClick() {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdImpressed() {
                if (ThirdPartyHalfScreenATView.this.f5237U) {
                    return;
                }
                ThirdPartyHalfScreenATView.b(ThirdPartyHalfScreenATView.this);
                if (((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E.a(new e());
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoEnd() {
                if (ThirdPartyHalfScreenATView.this.f5238V) {
                    return;
                }
                ThirdPartyHalfScreenATView.n(ThirdPartyHalfScreenATView.this);
                ThirdPartyHalfScreenATView.this.p();
                if (((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E.b();
                }
                ThirdPartyHalfScreenATView.this.f();
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoProgress(int i2) {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoStart() {
                if (((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4855E.a();
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
        } else if (3 == this.f4866a) {
            if (!F() && ((baseAd = this.f5233Q) == null || !TextUtils.equals(baseAd.getAdType(), "1") || this.f5234R == null)) {
                f();
            } else {
                c();
            }
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
            } else if (this.aa == null) {
                this.aa = new AnonymousClass4(this.f4872n).start();
            }
        }
        D();
    }

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView
    public boolean isAttachRoot() {
        return false;
    }

    public static /* synthetic */ boolean b(ThirdPartyHalfScreenATView thirdPartyHalfScreenATView) {
        thirdPartyHalfScreenATView.f5237U = true;
        return true;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void c() {
        BaseAd baseAd;
        try {
            if (this.f5234R == null || (baseAd = this.f5233Q) == null) {
                return;
            }
            baseAd.getVideoDuration();
            View viewFindViewById = findViewById(p.a(getContext(), "myoffer_player_view_id", "id"));
            if (viewFindViewById != null) {
                this.f4880v.addView(this.f5234R, 1, viewFindViewById.getLayoutParams());
            }
            n();
            y();
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void f() {
        if (F()) {
            return;
        }
        w wVar = this.f4825g;
        if (wVar != null && TextUtils.isEmpty(wVar.n()) && this.f5234R == null) {
            return;
        }
        super.f();
    }

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView, com.anythink.core.common.inner.ui.BaseScreenATView
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
            BaseAd baseAd = this.f5233Q;
            if (baseAd != null) {
                this.f4881w.setBaseAdIconView(baseAd.getAdIconView());
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView, com.anythink.core.common.inner.ui.BaseScreenATView
    public final void j() {
        View cTAButton;
        super.j();
        w wVar = this.f4825g;
        String strP = wVar != null ? wVar.p() : "";
        if (this.f4881w == null || !TextUtils.isEmpty(strP) || (cTAButton = this.f4881w.getCTAButton()) == null) {
            return;
        }
        cTAButton.setVisibility(8);
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
        this.f4852B.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyHalfScreenATView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (ThirdPartyHalfScreenATView.this.f5234R == null || ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4852B == null || ThirdPartyHalfScreenATView.this.f5233Q == null) {
                    return;
                }
                ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4879u = !((BaseScreenATView) r2).f4879u;
                ((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4852B.setMute(((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4879u);
                ThirdPartyHalfScreenATView.this.f5233Q.setVideoMute(((BaseScreenATView) ThirdPartyHalfScreenATView.this).f4879u);
            }
        });
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
        if (s() != null && s().getVisibility() != 0) {
            s().setVisibility(0);
        }
        CountDownTimer countDownTimer = this.aa;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.aa = null;
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

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView, com.anythink.core.common.inner.ui.BaseScreenATView
    public final void q() {
        if (E()) {
            ak.a(this.f5234R);
            View viewFindViewById = findViewById(p.a(getContext(), "myoffer_player_view_id", "id"));
            if (viewFindViewById != null) {
                this.f4880v.addView(this.f5234R, 1, viewFindViewById.getLayoutParams());
            }
        } else {
            super.q();
        }
        D();
        y();
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void r() {
        if (this.f5234R != null && !E() && this.f5234R.getParent() != null) {
            ((ViewGroup) this.f5234R.getParent()).removeView(this.f5234R);
        }
        b(8);
        MuteImageView muteImageView = this.f4852B;
        if (muteImageView != null) {
            muteImageView.setVisibility(8);
        }
    }

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView, com.anythink.core.common.inner.ui.BaseScreenATView
    public final void b() {
        ViewGroup customAdContainer;
        super.b();
        ViewGroup viewGroup = this.f4851A;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        try {
            if (this.f4880v != null && (customAdContainer = this.f5233Q.getCustomAdContainer()) != null) {
                handleFullScreenClick(customAdContainer);
                ViewParent parent = this.f4880v.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent;
                    int iIndexOfChild = viewGroup2.indexOfChild(this.f4880v);
                    if (iIndexOfChild >= 0) {
                        viewGroup2.removeViewAt(iIndexOfChild);
                    }
                    ViewGroup.LayoutParams layoutParams = this.f4880v.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = customAdContainer.getLayoutParams();
                    if (layoutParams2 == null) {
                        layoutParams2 = new ViewGroup.LayoutParams(layoutParams.width, layoutParams.height);
                    } else {
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
                        } else if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                            ((RelativeLayout.LayoutParams) layoutParams2).addRule(13);
                        } else if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                            ((LinearLayout.LayoutParams) layoutParams2).gravity = 17;
                        }
                        layoutParams2.width = layoutParams.width;
                        layoutParams2.height = layoutParams.height;
                    }
                    customAdContainer.addView(this.f4880v, layoutParams2);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
                    layoutParams3.addRule(13);
                    layoutParams3.leftMargin = p.a(getContext(), 26.0f);
                    layoutParams3.rightMargin = p.a(getContext(), 26.0f);
                    if (customAdContainer.getParent() instanceof ViewGroup) {
                        ((ViewGroup) customAdContainer.getParent()).removeView(customAdContainer);
                    }
                    viewGroup2.addView(customAdContainer, iIndexOfChild, layoutParams3);
                }
            }
        } catch (Throwable th) {
            Log.e("anythink", "addCustomAdContainer error", th);
        }
        View viewFindViewById = findViewById(p.a(getContext(), "myoffer_ad_lable", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ThirdPartyHalfScreenATView(Context context, x xVar, w wVar, String str, int i2, int i3, BaseAd baseAd, com.anythink.core.common.l.a aVar) {
        FrameLayout.LayoutParams layoutParams;
        super(context, xVar, wVar, str, i2, i3);
        this.f5237U = false;
        this.f5238V = false;
        this.f5233Q = baseAd;
        this.f5234R = baseAd.getAdMediaView(new Object[0]);
        if (aVar instanceof View) {
            View view = (View) aVar;
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams = new FrameLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-2, -2);
            }
            layoutParams.gravity = 17;
            this.f5239W.addView(view, layoutParams);
        }
        if (F()) {
            this.f4876r = -1;
        }
    }

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView, com.anythink.core.common.inner.ui.BaseATView
    public final void a() {
        super.a();
        this.f5239W = new FrameLayout(getContext());
        this.f5239W.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f5239W.addView(((HalfScreenATView) this).f5001K);
        addView(this.f5239W);
    }

    private void c(long j2) {
        post(new AnonymousClass5(j2));
    }

    @Override // com.anythink.core.common.inner.ui.HalfScreenATView, com.anythink.core.common.inner.ui.BaseScreenATView
    public final boolean a(int i2) {
        if (i2 == 3 || i2 == 4) {
            return com.anythink.core.common.inner.a.a.a(this.f4825g);
        }
        return i2 == 7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(com.anythink.core.common.l.a aVar) {
        FrameLayout.LayoutParams layoutParams;
        if (aVar instanceof View) {
            View view = (View) aVar;
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams = new FrameLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-2, -2);
            }
            layoutParams.gravity = 17;
            this.f5239W.addView(view, layoutParams);
        }
    }

    public static /* synthetic */ void a(ThirdPartyHalfScreenATView thirdPartyHalfScreenATView, long j2) {
        thirdPartyHalfScreenATView.post(thirdPartyHalfScreenATView.new AnonymousClass5(j2));
    }
}
