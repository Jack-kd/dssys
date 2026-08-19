package com.byazt.gsd;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import com.byazt.dnb.jl;
import com.byazt.pg.r;
import com.byazt.tm.hp;
import com.byazt.tw.a;
import com.byazt.xci.df;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.xci.nd;
import com.byazt.ymw.ud;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.badge.BadgeDrawable;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, 28})
/* loaded from: classes2.dex */
public class hp implements r.hp {

    /* renamed from: a, reason: collision with root package name */
    public FrameLayout f20583a;
    public PlayableVideoContainer eb;
    public boolean gu;
    public final String hp;
    public final mp jx;

    /* renamed from: k, reason: collision with root package name */
    public final com.byazt.tm.l f20586k;

    /* renamed from: l, reason: collision with root package name */
    public final Context f20587l;

    /* renamed from: s, reason: collision with root package name */
    public jx f20589s;

    /* renamed from: w, reason: collision with root package name */
    public final int f20590w;

    /* renamed from: j, reason: collision with root package name */
    public final ud f20585j = new ud(Looper.getMainLooper(), this);

    /* renamed from: q, reason: collision with root package name */
    public boolean f20588q = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f20584e = true;
    public boolean jl = false;
    public boolean zy = false;

    public hp(String str, Activity activity, mp mpVar, int i2, com.byazt.tm.l lVar, FrameLayout frameLayout) {
        this.hp = str;
        this.f20587l = activity;
        this.jx = mpVar;
        this.f20590w = i2;
        if (!ec.j(mpVar)) {
            this.f20583a = frameLayout;
        }
        w();
        this.f20586k = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.eb == null || this.f20583a == null) {
            return;
        }
        eb();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.eb, "translationX", -xh.jx(this.f20587l, 150.0f), 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.eb, "translationY", -xh.jx(this.f20587l, 100.0f), 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.eb, "alpha", 0.1f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(500L);
        animatorSet.start();
    }

    private void q() {
        PlayableVideoContainer playableVideoContainer = this.eb;
        if (playableVideoContainer == null) {
            return;
        }
        playableVideoContainer.l(true);
        this.f20585j.sendEmptyMessageDelayed(1, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.jl = true;
        if (this.gu) {
            this.gu = false;
            l();
        }
        hp(this.f20584e);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        PlayableVideoContainer playableVideoContainer = this.eb;
        if (playableVideoContainer == null) {
            return;
        }
        playableVideoContainer.l(false);
    }

    private void a() {
        xh.hp((View) this.f20583a, 8);
        xh.hp((View) this.eb, 8);
    }

    private void eb() {
        xh.hp((View) this.f20583a, 0);
        xh.hp((View) this.eb, 0);
    }

    private void w() {
        if (this.f20583a == null) {
            return;
        }
        if (nd.l(this.jx) == 1) {
            PlayableVideoContainer playableVideoContainer = new PlayableVideoContainer(this.f20587l);
            playableVideoContainer.setBackgroundColor(0);
            playableVideoContainer.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(xh.jx(this.f20587l, 156.0f), xh.jx(this.f20587l, 87.0f));
            layoutParams.gravity = BadgeDrawable.TOP_END;
            layoutParams.topMargin = xh.jx(this.f20587l, 55.0f);
            layoutParams.rightMargin = xh.jx(this.f20587l, 20.0f);
            this.f20583a.addView(playableVideoContainer, layoutParams);
            this.eb = playableVideoContainer;
            return;
        }
        PlayableVideoContainer playableVideoContainer2 = new PlayableVideoContainer(this.f20587l);
        playableVideoContainer2.setBackgroundColor(0);
        playableVideoContainer2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(xh.jx(this.f20587l, 73.0f), xh.jx(this.f20587l, 130.0f));
        layoutParams2.gravity = BadgeDrawable.TOP_END;
        layoutParams2.topMargin = xh.jx(this.f20587l, 55.0f);
        layoutParams2.rightMargin = xh.jx(this.f20587l, 30.0f);
        this.f20583a.addView(playableVideoContainer2, layoutParams2);
        this.eb = playableVideoContainer2;
    }

    public void hp(long j2, boolean z2) throws JSONException {
        PlayableVideoContainer playableVideoContainer;
        this.zy = true;
        this.f20584e = z2;
        hp(j2);
        if (this.f20588q) {
            if (this.f20586k != null && (playableVideoContainer = this.eb) != null) {
                playableVideoContainer.postDelayed(new Runnable() { // from class: com.byazt.gsd.hp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.e();
                    }
                }, 500L);
                this.eb.setCustomClickListener(new View.OnClickListener() { // from class: com.byazt.gsd.hp.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (hp.this.f20583a != null) {
                            hp.this.hp();
                            hp.this.f20586k.l();
                        }
                    }
                });
            } else if (jl.hp(this.jx)) {
                a();
            } else {
                eb();
            }
        }
    }

    public void j() {
        jx jxVar = this.f20589s;
        if (jxVar == null) {
            return;
        }
        jxVar.e();
        this.f20589s = null;
        this.f20588q = false;
        this.gu = false;
        this.jl = false;
    }

    public void jx() {
        if (this.zy && this.f20588q && this.f20589s != null) {
            this.gu = false;
            this.f20585j.sendEmptyMessageDelayed(1, 2000L);
            if (this.f20589s.yr()) {
                return;
            }
            this.f20589s.s();
        }
    }

    public void l() {
        if (this.zy && this.f20588q && this.f20589s != null) {
            this.f20585j.removeMessages(1);
            if (this.jl) {
                this.f20589s.a();
            } else {
                this.gu = true;
            }
        }
    }

    public void hp() {
        this.zy = false;
        j();
        a();
    }

    private void hp(long j2) throws JSONException {
        if (this.eb == null) {
            return;
        }
        if (this.f20586k != null || jl.hp(this.jx)) {
            if (this.f20588q) {
                jx jxVar = this.f20589s;
                if (jxVar != null) {
                    jxVar.l(j2);
                    this.f20589s.hp(j2);
                    return;
                }
                return;
            }
            this.f20588q = true;
            a aVarHp = df.hp(1, this.jx);
            aVarHp.setCid(this.jx.j());
            aVarHp.setWidth(this.eb.getWidth());
            aVarHp.setHeight(this.eb.getHeight());
            aVarHp.setLogExtra(this.jx.w_());
            aVarHp.setCurrent(j2);
            aVarHp.setQuiet(this.f20584e);
            if (jl.hp(this.jx)) {
                aVarHp.setAudio(true);
            }
            jx jxVar2 = new jx(this.f20587l, this.eb.getVideoContainer(), this.jx, null);
            this.f20589s = jxVar2;
            jxVar2.hp(new hp.InterfaceC0374hp() { // from class: com.byazt.gsd.hp.3
                @Override // com.byazt.tm.hp.InterfaceC0374hp
                public void hp() {
                    if (hp.this.f20586k != null) {
                        hp.this.hp();
                        hp.this.f20586k.jx();
                    } else {
                        if (!jl.hp(hp.this.jx) || hp.this.f20589s == null || hp.this.f20589s.w()) {
                            return;
                        }
                        hp.this.hp();
                    }
                }

                @Override // com.byazt.tm.hp.InterfaceC0374hp
                public void jx() {
                    hp.this.s();
                }

                @Override // com.byazt.tm.hp.InterfaceC0374hp
                public void l() {
                    hp.this.eb.hp(true);
                    if (hp.this.f20586k != null) {
                        hp.this.f20586k.e();
                    }
                }

                @Override // com.byazt.tm.hp.InterfaceC0374hp
                public void hp(int i2, String str) {
                    if (i2 == 308) {
                        return;
                    }
                    hp.this.eb.hp(true);
                }

                @Override // com.byazt.tm.hp.InterfaceC0374hp
                public void hp(long j3, long j4) {
                    hp.this.eb.hp(false);
                    if (hp.this.f20586k != null) {
                        hp.this.f20586k.hp(j3, j4);
                    }
                }
            });
            this.f20589s.l(j2);
            this.f20589s.hp(aVarHp);
            if (this.f20586k != null) {
                this.f20589s.b();
                this.f20589s.eb(false);
                this.eb.hp();
            } else {
                if (jl.hp(this.jx)) {
                    this.f20589s.eb(true);
                }
                q();
            }
        }
    }

    public void hp(boolean z2) {
        jx jxVar = this.f20589s;
        if (jxVar == null) {
            return;
        }
        this.f20584e = z2;
        jxVar.l(z2);
    }
}
