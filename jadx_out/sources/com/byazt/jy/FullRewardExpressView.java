package com.byazt.jy;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.cj.FullSwiperItemView;
import com.byazt.fbd.hp;
import com.byazt.fub.j;
import com.byazt.fub.jx;
import com.byazt.fub.k;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.qk.FullRewardExpressBackupView;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.gu;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashSet;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 235, 789})
/* loaded from: classes.dex */
public class FullRewardExpressView extends NativeExpressView implements gu {

    /* renamed from: b, reason: collision with root package name */
    public HashSet<String> f21756b;
    public ImageView cx;

    /* renamed from: d, reason: collision with root package name */
    public hp.InterfaceC0222hp f21757d;
    public hp di;
    public gu hp;
    public com.byazt.xn.hp hq;

    /* renamed from: j, reason: collision with root package name */
    public j f21758j;
    public com.byazt.tm.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public FullRewardExpressBackupView f21759l;

    /* renamed from: o, reason: collision with root package name */
    public View f21760o;

    /* renamed from: w, reason: collision with root package name */
    public k f21761w;
    public FullSwiperItemView.hp wv;

    public interface hp {
        void hp(int i2);
    }

    public FullRewardExpressView(Context context, mp mpVar, com.byazt.jt.l lVar, String str, boolean z2, String str2) {
        super(context, mpVar, lVar, str, z2, str2);
        this.f21756b = new HashSet<>();
    }

    private void cx() {
        com.byazt.tm.hp hpVar;
        if ((this.f21758j instanceof com.byazt.bn.hp) && (hpVar = this.jx) != null) {
            if (hpVar.yr()) {
                this.jx.a();
                l(true);
            } else {
                this.jx.s();
                l(false);
            }
        }
    }

    private void k() {
        setBackupListener(new jx() { // from class: com.byazt.jy.FullRewardExpressView.1
            @Override // com.byazt.fub.jx
            public boolean hp(ViewGroup viewGroup, int i2) {
                try {
                    ((NativeExpressView) viewGroup).ec();
                    FullRewardExpressView.this.f21759l = new FullRewardExpressBackupView(viewGroup.getContext());
                    FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                    fullRewardExpressView.f21759l.hp(fullRewardExpressView.f24793q, (NativeExpressView) viewGroup);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void e() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.e();
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void eb() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.eb();
        }
    }

    public k getRenderResult() {
        return this.f21761w;
    }

    @Override // com.byazt.qk.NativeExpressView
    public com.byazt.su.jx getVideoController() {
        return this.jx;
    }

    public FrameLayout getVideoFrameLayout() {
        return n() ? this.f21759l.getVideoContainer() : this.f24787k;
    }

    @Override // com.byazt.qk.NativeExpressView
    public void gu() throws JSONException {
        this.f24797u = true;
        this.f24787k = new FrameLayout(this.f24781a);
        super.gu();
        k();
        if (getJsObject() != null) {
            getJsObject().jl(this.sz);
        }
    }

    @Override // com.byazt.qk.NativeExpressView
    public void jl() {
        super.jl();
        this.f21756b.clear();
    }

    @Override // com.byazt.qk.NativeExpressView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j(z2);
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void q() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.q();
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void s() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.s();
        }
    }

    public void setEasyPlayableContainer(View view) {
        this.f21760o = view;
    }

    public void setExpressVideoListenerProxy(gu guVar) {
        this.hp = guVar;
    }

    public void setInteractListener(FullSwiperItemView.hp hpVar) {
        this.wv = hpVar;
    }

    public void setOnVideoSizeChangeListener(hp hpVar) {
        this.di = hpVar;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void setPauseFromExpressView(boolean z2) {
    }

    public void setVideoController(com.byazt.su.jx jxVar) {
        if (jxVar instanceof com.byazt.tm.hp) {
            com.byazt.tm.hp hpVar = (com.byazt.tm.hp) jxVar;
            this.jx = hpVar;
            hpVar.jx(50);
            this.jx.hp(this.f21757d);
        }
    }

    public boolean zy() {
        k kVar = this.f21761w;
        if (kVar == null) {
            return true;
        }
        return kVar instanceof com.byazt.fb.jx ? ((com.byazt.fb.jx) kVar).u() != null : (kVar.s() == 0.0d || this.f21761w.q() == 0.0d) ? false : true;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void a() {
        super.a();
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.a();
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void j() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.j();
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public int jx() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.jx();
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    @Override // com.byazt.qk.NativeExpressView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(com.byazt.fub.j<? extends android.view.View> r4, com.byazt.fub.k r5) {
        /*
            r3 = this;
            r3.f21758j = r4
            boolean r0 = r4 instanceof com.byazt.qk.v
            if (r0 == 0) goto L25
            r0 = r4
            com.byazt.qk.v r0 = (com.byazt.qk.v) r0
            com.byazt.jz.ud r1 = r0.J_()
            if (r1 == 0) goto L16
            com.byazt.jz.ud r1 = r0.J_()
            r1.hp(r3)
        L16:
            com.byazt.jz.ud r1 = r0.J_()
            if (r1 == 0) goto L25
            com.byazt.jz.ud r0 = r0.J_()
            java.lang.String r1 = r3.f24784e
            r0.jx(r1)
        L25:
            boolean r0 = r4 instanceof com.byazt.fb.hp
            if (r0 == 0) goto L2f
            r0 = r4
            com.byazt.fb.hp r0 = (com.byazt.fb.hp) r0
            r0.hp(r3)
        L2f:
            if (r5 == 0) goto L96
            boolean r0 = r5.jx()
            if (r0 == 0) goto L96
            r3.f21761w = r5
            int r0 = r5.l()
            r1 = 2
            if (r0 != r1) goto L52
            android.view.View r0 = r5.hp()
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 == 0) goto L52
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            android.view.ViewGroup r1 = r3.getVideoContainer()
            r0.addView(r1)
            goto L58
        L52:
            android.widget.FrameLayout r0 = r3.f24787k
            r1 = 1
            r3.hp(r0, r1)
        L58:
            int r0 = r5.l()
            r1 = 10
            if (r0 != r1) goto L6d
            boolean r0 = r5 instanceof com.byazt.fb.jx
            if (r0 == 0) goto L6d
            r0 = r5
            com.byazt.fb.jx r0 = (com.byazt.fb.jx) r0
            com.byazt.xn.hp r0 = r0.vv()
            r3.hq = r0
        L6d:
            int r0 = r5.l()
            if (r0 != r1) goto L96
            boolean r0 = r5 instanceof com.byazt.fb.jx
            if (r0 == 0) goto L96
            r0 = r5
            com.byazt.fb.jx r0 = (com.byazt.fb.jx) r0
            android.widget.FrameLayout r0 = r0.xs()
            if (r0 == 0) goto L96
            android.view.View r1 = r3.f21760o
            if (r1 == 0) goto L96
            android.view.ViewParent r1 = r1.getParent()
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            if (r1 == 0) goto L91
            android.view.View r2 = r3.f21760o
            r1.removeView(r2)
        L91:
            android.view.View r1 = r3.f21760o
            r0.addView(r1)
        L96:
            super.l(r4, r5)
            int r4 = r3.getVisibility()
            r3.eb(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jy.FullRewardExpressView.l(com.byazt.fub.j, com.byazt.fub.k):void");
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void w(int i2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.w(i2);
        }
    }

    public void hp(final ViewGroup viewGroup, final boolean z2) {
        if (this.f21761w == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(viewGroup, z2);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.jy.FullRewardExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    FullRewardExpressView.this.l(viewGroup, z2);
                }
            });
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void j(int i2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.j(i2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void jx(int i2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.jx(i2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void w() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.w();
        }
    }

    private void j(boolean z2) {
        com.byazt.tm.hp hpVar;
        if ((this.f21758j instanceof com.byazt.bn.hp) && z2) {
            ImageView imageView = this.cx;
            if (imageView != null && imageView.getVisibility() == 0 && (hpVar = this.jx) != null) {
                hpVar.a();
            } else {
                hp(this.sz);
            }
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(boolean z2) {
        super.hp(z2);
        this.sz = z2;
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(z2);
        }
        j jVar = this.f21758j;
        if (jVar == null || !(jVar instanceof com.byazt.bn.hp)) {
            return;
        }
        ((com.byazt.bn.hp) jVar).hp(z2);
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(int i2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(i2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public long hp() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.hp();
        }
        return 0L;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(float f2, float f3, float f4, float f5, int i2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(f2, f3, f4, f5, i2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(mp mpVar) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(mpVar);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(final int i2, final String str) {
        this.f21757d = new hp.InterfaceC0222hp() { // from class: com.byazt.jy.FullRewardExpressView.3
            @Override // com.byazt.fbd.hp.InterfaceC0222hp
            public void hp(long j2, long j3) throws JSONException {
                int iAbs = (int) Math.abs(i2 - j2);
                FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                int i3 = fullRewardExpressView.jx instanceof com.byazt.ig.j ? 200 : 50;
                int i4 = i2;
                if (i4 < 0 || iAbs > i3 || i4 > j3 || iAbs >= i3 || fullRewardExpressView.f21756b.contains(str)) {
                    return;
                }
                if (i2 > j2) {
                    FullRewardExpressView.this.postDelayed(new Runnable() { // from class: com.byazt.jy.FullRewardExpressView.3.1
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            FullRewardExpressView.this.jx.a();
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            FullRewardExpressView.this.l(i2, str);
                            if (ea.xs(FullRewardExpressView.this.f24793q) || zx.hp(FullRewardExpressView.this.f24793q)) {
                                FullRewardExpressView.this.hp.hp(2);
                            }
                            gu guVar = FullRewardExpressView.this.hp;
                            if (guVar != null) {
                                guVar.setPauseFromExpressView(true);
                            }
                        }
                    }, iAbs);
                } else {
                    FullRewardExpressView.this.jx.a();
                    FullRewardExpressView.this.l(i2, str);
                    if (ea.xs(FullRewardExpressView.this.f24793q) || zx.hp(FullRewardExpressView.this.f24793q)) {
                        FullRewardExpressView.this.hp.hp(2);
                    }
                    gu guVar = FullRewardExpressView.this.hp;
                    if (guVar != null) {
                        guVar.setPauseFromExpressView(true);
                    }
                }
                FullRewardExpressView.this.f21756b.add(str);
            }
        };
        com.byazt.tm.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.jx(50);
            this.jx.hp(this.f21757d);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void hp(float f2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(f2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.fub.s
    public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) throws JSONException {
        FullSwiperItemView.hp hpVar = this.wv;
        if (hpVar != null) {
            hpVar.hp();
        }
        if (i2 != -1 && jxVar != null && i2 == 3) {
            q();
            return;
        }
        if (i2 == 5) {
            hp(!this.sz);
        } else if (i2 == 4) {
            cx();
        } else {
            super.hp(view, i2, jxVar, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(android.view.ViewGroup r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jy.FullRewardExpressView.l(android.view.ViewGroup, boolean):void");
    }

    public void hp(int i2, int i3, int i4, int i5) {
        com.byazt.xn.hp hpVar = this.hq;
        if (hpVar != null) {
            hpVar.hp(i2, i3, i4, i5);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public int l() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.l();
        }
        return 0;
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.qk.gu
    public void l(int i2) {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.l(i2);
        }
    }

    @Override // com.byazt.qk.NativeExpressView, com.byazt.fub.s
    public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
        FullSwiperItemView.hp hpVar = this.wv;
        if (hpVar != null) {
            hpVar.hp();
        }
        if (i2 != -1 && jxVar != null && i2 == 3) {
            q();
        } else {
            super.l(view, i2, jxVar, i3);
        }
    }

    public void l(boolean z2) {
        if (this.cx == null) {
            this.cx = new ImageView(getContext());
            if (s.u().kg() != null) {
                this.cx.setImageBitmap(s.u().kg());
            } else {
                v.hp(sz.getContext(), "tt_new_play_video", this.cx, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            }
            this.cx.setScaleType(ImageView.ScaleType.FIT_XY);
            int iJx = xh.jx(getContext(), 50.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iJx, iJx);
            layoutParams.gravity = 17;
            this.f24787k.addView(this.cx, layoutParams);
        }
        if (z2) {
            this.cx.setVisibility(0);
        } else {
            this.cx.setVisibility(8);
        }
    }
}
