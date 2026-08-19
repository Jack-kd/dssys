package com.byazt.qk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.fbd.hp;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.su.jx;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import java.util.HashSet;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 64, 1329})
/* loaded from: classes3.dex */
public class NativeExpressVideoView extends NativeExpressView implements jx.j, jx.InterfaceC0367jx, gu {

    /* renamed from: b, reason: collision with root package name */
    public long f24773b;
    public com.byazt.nc.hp cx;

    /* renamed from: d, reason: collision with root package name */
    public HashSet<String> f24774d;
    public long di;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f24775j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f24776l;

    /* renamed from: o, reason: collision with root package name */
    public com.byazt.fub.j f24777o;

    /* renamed from: w, reason: collision with root package name */
    public boolean f24778w;

    public NativeExpressVideoView(Context context, mp mpVar, com.byazt.jt.l lVar, String str) {
        super(context, mpVar, lVar, str, true);
        this.hp = 1;
        this.f24776l = false;
        this.jx = true;
        this.f24778w = true;
        this.sz = this.f24793q.dh() == 1;
        zy();
    }

    private void b() {
        ExpressVideoView expressVideoView;
        com.byazt.fub.j jVar = this.f24777o;
        if (((jVar instanceof com.byazt.bn.hp) || (jVar instanceof com.byazt.fb.w)) && (expressVideoView = this.gu) != null) {
            expressVideoView.l(true);
            if (this.gu.G_()) {
                this.gu.setPauseIcon(true);
                this.gu.setVideoPlayStatus(2);
            } else {
                this.gu.setVideoPlayStatus(3);
                this.gu.setPauseIcon(false);
            }
            this.gu.performClick();
            this.gu.a();
        }
    }

    private void cx() {
        ExpressVideoView expressVideoView;
        try {
            this.cx = new com.byazt.nc.hp();
            ExpressVideoView expressVideoViewHp = hp(this.f24781a, this.f24793q, this.eb);
            this.gu = expressVideoViewHp;
            expressVideoViewHp.setNativeExpressVideoView(this);
            this.gu.setAdCreativeClickListener(new NativeVideoTsView.hp() { // from class: com.byazt.qk.NativeExpressVideoView.1
                @Override // com.byazt.oh.NativeVideoTsView.hp
                public void hp(View view, int i2) {
                    hp expressInteractionListener = NativeExpressVideoView.this.getExpressInteractionListener();
                    if (expressInteractionListener == null) {
                        return;
                    }
                    expressInteractionListener.hp(view, i2);
                }
            });
            boolean z2 = false;
            this.gu.setShouldCheckNetChange(false);
            this.gu.setControllerStatusCallBack(new NativeVideoTsView.j() { // from class: com.byazt.qk.NativeExpressVideoView.2
                @Override // com.byazt.oh.NativeVideoTsView.j
                public void hp(boolean z3, long j2, long j3, long j4, boolean z4, boolean z5) {
                    NativeExpressVideoView.this.cx.hp = z3;
                    NativeExpressVideoView.this.cx.f23534w = j2;
                    NativeExpressVideoView.this.cx.f23530a = j3;
                    NativeExpressVideoView.this.cx.eb = j4;
                    NativeExpressVideoView.this.cx.f23531j = z4;
                    NativeExpressVideoView.this.cx.f23533s = z5;
                }
            });
            this.gu.setVideoAdLoadListener(this);
            this.gu.setVideoAdInteractionListener(this);
            if (com.byazt.ih.l.AD_TAG_FEED.equals(this.eb)) {
                this.gu.setIsAutoPlay(this.f24776l ? this.f24795s.w() : this.jx);
            } else if ("splash_ad".equals(this.eb)) {
                this.gu.setIsAutoPlay(true);
            } else {
                this.gu.setIsAutoPlay(this.jx);
            }
            if (!"splash_ad".equals(this.eb)) {
                expressVideoView = this.gu;
                if (this.f24793q.dh() == 1) {
                }
                expressVideoView.setIsQuiet(z2);
                this.gu.jx();
            }
            expressVideoView = this.gu;
            z2 = true;
            expressVideoView.setIsQuiet(z2);
            this.gu.jx();
        } catch (Exception e2) {
            this.gu = null;
            com.byazt.ymw.u.l("NativeExpressVideoView", "（dev ignore）ExpressVideoView-->print:" + e2.toString());
        }
    }

    private void setShowAdInteractionView(boolean z2) {
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView != null) {
            expressVideoView.setShowAdInteractionView(z2);
        }
    }

    public void a(int i2) {
        int iA = com.byazt.jz.sz.l().a(i2);
        if (3 == iA) {
            this.f24776l = false;
            this.jx = false;
        } else if (1 == iA) {
            this.f24776l = false;
            this.jx = com.byazt.ymw.vv.j(this.f24781a);
        } else if (2 == iA) {
            if (com.byazt.ymw.vv.w(this.f24781a) || com.byazt.ymw.vv.j(this.f24781a) || com.byazt.ymw.vv.a(this.f24781a)) {
                this.f24776l = false;
                this.jx = true;
            }
        } else if (5 == iA) {
            if (com.byazt.ymw.vv.j(this.f24781a) || com.byazt.ymw.vv.a(this.f24781a)) {
                this.f24776l = false;
                this.jx = true;
            }
        } else if (4 == iA) {
            this.f24776l = true;
        }
        if (this.jx) {
            return;
        }
        this.hp = 3;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void e() {
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void eb() {
        super.eb();
    }

    @Override // com.byazt.qk.NativeExpressView
    public com.byazt.su.jx getVideoController() {
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView != null) {
            return expressVideoView.getVideoController();
        }
        return null;
    }

    public com.byazt.nc.hp getVideoModel() {
        return this.cx;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(float f2) {
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void j(int i2) {
    }

    @Override // com.byazt.qk.NativeExpressView
    public void jl() {
        super.jl();
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView != null) {
            expressVideoView.sz();
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void jx(int i2) {
    }

    public void k() {
        this.gu.gu();
    }

    @Override // com.byazt.qk.NativeExpressView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        ExpressVideoView expressVideoView;
        int i2;
        super.onAttachedToWindow();
        com.byazt.fub.j jVar = this.f24777o;
        if ((!(jVar instanceof com.byazt.bn.hp) && !(jVar instanceof com.byazt.fb.w)) || (expressVideoView = this.gu) == null || (i2 = this.hp) == 2 || i2 == 5) {
            return;
        }
        expressVideoView.setNeedNativeVideoPlayBtnVisible(true);
        this.gu.F_();
        this.gu.E_();
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onProgressUpdate(long j2, long j3) {
        this.f24778w = false;
        jx.InterfaceC0367jx interfaceC0367jx = this.zy;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onProgressUpdate(j2, j3);
        }
        if (hp(j2)) {
            this.hp = 2;
        }
        this.f24773b = j2;
        this.di = j3;
        if (!this.f24774d.isEmpty()) {
            com.byazt.su.jx videoController = this.gu.getVideoController();
            if (videoController instanceof com.byazt.oh.j) {
                ((com.byazt.oh.j) videoController).jx(50);
            }
        }
        com.byazt.nc.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.eb = j2;
        }
        com.byazt.fub.j jVar = this.f24777o;
        if (jVar instanceof com.byazt.fb.w) {
            ((com.byazt.fb.w) jVar).hp(j2, j3);
        }
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdContinuePlay() {
        this.f24778w = false;
        jx.InterfaceC0367jx interfaceC0367jx = this.zy;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onVideoAdContinuePlay();
        }
        this.f24798v = false;
        this.hp = 2;
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdPaused() {
        this.f24778w = false;
        jx.InterfaceC0367jx interfaceC0367jx = this.zy;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onVideoAdPaused();
        }
        this.f24798v = true;
        this.hp = 3;
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdStartPlay() {
        this.f24778w = false;
        jx.InterfaceC0367jx interfaceC0367jx = this.zy;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onVideoAdStartPlay();
        }
        this.hp = 2;
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoComplete() {
        this.f24778w = false;
        com.byazt.fub.j jVar = this.f24777o;
        if (jVar != null) {
            if (jVar instanceof com.byazt.bn.hp) {
                ((com.byazt.bn.hp) jVar).j();
            }
            com.byazt.fub.j jVar2 = this.f24777o;
            if (jVar2 instanceof com.byazt.fb.w) {
                ((com.byazt.fb.w) jVar2).zy();
            }
        }
        jx.InterfaceC0367jx interfaceC0367jx = this.zy;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onVideoComplete();
        }
        this.hp = 5;
        com.byazt.nc.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.hp = true;
        }
    }

    @Override // com.byazt.su.jx.j
    public void onVideoError(int i2, int i3) {
        jx.j jVar = this.jl;
        if (jVar != null) {
            jVar.onVideoError(i2, i3);
        }
        this.f24773b = this.di;
        this.hp = 4;
    }

    @Override // com.byazt.su.jx.j
    public void onVideoLoad() {
        jx.j jVar = this.jl;
        if (jVar != null) {
            jVar.onVideoLoad();
        }
        com.byazt.fub.j jVar2 = this.f24777o;
        if (jVar2 != null) {
            if (jVar2 instanceof com.byazt.bn.hp) {
                ((com.byazt.bn.hp) jVar2).w();
            }
            com.byazt.fub.j jVar3 = this.f24777o;
            if (jVar3 instanceof com.byazt.fb.w) {
                ((com.byazt.fb.w) jVar3).k();
            }
        }
    }

    @Override // com.byazt.qk.NativeExpressView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        ExpressVideoView expressVideoView;
        ImageView imageView;
        super.onWindowFocusChanged(z2);
        com.byazt.fub.j jVar = this.f24777o;
        if (((jVar instanceof com.byazt.bn.hp) || (jVar instanceof com.byazt.fb.w)) && (expressVideoView = this.gu) != null && z2 && (imageView = expressVideoView.f24769l) != null && imageView.getVisibility() == 0) {
            this.gu.f24769l.setVisibility(8);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void q() {
        super.q();
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void s() {
    }

    public void setCanInterruptVideoPlay(boolean z2) {
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView != null) {
            expressVideoView.setCanInterruptVideoPlay(z2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void setPauseFromExpressView(boolean z2) {
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void w(int i2) {
    }

    public void zy() {
        this.f24787k = new FrameLayout(this.f24781a);
        this.f24775j = ky.zy(this.f24793q);
        this.f24774d = new HashSet<>();
        a(this.f24775j);
        cx();
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(float f2, float f3, float f4, float f5, int i2) {
    }

    @Override // com.byazt.qk.NativeExpressView
    public void l(com.byazt.fub.j<? extends View> jVar, com.byazt.fub.k kVar) {
        ExpressVideoView expressVideoView;
        this.f24777o = jVar;
        if ((jVar instanceof v) && ((v) jVar).J_() != null) {
            ((v) this.f24777o).J_().hp((gu) this);
        }
        if (kVar != null && kVar.jx()) {
            if ((kVar.l() == 2 || kVar.l() == 7) && (expressVideoView = this.gu) != null) {
                expressVideoView.hp(this.f24781a, 25, df.l(this.f24793q));
            }
            hp(kVar);
        }
        com.byazt.fub.j jVar2 = this.f24777o;
        if (jVar2 != null && (jVar2 instanceof com.byazt.bn.hp)) {
            ((com.byazt.bn.hp) jVar2).hp(this.f24793q.dh() == 1);
        }
        super.l(jVar, kVar);
    }

    public ExpressVideoView hp(Context context, mp mpVar, String str) {
        return new ExpressVideoView(context, mpVar, str, false);
    }

    private void hp(final com.byazt.fub.k kVar) {
        if (kVar == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(kVar);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.qk.NativeExpressVideoView.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressVideoView.this.l(kVar);
                }
            });
        }
    }

    public NativeExpressVideoView(boolean z2, Context context, mp mpVar, com.byazt.jt.l lVar, String str) {
        super(z2, context, mpVar, lVar, str, true);
        this.hp = 1;
        this.f24776l = false;
        this.jx = true;
        this.f24778w = true;
        this.sz = this.f24793q.dh() == 1;
        zy();
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(boolean z2) {
        super.hp(z2);
        this.sz = z2;
        this.gu.l(z2, true);
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView != null && expressVideoView.getNativeVideoController() != null) {
            this.gu.getNativeVideoController().l(z2);
        }
        com.byazt.fub.j jVar = this.f24777o;
        if (jVar == null || !(jVar instanceof com.byazt.bn.hp)) {
            return;
        }
        ((com.byazt.bn.hp) jVar).hp(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.fub.k kVar) {
        if (kVar == null) {
            return;
        }
        double dA = kVar.a();
        double dEb = kVar.eb();
        double dS = kVar.s();
        double dQ = kVar.q();
        int iJx = xh.jx(this.f24781a, (float) dA);
        int iJx2 = xh.jx(this.f24781a, (float) dEb);
        int iJx3 = xh.jx(this.f24781a, (float) dS);
        int iJx4 = xh.jx(this.f24781a, (float) dQ);
        float fJx = kVar.jl() > 0.0f ? xh.jx(this.f24781a, kVar.jl()) : 0.0f;
        float fJx2 = kVar.zy() > 0.0f ? xh.jx(this.f24781a, kVar.zy()) : 0.0f;
        float fJx3 = kVar.k() > 0.0f ? xh.jx(this.f24781a, kVar.k()) : 0.0f;
        float fJx4 = kVar.v() > 0.0f ? xh.jx(this.f24781a, kVar.v()) : 0.0f;
        if (fJx2 < fJx) {
            fJx = fJx2;
        }
        if (fJx3 >= fJx) {
            fJx3 = fJx;
        }
        if (fJx4 >= fJx3) {
            fJx4 = fJx3;
        }
        if (kVar.l() != 2) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f24787k.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(iJx3, iJx4);
            }
            layoutParams.width = iJx3;
            layoutParams.height = iJx4;
            layoutParams.topMargin = iJx2;
            layoutParams.leftMargin = iJx;
            this.f24787k.setLayoutParams(layoutParams);
        }
        xh.l(this.f24787k, fJx4);
        this.f24787k.removeAllViews();
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView != null) {
            this.f24787k.addView(expressVideoView);
            this.gu.hp(0L, true, false);
            a(this.f24775j);
            if (!com.byazt.ymw.vv.j(this.f24781a) && !this.jx && this.f24778w) {
                this.gu.F_();
            }
            setShowAdInteractionView(false);
        }
        ViewGroup viewGroup = (ViewGroup) this.f24787k.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f24787k);
        }
        if (kVar instanceof com.byazt.fb.jx) {
            FrameLayout frameLayoutU = ((com.byazt.fb.jx) kVar).u();
            if (frameLayoutU != null) {
                ExpressVideoView expressVideoView2 = this.gu;
                if (expressVideoView2 != null) {
                    expressVideoView2.setClickable(false);
                }
                frameLayoutU.addView(this.f24787k, new FrameLayout.LayoutParams(-1, -1));
                return;
            }
            return;
        }
        if (kVar.l() == 2) {
            View viewHp = kVar.hp();
            if (viewHp instanceof ViewGroup) {
                ExpressVideoView expressVideoView3 = this.gu;
                if (expressVideoView3 != null) {
                    expressVideoView3.setClickable(false);
                }
                ((ViewGroup) viewHp).addView(this.f24787k);
                return;
            }
            return;
        }
        this.f24791n.addView(this.f24787k);
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void a() {
        super.a();
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(int i2) {
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView == null) {
            com.byazt.ymw.u.l("NativeExpressVideoView", "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!");
            return;
        }
        if (i2 == 1) {
            expressVideoView.hp(0L, true, false);
            return;
        }
        if (i2 == 2 || i2 == 3) {
            expressVideoView.setVideoPlayStatus(i2);
            this.gu.setCanInterruptVideoPlay(true);
            this.gu.performClick();
        } else if (i2 == 4) {
            expressVideoView.getNativeVideoController().e();
        } else {
            if (i2 != 5) {
                return;
            }
            expressVideoView.hp(0L, true, false);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.fub.s
    public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) throws JSONException {
        if (i2 == -1 || jxVar == null) {
            return;
        }
        if (i2 == 4) {
            b();
        } else if (i2 != 5) {
            super.hp(view, i2, jxVar, i3);
        } else {
            hp(!this.sz);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public long hp() {
        return this.f24773b;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(final int i2, final String str) {
        super.hp(i2, str);
        com.byazt.su.jx videoController = this.gu.getVideoController();
        if (videoController instanceof com.byazt.oh.j) {
            com.byazt.oh.j jVar = (com.byazt.oh.j) videoController;
            jVar.jx(50);
            jVar.hp(new hp.InterfaceC0222hp() { // from class: com.byazt.qk.NativeExpressVideoView.4
                @Override // com.byazt.fbd.hp.InterfaceC0222hp
                public void hp(long j2, long j3) throws JSONException {
                    int iAbs = (int) Math.abs(i2 - j2);
                    int i3 = i2;
                    if (i3 < 0 || iAbs > 50 || i3 > j3 || iAbs >= 50 || NativeExpressVideoView.this.f24774d.contains(str)) {
                        return;
                    }
                    if (i2 > j2) {
                        NativeExpressVideoView.this.postDelayed(new Runnable() { // from class: com.byazt.qk.NativeExpressVideoView.4.1
                            @Override // java.lang.Runnable
                            public void run() throws JSONException {
                                NativeExpressVideoView.this.gu.setVideoPlayStatus(2);
                                NativeExpressVideoView.this.gu.setCanInterruptVideoPlay(true);
                                NativeExpressVideoView.this.gu.performClick();
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                NativeExpressVideoView.this.l(i2, str);
                            }
                        }, iAbs);
                    } else {
                        NativeExpressVideoView.this.gu.setVideoPlayStatus(2);
                        NativeExpressVideoView.this.gu.setCanInterruptVideoPlay(true);
                        NativeExpressVideoView.this.gu.performClick();
                        NativeExpressVideoView.this.l(i2, str);
                    }
                    NativeExpressVideoView.this.f24774d.add(str);
                }
            });
        }
    }

    private boolean hp(long j2) {
        int i2 = this.hp;
        if (i2 != 5 && i2 != 3 && j2 > this.f24773b) {
            return true;
        }
        ExpressVideoView expressVideoView = this.gu;
        return expressVideoView != null && expressVideoView.G_();
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.fub.s
    public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
        if (i2 == -1 || jxVar == null) {
            return;
        }
        if (i2 != 4) {
            if (i2 != 5) {
                super.l(view, i2, jxVar, i3);
                return;
            }
        } else if (this.eb == "draw_ad") {
            ExpressVideoView expressVideoView = this.gu;
            if (expressVideoView != null) {
                expressVideoView.performClick();
                return;
            }
            return;
        }
        hp(!this.sz);
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public int l() {
        ExpressVideoView expressVideoView;
        if (this.hp == 3 && (expressVideoView = this.gu) != null) {
            expressVideoView.jx();
        }
        ExpressVideoView expressVideoView2 = this.gu;
        if (expressVideoView2 == null || !expressVideoView2.getNativeVideoController().ns()) {
            return this.hp;
        }
        return 1;
    }
}
