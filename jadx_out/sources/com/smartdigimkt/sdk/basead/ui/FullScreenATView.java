package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.k2.p;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.g;
import com.smartdigimkt.m3.h;
import com.smartdigimkt.m3.o;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.r2.r;
import com.smartdigimkt.r2.s;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResult;
import com.smartdigimkt.sdk.basead.ui.animplayerview.AlbumScaleAnimPlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.EmptyAnimPlayer;
import com.smartdigimkt.sdk.basead.ui.animplayerview.GuideToClickAnimPlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.RedPacketAnimPlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.ViewPagerAnimPlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.v1.m2;
import com.smartdigimkt.v1.p2;
import com.smartdigimkt.v1.q2;
import com.smartdigimkt.v1.r2;
import com.smartdigimkt.v1.s2;
import com.smartdigimkt.v1.u4;
import com.smartdigimkt.v1.v4;
import com.smartdigimkt.z.z;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class FullScreenATView extends BaseScreenATView {
    public static final String TAG = "FullScreenATView";

    /* renamed from: C0, reason: collision with root package name */
    public CountDownCloseView f43402C0;

    /* renamed from: D0, reason: collision with root package name */
    public CloseHeaderView f43403D0;

    /* renamed from: E0, reason: collision with root package name */
    public PanelView f43404E0;

    /* renamed from: F0, reason: collision with root package name */
    public FullScreenHeaderPanelView f43405F0;

    /* renamed from: G0, reason: collision with root package name */
    public boolean f43406G0;

    /* renamed from: H0, reason: collision with root package name */
    public long f43407H0;

    /* renamed from: I0, reason: collision with root package name */
    public long f43408I0;

    /* renamed from: J0, reason: collision with root package name */
    public LinearLayout f43409J0;

    /* renamed from: K0, reason: collision with root package name */
    public TextView f43410K0;

    /* renamed from: L0, reason: collision with root package name */
    public ImageView f43411L0;

    /* renamed from: M0, reason: collision with root package name */
    public boolean f43412M0;

    /* renamed from: N0, reason: collision with root package name */
    public boolean f43413N0;

    /* renamed from: O0, reason: collision with root package name */
    public boolean f43414O0;

    public FullScreenATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void A() {
        int iIndexOfChild;
        super.A();
        if (this.f43264E == 1 && this.f43283a0) {
            RoundImageView roundImageView = new RoundImageView(getContext().getApplicationContext());
            roundImageView.setImageResource(k.a(getContext(), "myoffer_reward_icon", "drawable"));
            float f2 = 60;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(k.a(getContext(), f2), k.a(getContext(), f2));
            if (b(this.f43275P)) {
                int i2 = this.f43275P;
                if (i2 == 102 || i2 == 106) {
                    PanelView panelView = getPanelView();
                    layoutParams.topMargin = k.a(getContext(), 22.0f);
                    if (panelView != null) {
                        layoutParams.addRule(0, panelView.getId());
                        layoutParams.rightMargin = k.a(getContext(), -(f2 / 2.0f));
                    } else {
                        layoutParams.rightMargin = k.a(getContext(), 374.0f);
                        layoutParams.addRule(11);
                    }
                } else {
                    layoutParams.leftMargin = k.a(getContext(), 12.0f);
                    layoutParams.topMargin = k.a(getContext(), 12.0f);
                }
            } else {
                layoutParams.leftMargin = k.a(getContext(), 12.0f);
                layoutParams.topMargin = k.a(getContext(), 12.0f);
            }
            roundImageView.setLayoutParams(layoutParams);
            try {
                iIndexOfChild = this.f43289g0.indexOfChild(this.f43290h0) + 1;
            } catch (Throwable unused) {
                iIndexOfChild = 2;
            }
            this.f43289g0.addView(roundImageView, iIndexOfChild);
        }
        LinearLayout linearLayout = this.f43409J0;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        if (z.b(this.f43217c)) {
            PanelView panelView2 = this.f43290h0;
            if (panelView2 != null) {
                panelView2.setVisibility(8);
            }
            PanelView panelView3 = this.f43404E0;
            if (panelView3 != null) {
                panelView3.setVisibility(8);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a5  */
    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void C() {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.FullScreenATView.C():void");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void D() {
        PanelView panelView;
        BasePlayerView basePlayerView;
        if (w()) {
            return;
        }
        if (this.f43264E != 1 || this.f43276Q == 100) {
            super.D();
            if (!z.h(this.f43217c, this.f43216b) || (panelView = this.f43404E0) == null) {
                return;
            }
            panelView.setVisibility(8);
            return;
        }
        d dVar = this.f43229o;
        if (dVar == null || (basePlayerView = dVar.f39641h) == null || basePlayerView.getParent() == null || !(dVar.f39641h.getParent() instanceof ViewGroup)) {
            return;
        }
        BasePlayerView basePlayerView2 = this.f43229o.f39641h;
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -getMeasuredWidth(), 0.0f, 0.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.4f);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.setFillAfter(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setDuration(300L);
        animationSet.setAnimationListener(new p2(this, basePlayerView2));
        basePlayerView2.startAnimation(animationSet);
        PanelView panelView2 = this.f43404E0;
        if (panelView2 == null || panelView2.getVisibility() != 0) {
            return;
        }
        this.f43404E0.startAnimation(animationSet);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void E() {
        if (this.f43406G0) {
            return;
        }
        this.f43406G0 = true;
        FullScreenHeaderPanelView fullScreenHeaderPanelView = (FullScreenHeaderPanelView) findViewById(k.a(getContext(), "myoffer_header_panel_view_id", "id"));
        this.f43405F0 = fullScreenHeaderPanelView;
        if (fullScreenHeaderPanelView == null || !z.a(this.f43217c)) {
            return;
        }
        this.f43405F0.initSetting(this.f43217c, this.f43216b, new s2(this));
        this.f43298p0 = this.f43405F0;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void F() {
        t tVar = this.f43302t0;
        if (tVar != null) {
            tVar.f43027c = this.f43275P == 108 ? AjaxStatus.NETWORK_ERROR : -100;
            tVar.f43036l = new r2(this);
            tVar.a(getContext(), this);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void G() {
        if (this.f43229o == null || !O()) {
            return;
        }
        if (this.f43230p != null) {
            HashMap map = new HashMap();
            map.put("video_reset_player_view_type", Integer.valueOf(this.f43276Q));
            this.f43230p.a(map);
        }
        a(125);
        d dVar = this.f43229o;
        int i2 = this.f43276Q;
        if (dVar.f39641h != null) {
            Context context = dVar.f39635b;
            BasePlayerView emptyAnimPlayer = i2 != 101 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? new EmptyAnimPlayer(context) : new AlbumScaleAnimPlayerView(context) : new ViewPagerAnimPlayerView(context) : new RedPacketAnimPlayerView(context) : new GuideToClickAnimPlayerView(context) : new EmptyAnimPlayer(context) : new WebLandpagePlayerView(context);
            emptyAnimPlayer.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) dVar.f39641h.getParent();
            viewGroup.addView(emptyAnimPlayer, viewGroup.indexOfChild(dVar.f39641h), dVar.f39641h.getLayoutParams());
            viewGroup.removeView(dVar.f39641h);
            dVar.f39641h = emptyAnimPlayer;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void I() {
        if (w()) {
            return;
        }
        super.I();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void J() {
        super.J();
        t tVar = this.f43302t0;
        if (tVar != null) {
            e.a().a(new r(tVar));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void L() {
        MuteImageView muteImageView;
        super.L();
        if (this.f43276Q != 100 && (muteImageView = this.f43297o0) != null && muteImageView.getVisibility() != 8) {
            this.f43297o0.setVisibility(8);
        }
        N();
    }

    public final void N() {
        if (w() || this.f43264E != 1 || this.f43216b.f41644r.f41926d1 <= 0) {
            return;
        }
        long jMin = Math.min(this.f43280U, this.f43279T);
        this.f43407H0 = Math.max(0L, jMin - this.f43216b.f41644r.f41926d1);
        this.f43408I0 = Math.min(jMin, this.f43216b.f41644r.f41926d1);
    }

    public final boolean O() {
        return this.f43264E == 1 && this.f43276Q != 100;
    }

    public final boolean P() {
        a aVar;
        com.smartdigimkt.m3.e eVar;
        if (this.f43264E != 1 || (aVar = this.f43216b) == null || (eVar = aVar.f41644r) == null || !h.a(eVar.f41897T1)) {
            return false;
        }
        return !(!isRvDeepRewardListenerRegistered() ? true : com.smartdigimkt.k2.k.a(getContext(), this.f43217c));
    }

    public final void Q() {
        a aVar = this.f43216b;
        if (aVar == null || this.f43217c == null || aVar.f41644r == null || !P()) {
            return;
        }
        com.smartdigimkt.y3.h.b(1, (this.f43227m || this.f43282W) ? 62 : 61, this.f43216b, this.f43217c, (String) null, false);
    }

    public final boolean R() {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.v1.r rVar;
        p pVarA;
        if (P()) {
            return true;
        }
        a aVar = this.f43216b;
        return (aVar == null || (eVar = aVar.f41644r) == null || !h.a(eVar.f41897T1) || (rVar = this.f43230p) == null || (pVarA = rVar.a()) == null || !pVarA.f()) ? false : true;
    }

    public final void S() {
        a aVar;
        com.smartdigimkt.m3.e eVar;
        if (this.f43414O0 || this.f43221g || (aVar = this.f43216b) == null || (eVar = aVar.f41644r) == null || !h.a(eVar.f41897T1)) {
            return;
        }
        this.f43414O0 = true;
        c cVar = this.f43217c;
        if (cVar instanceof com.smartdigimkt.m3.k) {
            com.smartdigimkt.m3.k kVar = (com.smartdigimkt.m3.k) cVar;
            kVar.getClass();
            kVar.f42059t0.put(SDMAdDeepRewardResult.KEY_TASK_TYPE, 1);
        }
    }

    public final boolean T() {
        com.smartdigimkt.v1.r rVar;
        p pVarA;
        String string;
        String string2;
        if (!P() || (rVar = this.f43230p) == null || (pVarA = rVar.a()) == null || !pVarA.f()) {
            return false;
        }
        final com.smartdigimkt.m3.d dVar = this.f43216b.f41644r.f41897T1;
        Runnable runnable = new Runnable() { // from class: b1.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f1169b.a(dVar);
            }
        };
        if (dVar == null || !h.a(dVar)) {
            runnable.run();
            return true;
        }
        Context context = getContext();
        String strBuildRewardExitConfirmSecondsString = buildRewardExitConfirmSecondsString();
        int rewardExitConfirmWarnTextTypeForDialog = getRewardExitConfirmWarnTextTypeForDialog();
        a aVar = this.f43216b;
        c cVar = this.f43217c;
        if (context == null) {
            return true;
        }
        if (strBuildRewardExitConfirmSecondsString == null) {
            strBuildRewardExitConfirmSecondsString = "0";
        }
        String string3 = context.getString(k.a(context, "myoffer_reward_exit_confirm_give_up", "string"));
        if (rewardExitConfirmWarnTextTypeForDialog != 2) {
            string = context.getString(k.a(context, "myoffer_reward_exit_confirm_msg", "string"), strBuildRewardExitConfirmSecondsString);
            string2 = context.getString(k.a(context, "myoffer_reward_exit_confirm_continue", "string"));
        } else {
            string = context.getString(k.a(context, "myoffer_anim_reward_exit_confirm_msg", "string"), strBuildRewardExitConfirmSecondsString);
            string2 = context.getString(k.a(context, "myoffer_anim_reward_exit_confirm_continue", "string"));
        }
        v4.a(context, string, string2, string3, runnable, aVar, cVar, u4.PLAYER_CLOSE);
        return true;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public boolean b(int i2) {
        switch (i2) {
            case 100:
            case 101:
            case 102:
            case 105:
            case 106:
                return z.a(this.f43217c);
            case 103:
            case 104:
            case 107:
            default:
                return false;
            case 108:
                return true;
        }
    }

    public String buildRewardExitConfirmSecondsString() {
        double dCeil = Math.ceil(this.f43280U / 1000.0d);
        d dVar = this.f43229o;
        if (dVar != null) {
            double dCeil2 = Math.ceil((dVar.f39641h != null ? r4.getVideoLength() : 0L) / 1000.0d);
            if (dCeil > dCeil2) {
                dCeil = dCeil2;
            }
        }
        return String.valueOf((int) dCeil);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void d(int i2) {
        if (!O()) {
            super.d(i2);
            return;
        }
        this.f43295m0.setVisibility(8);
        com.smartdigimkt.c2.e eVar = this.f43301s0;
        if (eVar != null) {
            eVar.a(8);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void e() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_full_screen", "layout"), this);
        setBackgroundColor(-16777216);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public int getATViewType() {
        return 1;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public CloseImageView getCloseView() {
        if (O()) {
            if (this.f43276Q == 101) {
                CloseHeaderView closeHeaderView = this.f43403D0;
                if (closeHeaderView != null && closeHeaderView.getCloseImageView() != null) {
                    return this.f43403D0.getCloseImageView();
                }
            } else {
                CountDownCloseView countDownCloseView = this.f43402C0;
                if (countDownCloseView != null) {
                    return countDownCloseView;
                }
            }
        }
        return super.getCloseView();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public ViewGroup getFeedbackButton() {
        CloseHeaderView closeHeaderView = this.f43403D0;
        return (closeHeaderView == null || closeHeaderView.getVisibility() != 0 || this.f43403D0.getFeedbackButton() == null) ? super.getFeedbackButton() : this.f43403D0.getFeedbackButton();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public com.smartdigimkt.k2.e getImproveClickCallback() {
        return new q2(this);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public PanelView getPanelView() {
        PanelView panelView;
        PanelView panelView2;
        return (z.h(this.f43217c, this.f43216b) || (panelView2 = this.f43404E0) == null) ? (this.f43282W || this.f43276Q == 1 || (panelView = this.f43404E0) == null) ? super.getPanelView() : panelView : panelView2;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public int getPanelViewTypeForShowEndCard() {
        l lVar;
        int i2 = this.f43275P;
        if (i2 == 108) {
            return i2;
        }
        if (this.f43266G < this.f43267H) {
            return this.f43262A0 >= this.f43263B0 ? 101 : 105;
        }
        if (z.h(this.f43217c, this.f43216b) && (lVar = this.f43300r0) != null) {
            ImageView imageView = lVar.f42993e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            ViewGroup viewGroup = lVar.f42989a;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
        }
        return this.f43262A0 < this.f43263B0 ? 102 : 106;
    }

    public int getRewardExitConfirmWarnTextTypeForDialog() {
        return O() ? 2 : 1;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final boolean n() {
        if (!R()) {
            return false;
        }
        if (this.f43413N0) {
            return true;
        }
        x();
        return true;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final boolean o() {
        if (!R()) {
            return false;
        }
        if (this.f43413N0) {
            return true;
        }
        x();
        return true;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void p() {
        super.p();
        t tVar = this.f43302t0;
        if (tVar != null) {
            e.a().a(new s(tVar));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void q() {
        super.q();
        this.f43402C0 = (CountDownCloseView) findViewById(k.a(getContext(), "myoffer_btn_countdown_close_id", "id"));
        this.f43403D0 = (CloseHeaderView) findViewById(k.a(getContext(), "myoffer_btn_close_header_view_id", "id"));
        this.f43404E0 = (PanelView) findViewById(k.a(getContext(), "myoffer_banner_view_for_anim_player_id", "id"));
        this.f43409J0 = (LinearLayout) findViewById(k.a(getContext(), "myoffer_tv_reward_tips_ll_id", "id"));
        this.f43410K0 = (TextView) findViewById(k.a(getContext(), "myoffer_tv_reward_tips_id", "id"));
        this.f43411L0 = (ImageView) findViewById(k.a(getContext(), "myoffer_tv_reward_tips_icon_id", "id"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void r() {
        super.r();
        if (O()) {
            if (this.f43276Q != 101) {
                CountDownCloseView countDownCloseView = this.f43402C0;
                if (countDownCloseView != null) {
                    countDownCloseView.setVisibility(0);
                    return;
                }
                return;
            }
            CloseHeaderView closeHeaderView = this.f43403D0;
            if (closeHeaderView != null) {
                closeHeaderView.setVisibility(0);
                if (this.f43403D0.getCloseImageView() != null) {
                    this.f43403D0.getCloseImageView().setVisibility(0);
                }
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void s() {
        super.s();
        if (!O() || getFeedbackButton() == null || getFeedbackButton().getVisibility() == 0) {
            return;
        }
        getFeedbackButton().setVisibility(0);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void setCountDownDuration(long j2) {
        if (!O()) {
            super.setCountDownDuration(j2);
            return;
        }
        CloseHeaderView closeHeaderView = this.f43403D0;
        if (closeHeaderView != null && closeHeaderView.getVisibility() == 0) {
            this.f43403D0.setDuration(j2);
        }
        CountDownCloseView countDownCloseView = this.f43402C0;
        if (countDownCloseView == null || countDownCloseView.getVisibility() != 0) {
            return;
        }
        this.f43402C0.setDuration(j2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void t() {
        if (z.a(this.f43217c)) {
            this.f43275P = 100;
        } else {
            this.f43275P = 108;
        }
        PanelView panelView = this.f43290h0;
        if (panelView != null) {
            panelView.setLayoutType(this.f43275P);
            if (this.f43275P == 108 && this.f43216b.f41644r.f41927e == 0) {
                this.f43290h0.getCTAButton().setVisibility(8);
            }
        }
        PanelView panelView2 = this.f43404E0;
        if (panelView2 != null) {
            panelView2.setLayoutType(this.f43275P);
            if (this.f43275P == 108 && this.f43216b.f41644r.f41927e == 0) {
                this.f43404E0.getCTAButton().setVisibility(8);
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void u() {
        PanelView panelView = this.f43404E0;
        if (panelView != null) {
            panelView.setVisibility(4);
            PanelView panelView2 = this.f43404E0;
            c cVar = this.f43217c;
            a aVar = this.f43216b;
            panelView2.init(cVar, aVar, this.f43265F, z.d(aVar), new m2(this));
        }
        super.u();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void v() {
        super.v();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void x() {
        com.smartdigimkt.p1.t tVar;
        if (!R()) {
            super.x();
            TextView textView = this.f43410K0;
            if (textView != null) {
                textView.setText(getContext().getString(k.a(getContext(), "myoffer_reward_tips_rewarded", "string")));
            }
            ImageView imageView = this.f43411L0;
            if (imageView != null) {
                imageView.setImageResource(k.a(getContext(), "reward_tips_icon_check", "drawable"));
                return;
            }
            return;
        }
        boolean z2 = this.f43413N0;
        if (z2) {
            return;
        }
        if (!z2 && R()) {
            com.smartdigimkt.y3.h.b(16, 60, this.f43216b, this.f43217c, g.a(2), true);
            this.f43413N0 = true;
            H();
            if (!this.f43221g && (tVar = this.f43303u0) != null) {
                tVar.b();
            }
            this.f43283a0 = true;
        }
        TextView textView2 = this.f43410K0;
        if (textView2 != null) {
            textView2.setText(getContext().getString(k.a(getContext(), "myoffer_reward_tips_rewarded", "string")));
        }
        ImageView imageView2 = this.f43411L0;
        if (imageView2 != null) {
            imageView2.setImageResource(k.a(getContext(), "reward_tips_icon_check", "drawable"));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c9, code lost:
    
        if ((com.smartdigimkt.m3.o.a(r0).f42135c == 1) != false) goto L55;
     */
    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y() {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.FullScreenATView.y():void");
    }

    public FullScreenATView(Context context, a aVar, c cVar, String str, int i2, int i3) {
        super(context, aVar, cVar, str, i2, i3);
        setId(k.a(getContext(), "myoffer_full_screen_view_id", "id"));
        this.f43407H0 = -1L;
        this.f43406G0 = false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        BasePlayerView basePlayerView;
        boolean z2 = false;
        com.smartdigimkt.s2.c.f43117d = false;
        if (w()) {
            this.f43282W = true;
            d dVar = this.f43229o;
            if (dVar != null && (basePlayerView = dVar.f39641h) != null && (basePlayerView instanceof WebLandpagePlayerView) && ((WebLandpagePlayerView) basePlayerView).openInternalWebView(str, iOfferClickHandler)) {
                z2 = true;
            }
            if (z2) {
                com.smartdigimkt.s2.c.f43117d = true;
                a(105);
                t tVar = this.f43302t0;
                if (tVar != null) {
                    e.a().a(new r(tVar));
                }
            }
        }
        return z2;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void b(long j2) {
        if (O()) {
            CloseHeaderView closeHeaderView = this.f43403D0;
            if (closeHeaderView != null && closeHeaderView.getVisibility() == 0) {
                this.f43403D0.refresh(j2);
            }
            CountDownCloseView countDownCloseView = this.f43402C0;
            if (countDownCloseView != null && countDownCloseView.getVisibility() == 0) {
                this.f43402C0.refresh(j2);
            }
        } else {
            super.b(j2);
        }
        long j3 = this.f43407H0;
        if (j3 < 0 || j2 < j3) {
            return;
        }
        LinearLayout linearLayout = this.f43409J0;
        if (linearLayout != null && linearLayout.getVisibility() != 0) {
            this.f43409J0.setVisibility(0);
        }
        TextView textView = this.f43410K0;
        if (textView == null || this.f43408I0 <= j2 - this.f43407H0) {
            return;
        }
        textView.setText(String.format(getContext().getString(k.a(getContext(), "myoffer_reward_tips", "string")), Integer.valueOf((((int) (this.f43408I0 - (j2 - this.f43407H0))) / 1000) + 1)));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void a(long j2) {
        int i2;
        if (this.f43264E == 1 && ((i2 = this.f43276Q) == 1 || i2 == 101)) {
            return;
        }
        super.a(j2);
    }

    public final void a(com.smartdigimkt.m3.d dVar) {
        p pVarA;
        com.smartdigimkt.m3.e eVar;
        a aVar = this.f43216b;
        int i2 = (aVar == null || (eVar = aVar.f41644r) == null) ? 1 : eVar.f41866J0;
        if (i2 != 3 && i2 != 4) {
            if (o.a(dVar).f42134b == 2) {
                M();
                c(1);
                return;
            }
            com.smartdigimkt.v1.r rVar = this.f43230p;
            if (rVar != null && (pVarA = rVar.a()) != null && pVarA.f41326j != null) {
                p pVarA2 = this.f43230p.a();
                if (pVarA2 != null) {
                    pVarA2.b();
                    return;
                }
                return;
            }
            M();
            c(1);
            return;
        }
        M();
        c(1);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a() {
        S();
    }
}
