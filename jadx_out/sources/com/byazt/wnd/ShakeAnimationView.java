package com.byazt.wnd;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.nw.e;
import com.byazt.ymw.di;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1821})
/* loaded from: classes3.dex */
public class ShakeAnimationView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public TextView f27043a;

    /* renamed from: e, reason: collision with root package name */
    public e f27044e;
    public TextView eb;
    public boolean gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f27045j;
    public TextView jx;

    /* renamed from: l, reason: collision with root package name */
    public TextView f27046l;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f27047q;

    /* renamed from: s, reason: collision with root package name */
    public hp f27048s;

    /* renamed from: w, reason: collision with root package name */
    public di f27049w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1550})
    /* renamed from: com.byazt.wnd.ShakeAnimationView$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ShakeAnimationView.this.f27045j != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new l(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.wnd.ShakeAnimationView.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        ShakeAnimationView.this.postDelayed(new Runnable() { // from class: com.byazt.wnd.ShakeAnimationView.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ShakeAnimationView.this.f27045j.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                ShakeAnimationView.this.f27045j.startAnimation(rotateAnimation);
            }
        }
    }

    public interface hp {
        void hp(boolean z2);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1565})
    public static class l implements Interpolator {
        private l() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.25f ? (f2 * (-2.0f)) + 0.5f : f2 <= 0.5f ? (f2 * 4.0f) - 1.0f : f2 <= 0.75f ? (f2 * (-4.0f)) + 3.0f : (f2 * 2.0f) - 1.5f;
        }

        public /* synthetic */ l(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public ShakeAnimationView(Context context, View view, e eVar, boolean z2, int i2) {
        super(context);
        this.f27044e = eVar;
        this.gu = z2;
        this.hp = i2;
        hp(context, view);
    }

    public LinearLayout getShakeLayout() {
        return this.f27047q;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.f27049w == null) {
                this.f27049w = new di(getContext().getApplicationContext(), 1, this.gu);
            }
            this.f27049w.hp(new di.hp() { // from class: com.byazt.wnd.ShakeAnimationView.2
                @Override // com.byazt.ymw.di.hp
                public void hp(int i2) {
                    boolean zHp = ShakeAnimationView.this.f27049w != null ? ShakeAnimationView.this.f27049w.hp() : false;
                    if (i2 == 1 && ShakeAnimationView.this.isShown() && ShakeAnimationView.this.f27048s != null) {
                        ShakeAnimationView.this.f27048s.hp(zHp);
                    }
                }
            });
            if (this.f27044e != null) {
                this.f27049w.hp(r0.hp());
                this.f27049w.jx(this.f27044e.eb());
                this.f27049w.jx(this.f27044e.l());
                this.f27049w.w(this.f27044e.j());
                this.f27049w.l(this.f27044e.jx());
                this.f27049w.a(this.f27044e.w());
                this.f27049w.hp(this.f27044e.a());
                this.f27049w.l(this.f27044e.s());
                this.f27049w.hp(this.hp);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        di diVar = this.f27049w;
        if (diVar != null) {
            diVar.l(this.hp);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        di diVar = this.f27049w;
        if (diVar != null) {
            if (z2) {
                diVar.hp(this.hp);
            } else {
                diVar.l(this.hp);
            }
        }
    }

    public void setOnShakeViewListener(hp hpVar) {
        this.f27048s = hpVar;
    }

    public void setShakeText(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f27043a.setText(str);
        } else {
            this.f27043a.setVisibility(8);
            this.eb.setVisibility(8);
        }
    }

    public void hp(Context context, View view) {
        addView(view);
        this.f27047q = (LinearLayout) findViewById(2097610727);
        this.f27045j = (ImageView) findViewById(2097610725);
        this.f27046l = (TextView) findViewById(2097610724);
        this.jx = (TextView) findViewById(2097610726);
        this.f27043a = (TextView) findViewById(2097610723);
        this.eb = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.f27047q.setBackground(gradientDrawable);
    }

    public void hp() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }
}
