package com.byazt.ig;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.fjm.RecyclerView;
import com.byazt.jy.FullRewardExpressView;
import com.byazt.nk.TTProgressBar;
import com.byazt.nk.TTRatingBar;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.pg.r;
import com.byazt.qk.gu;
import com.byazt.tm.hp;
import com.byazt.vi.a;
import com.byazt.vsq.jx;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.ymw.ud;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 7, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w extends RecyclerView.cx implements r.hp {

    /* renamed from: b, reason: collision with root package name */
    public TTProgressBar f21078b;
    public FrameLayout cx;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f21079d;
    public j di;
    public boolean dy;
    public FrameLayout ec;
    public boolean hq;
    public LinearLayout ky;
    public int lv;

    /* renamed from: ms, reason: collision with root package name */
    public int f21080ms;

    /* renamed from: n, reason: collision with root package name */
    public FrameLayout f21081n;
    public FrameLayout ns;
    public com.byazt.ig.l nu;

    /* renamed from: o, reason: collision with root package name */
    public final AtomicBoolean f21082o;
    public final ud pu;

    /* renamed from: r, reason: collision with root package name */
    public jx.hp f21083r;
    public FrameLayout sz;
    public boolean ud;
    public ViewGroup vv;
    public boolean wv;
    public final AnimatorSet xh;
    public FullRewardExpressView xs;

    @com.byazt.kj.hp(hp = {0, 1, 7, 8})
    public static class hp implements Interpolator {
        private hp() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.38f ? f2 * 2.631579f : (f2 * (-1.6129032f)) + 1.6129032f;
        }
    }

    public w(View view) {
        super(view);
        this.pu = new ud(Looper.getMainLooper(), this);
        this.xh = new AnimatorSet();
        this.f21082o = new AtomicBoolean(false);
        this.f21079d = new AtomicBoolean(false);
        this.f21080ms = Integer.MAX_VALUE;
        this.vv = (ViewGroup) view.findViewById(2114387892);
        this.ec = (FrameLayout) view.findViewById(2114387778);
        this.sz = (FrameLayout) view.findViewById(2114387812);
        this.f21081n = (FrameLayout) view.findViewById(2114387670);
        this.ns = (FrameLayout) view.findViewById(2114387821);
        this.cx = (FrameLayout) view.findViewById(2114387679);
        this.f21078b = (TTProgressBar) view.findViewById(2114387767);
        hp(view.getContext());
    }

    private void ms() {
        FullRewardExpressView fullRewardExpressView = this.xs;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.jl();
        }
        this.f21080ms = Integer.MAX_VALUE;
        this.ud = false;
        this.hq = false;
        this.dy = false;
        this.sz.removeAllViews();
        this.f21081n.removeAllViews();
        this.ns.removeAllViews();
        this.cx.removeAllViews();
        this.f21082o.set(false);
        this.f21079d.set(false);
        this.ec.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        j jVar = this.di;
        if (jVar != null) {
            jVar.e();
        }
    }

    public void d() {
        if (this.xh.isStarted() && this.xh.isRunning()) {
            this.xh.pause();
        }
    }

    public void dy() {
        j jVar = this.di;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what != 101) {
            return;
        }
        j(true);
        com.byazt.ig.l lVar = this.nu;
        if (lVar != null) {
            lVar.eb();
        }
    }

    public void hq() {
        if (this.xh.isStarted() && this.xh.isRunning()) {
            this.xh.cancel();
        }
    }

    public boolean ky() {
        j jVar = this.di;
        if (jVar == null) {
            return false;
        }
        return jVar.di();
    }

    public void lv() {
        j jVar = this.di;
        if (jVar != null) {
            jVar.s();
        }
    }

    public long nu() {
        com.byazt.ig.l lVar = this.nu;
        if (lVar == null) {
            return -1L;
        }
        return lVar.gu();
    }

    public com.byazt.su.jx pu() {
        return this.di;
    }

    public void r() {
        FullRewardExpressView fullRewardExpressView = this.xs;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.jl();
        }
        j jVar = this.di;
        if (jVar != null) {
            jVar.q();
        }
    }

    public void ud() throws JSONException {
        if (this.di != null && this.hq && this.ud) {
            this.nu.q();
            this.xs.v();
            if (this.dy && this.di.b()) {
                jx(this.nu.a());
                lv();
            } else {
                this.dy = true;
                this.pu.sendEmptyMessageDelayed(101, 5000L);
                this.nu.hp(this.xs);
                this.di.hp(this.nu.e());
            }
        }
    }

    public void wv() {
        if (this.xh.isStarted() && this.xh.isPaused()) {
            this.xh.resume();
        }
    }

    public boolean xh() {
        return this.f21079d.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(boolean z2) {
        if (this.hq) {
            if (this.f21080ms > xh.w(this.hp.getContext()) * 0.7f) {
                xh.hp((View) this.ky, 0);
                this.xh.start();
            }
            if (!z2 || this.f21082o.get()) {
                return;
            }
            this.f21082o.set(true);
        }
    }

    public void jx(boolean z2) {
        j jVar = this.di;
        if (jVar != null) {
            jVar.l(z2);
        }
    }

    public void hp(final com.byazt.ig.l lVar, float f2, float f3) throws JSONException {
        this.nu = lVar;
        this.f21078b.setVisibility(0);
        ms();
        FullRewardExpressView fullRewardExpressViewL = lVar.l(f2, f3);
        this.xs = fullRewardExpressViewL;
        if (lVar.f21074w) {
            if (fullRewardExpressViewL.n()) {
                this.ns.setVisibility(8);
                this.cx.addView(hp(this.hp.getContext(), lVar));
                this.cx.setVisibility(0);
            } else {
                this.xs.hp((ViewGroup) this.ec, false);
            }
            this.lv = this.xs.getDynamicShowType();
            this.ud = true;
            ud();
            this.f21078b.setVisibility(8);
        } else {
            fullRewardExpressViewL.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.ig.w.1
                @Override // com.byazt.qk.hp
                public void hp(View view, float f4, float f5) throws JSONException {
                    if (w.this.xs.n()) {
                        w.this.ns.setVisibility(8);
                        w wVar = w.this;
                        wVar.cx.addView(wVar.hp(view.getContext(), lVar));
                        w.this.cx.setVisibility(0);
                    } else {
                        w wVar2 = w.this;
                        wVar2.xs.hp((ViewGroup) wVar2.ec, false);
                    }
                    w wVar3 = w.this;
                    wVar3.lv = wVar3.xs.getDynamicShowType();
                    w.this.ud = true;
                    w.this.ud();
                    w.this.f21078b.setVisibility(8);
                }
            });
        }
        this.xs.setExpressVideoListenerProxy(new gu() { // from class: com.byazt.ig.w.2
            @Override // com.byazt.qk.gu
            public void a() {
            }

            @Override // com.byazt.qk.gu
            public void e() {
            }

            @Override // com.byazt.qk.gu
            public void eb() {
            }

            @Override // com.byazt.qk.gu
            public void hp(float f4) {
            }

            @Override // com.byazt.qk.gu
            public void j(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void jx(int i2) {
            }

            @Override // com.byazt.qk.gu
            public int l() {
                if (w.this.f21082o.get()) {
                    return 4;
                }
                w wVar = w.this;
                if (wVar.di == null || !wVar.dy) {
                    return 2;
                }
                if (w.this.di.f()) {
                    return 5;
                }
                if (w.this.di.ns()) {
                    return 1;
                }
                if (w.this.di.yr()) {
                    return 2;
                }
                w.this.di.b();
                return 3;
            }

            @Override // com.byazt.qk.gu
            public void q() {
            }

            @Override // com.byazt.qk.gu
            public void s() {
            }

            @Override // com.byazt.qk.gu
            public void setPauseFromExpressView(boolean z2) {
            }

            @Override // com.byazt.qk.gu
            public void w() {
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2, String str) {
            }

            @Override // com.byazt.qk.gu
            public void j() {
                w.this.f21079d.set(true);
                if (w.this.hq) {
                    w.this.f21083r.hp();
                    w.this.nu.l(false);
                }
            }

            @Override // com.byazt.qk.gu
            public int jx() {
                j jVar = w.this.di;
                if (jVar == null) {
                    return 0;
                }
                return (int) (jVar.gu() / 1000);
            }

            @Override // com.byazt.qk.gu
            public void w(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void hp(mp mpVar) {
            }

            @Override // com.byazt.qk.gu
            public void hp(boolean z2) {
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2) {
                w wVar = w.this;
                j jVar = wVar.di;
                if (jVar == null) {
                    return;
                }
                if (i2 == 2) {
                    jVar.eb(true);
                    if (w.this.hq) {
                        w.this.f21083r.hp();
                        w.this.dy();
                        return;
                    }
                    return;
                }
                if (i2 != 3) {
                    return;
                }
                wVar.f21079d.set(false);
                w.this.di.eb(false);
                if (w.this.hq) {
                    w.this.f21083r.l();
                    w.this.lv();
                }
            }

            @Override // com.byazt.qk.gu
            public void l(int i2) {
                w.this.f21083r.hp(i2);
            }

            @Override // com.byazt.qk.gu
            public long hp() {
                return w.this.di.gu();
            }

            @Override // com.byazt.qk.gu
            public void hp(float f4, float f5, float f6, float f7, int i2) {
                w.this.hp(f4, f5, f6, f7, i2);
            }
        });
        this.xs.setOnVideoSizeChangeListener(new FullRewardExpressView.hp() { // from class: com.byazt.ig.w.3
            @Override // com.byazt.jy.FullRewardExpressView.hp
            public void hp(int i2) {
                w.this.f21080ms = i2;
            }
        });
        this.ns.addView(this.xs);
        j jVar = new j(this.vv.getContext(), this.sz, lVar.hp());
        this.di = jVar;
        this.xs.setVideoController(jVar);
        lVar.hp(this.sz, this.f21081n, this.xs);
        this.di.hp(new l(lVar.w(), zx.jx(this.nu.hp()), new l.hp() { // from class: com.byazt.ig.w.4
            @Override // com.byazt.ig.w.l.hp
            public void hp(boolean z2) {
                w.this.j(z2);
            }

            @Override // com.byazt.ig.w.l.hp
            public void hp() {
                w.this.f21083r.j();
            }

            @Override // com.byazt.ig.w.l.hp
            public void hp(long j2, long j3) {
                w.this.f21083r.hp(j2, j3);
            }
        }, this.pu));
        this.di.l(this.nu.gu());
        this.xs.xs();
    }

    public void l(boolean z2) {
        if (this.hq == z2) {
            return;
        }
        this.hq = z2;
        if (z2) {
            ud();
            return;
        }
        dy();
        xh.hp((View) this.ky, 8);
        this.xh.cancel();
    }

    @com.byazt.kj.hp(hp = {0, 1, 7, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public static class l implements hp.InterfaceC0374hp {
        public final hp.InterfaceC0374hp hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f21085j;
        public boolean jx = false;

        /* renamed from: l, reason: collision with root package name */
        public final hp f21086l;

        /* renamed from: w, reason: collision with root package name */
        public final ud f21087w;

        public interface hp {
            void hp();

            void hp(long j2, long j3);

            void hp(boolean z2);
        }

        public l(hp.InterfaceC0374hp interfaceC0374hp, int i2, hp hpVar, ud udVar) {
            this.hp = interfaceC0374hp;
            this.f21086l = hpVar;
            this.f21085j = i2;
            this.f21087w = udVar;
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void hp() {
            this.jx = false;
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp();
            }
            hp hpVar = this.f21086l;
            if (hpVar != null) {
                hpVar.hp();
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void jx() {
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.jx();
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void l() {
            hp(true);
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.l();
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void hp(int i2, String str) {
            hp(true);
            this.jx = false;
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp(i2, str);
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void hp(long j2, long j3) {
            this.f21087w.removeMessages(101);
            if (j3 > 20000 && j2 > Math.min(this.f21085j * 1000, j3) * 0.75f) {
                hp(false);
                this.jx = true;
            }
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp(j2, j3);
            }
            hp hpVar = this.f21086l;
            if (hpVar != null) {
                hpVar.hp(j2, j3);
            }
        }

        private void hp(boolean z2) {
            hp hpVar;
            if (this.jx || (hpVar = this.f21086l) == null) {
                return;
            }
            hpVar.hp(z2);
        }
    }

    public View hp(Context context, com.byazt.ig.l lVar) {
        String strLl;
        String strValueOf;
        View viewK = a.k(context);
        RelativeLayout relativeLayout = (RelativeLayout) viewK.findViewById(2114387649);
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) viewK.findViewById(2114387793);
        TextView textView = (TextView) viewK.findViewById(2114387875);
        TextView textView2 = (TextView) viewK.findViewById(2114387630);
        TextView textView3 = (TextView) viewK.findViewById(2114387830);
        TTRatingBar tTRatingBar = (TTRatingBar) viewK.findViewById(2114387609);
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            tTRatingBar.setStarFillNum(4);
            tTRatingBar.setStarImageWidth(xh.jx(context, 15.0f));
            tTRatingBar.setStarImageHeight(xh.jx(context, 14.0f));
            tTRatingBar.setStarImagePadding(xh.jx(context, 4.0f));
            tTRatingBar.hp();
        }
        if (tTRoundRectImageView != null) {
            dy dyVarNq = lVar.hp().nq();
            if (dyVarNq != null && !TextUtils.isEmpty(dyVarNq.hp())) {
                com.byazt.ws.l.hp(dyVarNq).to(tTRoundRectImageView);
            } else {
                v.hp(context, "tt_ad_logo_small", (ImageView) tTRoundRectImageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            }
        }
        if (textView != null) {
            if (lVar.hp().v() != null && !TextUtils.isEmpty(lVar.hp().v().jx())) {
                textView.setText(lVar.hp().v().jx());
            } else {
                textView.setText(lVar.hp().v_());
            }
        }
        if (textView2 != null) {
            int iA = lVar.hp().v() != null ? lVar.hp().v().a() : 6870;
            if (iA > 10000) {
                strValueOf = (iA / 10000) + "万";
            } else {
                strValueOf = String.valueOf(iA);
            }
            textView2.setText(String.format("%1$s个评分", strValueOf));
        }
        if (textView3 != null) {
            if (TextUtils.isEmpty(lVar.hp().ll())) {
                if (lVar.hp().q() != 4) {
                    strLl = "查看详情";
                } else {
                    strLl = "立即下载";
                }
            } else {
                strLl = lVar.hp().ll();
            }
            textView3.setText(strLl);
        }
        xh.hp((View) relativeLayout, (View.OnClickListener) lVar.jx(), "reward_draw_listener");
        return viewK;
    }

    private void hp(Context context) {
        if (this.wv) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.ky = linearLayout;
            linearLayout.setClipChildren(false);
            this.ky.setGravity(1);
            this.ky.setOrientation(1);
            ImageView imageView = new ImageView(context);
            v.hp(context, "tt_ic_back_light", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            this.ky.addView(imageView, -1, -2);
            ImageView imageView2 = new ImageView(context);
            v.hp(context, "tt_ic_back_light", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            imageView2.setAlpha(0.7f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.topMargin = xh.jx(context, -8.0f);
            this.ky.addView(imageView2, layoutParams);
            TextView textView = new TextView(context);
            textView.setGravity(1);
            textView.setTextColor(-1);
            textView.setText("上滑浏览更多内容");
            this.ky.addView(textView);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 81;
            layoutParams2.bottomMargin = xh.jx(context, 156.0f);
            this.vv.addView(this.ky, layoutParams2);
            this.vv.setClipChildren(false);
            this.ky.setVisibility(8);
            hp(imageView, imageView2);
        }
    }

    private void hp(View view, View view2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new hp());
        objectAnimatorOfFloat.setDuration(1300L);
        objectAnimatorOfFloat.setStartDelay(700L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, xh.jx(this.vv.getContext(), -5.0f));
        objectAnimatorOfFloat2.setInterpolator(new PathInterpolator(0.2f, 0.0f, -0.3f, 1.0f));
        objectAnimatorOfFloat2.setDuration(1300L);
        objectAnimatorOfFloat2.setStartDelay(700L);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat3.setInterpolator(new hp());
        objectAnimatorOfFloat3.setDuration(1300L);
        objectAnimatorOfFloat3.setStartDelay(500L);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        objectAnimatorOfFloat3.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view2, "translationY", xh.jx(this.vv.getContext(), -6.0f));
        objectAnimatorOfFloat4.setInterpolator(new PathInterpolator(0.2f, 0.0f, -0.3f, 1.0f));
        objectAnimatorOfFloat4.setDuration(1300L);
        objectAnimatorOfFloat4.setStartDelay(500L);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        objectAnimatorOfFloat4.setRepeatMode(1);
        this.xh.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat2, objectAnimatorOfFloat4);
    }

    public void hp(View view) {
        com.byazt.ig.l lVar = this.nu;
        if (lVar == null || lVar.jx() == null) {
            return;
        }
        this.nu.jx().onClick(view);
    }

    public void hp(float f2, float f3, float f4, float f5, int i2) {
        FullRewardExpressView fullRewardExpressView = this.xs;
        if (fullRewardExpressView == null || fullRewardExpressView.getVideoFrameLayout() == null) {
            return;
        }
        int measuredWidth = this.xs.getVideoFrameLayout().getMeasuredWidth();
        int measuredHeight = this.xs.getVideoFrameLayout().getMeasuredHeight();
        if (this.di.m()) {
            this.xs.getVideoFrameLayout().animate().translationY(-(measuredHeight * (1.0f - f3))).setDuration(i2).start();
        } else {
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, f2, 1.0f, f3, measuredWidth * f4, measuredHeight * f5);
            scaleAnimation.setFillAfter(true);
            scaleAnimation.setDuration(i2);
            this.xs.getVideoFrameLayout().startAnimation(scaleAnimation);
        }
    }

    public void hp(jx.hp hpVar) {
        j jVar;
        this.f21083r = hpVar;
        if (hpVar == null || (jVar = this.di) == null) {
            return;
        }
        jVar.l(hpVar.jx());
    }
}
