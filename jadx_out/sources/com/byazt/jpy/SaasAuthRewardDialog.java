package com.byazt.jpy;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.byazt.ij.jx;
import com.byazt.jz.ud;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.ws.l;
import com.byazt.xci.as;
import com.byazt.xci.mp;
import com.byazt.ymw.e;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, 2393})
/* loaded from: classes.dex */
public class SaasAuthRewardDialog extends RelativeLayout implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    public static boolean f21668e = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f21669a;
    public mp eb;
    public SaasAuthEnvelope hp;

    /* renamed from: j, reason: collision with root package name */
    public RotateAnimation f21670j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public BaseSaasEnvelope f21671l;

    /* renamed from: q, reason: collision with root package name */
    public int f21672q;

    /* renamed from: s, reason: collision with root package name */
    public String f21673s;

    /* renamed from: w, reason: collision with root package name */
    public ScaleAnimation f21674w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, 2265})
    public static class hp implements b {
        private hp() {
        }

        @Override // com.byazt.nke.b
        public void onFailed(int i2, String str, Throwable th) {
        }

        @Override // com.byazt.nke.b
        public void onSuccess(u uVar) {
        }
    }

    public SaasAuthRewardDialog(@NonNull Context context) {
        super(context);
        this.f21669a = false;
        hp(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ud.l(false);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (getVisibility() == 0) {
            if (this.f21669a) {
                setVisibility(8);
                return;
            } else {
                e.l().postDelayed(this, 5000L);
                l();
                return;
            }
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.5f);
        this.f21674w = scaleAnimation;
        scaleAnimation.setDuration(600L);
        this.f21674w.setFillAfter(true);
        this.f21674w.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.jpy.SaasAuthRewardDialog.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SaasAuthRewardDialog.this.f21670j = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
                SaasAuthRewardDialog.this.f21670j.setDuration(5000L);
                SaasAuthRewardDialog.this.f21670j.setRepeatCount(-1);
                SaasAuthRewardDialog.this.f21670j.setFillAfter(true);
                SaasAuthRewardDialog.this.f21670j.setInterpolator(new LinearInterpolator());
                SaasAuthRewardDialog.this.jx.startAnimation(SaasAuthRewardDialog.this.f21670j);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.jx.startAnimation(this.f21674w);
        ud.l(true);
        setVisibility(0);
        this.hp.hp();
        e.l().postDelayed(this, 2000L);
    }

    private void jx() {
        try {
            if (f21668e) {
                return;
            }
            hp hpVar = new hp();
            l.hp(jx.hp("saas_light_shine.webp")).to(hpVar);
            l.hp(jx.hp("saas_red_envelope.webp")).to(hpVar);
            l.hp(jx.hp("saas_reward_goods_bg.webp")).to(hpVar);
            l.hp(jx.hp("saas_reward_coupon_bg.webp")).to(hpVar);
            l.hp(jx.hp("saas_reward_title.webp")).to(hpVar);
            f21668e = true;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.f21669a = true;
        as asVarGu = this.eb.gu();
        if (asVarGu.e() != null) {
            this.f21671l = new SaasAuthCouponEnvelope(getContext(), asVarGu.e());
        } else if (asVarGu.gu() != null) {
            this.f21671l = new SaasAuthProductEnvelope(getContext(), asVarGu.gu());
        }
        BaseSaasEnvelope baseSaasEnvelope = this.f21671l;
        if (baseSaasEnvelope != null) {
            addView(baseSaasEnvelope, new RelativeLayout.LayoutParams(-1, -1));
            this.f21671l.hp();
            com.byazt.go.hp hpVar = new com.byazt.go.hp(getContext(), this.eb, this.f21673s, this.f21672q);
            setTag(67108864, 2917);
            com.byazt.mi.hp.hp().hp(this.eb.hashCode() + this.eb.ns()).put("live_saas_interaction_type", 101);
            setOnClickListener(hpVar);
            this.f21671l.setOnCloseClickListener(new View.OnClickListener() { // from class: com.byazt.jpy.SaasAuthRewardDialog.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SaasAuthRewardDialog.this.hp();
                }
            });
            this.f21671l.setOnButtonClickListener(hpVar);
        }
        SaasAuthEnvelope saasAuthEnvelope = this.hp;
        if (saasAuthEnvelope != null) {
            saasAuthEnvelope.l();
        }
        removeView(this.hp);
    }

    public void hp(mp mpVar, String str, int i2) {
        if (mpVar != null && com.byazt.yx.l.hp().jx() == 2) {
            as asVarGu = mpVar.gu();
            if (asVarGu != null && ((asVarGu.gu() != null || asVarGu.e() != null) && asVarGu.q())) {
                this.eb = mpVar;
                this.f21673s = str;
                this.f21672q = i2;
                setBackgroundColor(Color.parseColor("#aa000000"));
                e.l().postDelayed(this, 5000L);
                hp(getContext());
                jx();
                return;
            }
            setVisibility(8);
            return;
        }
        setVisibility(8);
    }

    private void hp(Context context) {
        this.jx = new ImageView(context);
        try {
            l.hp(jx.hp("saas_light_shine.webp")).to(this.jx);
            this.jx.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } catch (Error unused) {
        }
        int iJ = xh.j(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iJ, iJ);
        layoutParams.addRule(13);
        addView(this.jx, layoutParams);
        SaasAuthEnvelope saasAuthEnvelope = new SaasAuthEnvelope(context);
        this.hp = saasAuthEnvelope;
        saasAuthEnvelope.setId(2114387464);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        addView(this.hp, layoutParams2);
        this.hp.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.jpy.SaasAuthRewardDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SaasAuthRewardDialog.this.l();
                e.l().removeCallbacks(SaasAuthRewardDialog.this);
            }
        });
        this.hp.setOnCloseClickListener(new View.OnClickListener() { // from class: com.byazt.jpy.SaasAuthRewardDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SaasAuthRewardDialog.this.hp();
            }
        });
    }

    public void hp() {
        SaasAuthEnvelope saasAuthEnvelope = this.hp;
        if (saasAuthEnvelope != null) {
            saasAuthEnvelope.l();
        }
        BaseSaasEnvelope baseSaasEnvelope = this.f21671l;
        if (baseSaasEnvelope != null) {
            baseSaasEnvelope.l();
        }
        RotateAnimation rotateAnimation = this.f21670j;
        if (rotateAnimation != null) {
            rotateAnimation.cancel();
            this.f21670j = null;
        }
        ScaleAnimation scaleAnimation = this.f21674w;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
            this.f21674w = null;
        }
        e.l().removeCallbacks(this);
        setVisibility(8);
        ud.l(false);
    }
}
