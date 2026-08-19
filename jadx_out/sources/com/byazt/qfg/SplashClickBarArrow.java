package com.byazt.qfg;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.ymw.u;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 1797})
/* loaded from: classes3.dex */
public class SplashClickBarArrow extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public FrameLayout f24576a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f24577e;
    public ImageView eb;
    public int gu;
    public ImageView hp;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f24578j;
    public AnimatorSet jl;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public RelativeLayout f24579l;

    /* renamed from: q, reason: collision with root package name */
    public RelativeLayout f24580q;

    /* renamed from: s, reason: collision with root package name */
    public SplashDiffuseView f24581s;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f24582w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 2297})
    public static class hp implements Interpolator {
        private hp() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.38f ? f2 * 2.631579f : (f2 * (-1.6129032f)) + 1.6129032f;
        }
    }

    public SplashClickBarArrow(Context context) {
        super(context);
        this.f24577e = true;
        this.jl = new AnimatorSet();
        l(context);
    }

    public Animator getAnimator() {
        return this.jl;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            AnimatorSet animatorSet = this.jl;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
        } catch (Exception e2) {
            u.hp(e2.getMessage());
        }
    }

    private void jx() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.eb, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.qfg.SplashClickBarArrow.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (SplashClickBarArrow.this.f24577e) {
                    SplashClickBarArrow.this.f24581s.hp();
                }
                SplashClickBarArrow.this.f24577e = !r2.f24577e;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(SplashClickBarArrow.this.eb, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                SplashClickBarArrow.this.eb.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.eb, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.jl.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.jl.setStartDelay(1000L);
    }

    private void l(Context context) {
        View viewHp = hp(getContext());
        if (viewHp == null) {
            return;
        }
        addView(viewHp);
        SplashDiffuseView splashDiffuseView = new SplashDiffuseView(getContext());
        this.f24581s = splashDiffuseView;
        this.f24576a.addView(splashDiffuseView, 0);
        ViewGroup.LayoutParams layoutParams = this.f24581s.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.f24581s.setVisibility(4);
    }

    public void hp(int i2) {
        this.gu = i2;
        hp();
    }

    private View hp(Context context) {
        Resources resources = context.getResources();
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setClipChildren(false);
        frameLayout.setLayoutParams(layoutParams);
        this.hp = new ImageView(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 14.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 16.0f, resources.getDisplayMetrics()));
        this.hp.setId(2114387592);
        layoutParams2.gravity = 16;
        v.hp(context, "tt_splash_click_bar_go", (View) this.hp, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.hp.setLayoutParams(layoutParams2);
        frameLayout.addView(this.hp);
        xh.hp((View) this.hp, 8);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.f24579l = relativeLayout;
        relativeLayout.setId(2114387591);
        new FrameLayout.LayoutParams(-2, -2).gravity = 16;
        this.f24579l.setPadding(xh.jx(context, 4.0f), 0, 0, 0);
        frameLayout.addView(this.f24579l);
        xh.hp((View) this.f24579l, 8);
        ImageView imageView = new ImageView(context);
        this.jx = imageView;
        imageView.setId(2114387590);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.jx.setAlpha(0.0f);
        v.hp(context, "tt_splash_arrow", this.jx, 160);
        this.jx.setLayoutParams(layoutParams3);
        this.f24579l.addView(this.jx);
        ImageView imageView2 = new ImageView(context);
        this.f24578j = imageView2;
        imageView2.setId(2114387589);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.f24578j.setAlpha(0.0f);
        v.hp(context, "tt_splash_arrow", (View) this.f24578j, 160);
        this.f24578j.setLayoutParams(layoutParams4);
        this.f24579l.addView(this.f24578j);
        ImageView imageView3 = new ImageView(context);
        this.f24582w = imageView3;
        imageView3.setId(2114387588);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.f24582w.setAlpha(0.0f);
        v.hp(context, "tt_splash_arrow", (View) this.f24582w, 160);
        this.f24582w.setLayoutParams(layoutParams5);
        this.f24579l.addView(this.f24582w);
        View view = new View(context);
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics())));
        this.f24579l.addView(view);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f24576a = frameLayout2;
        frameLayout2.setId(2114387587);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        this.f24576a.setClipChildren(false);
        this.f24576a.setLayoutParams(layoutParams6);
        frameLayout.addView(this.f24576a);
        xh.hp((View) this.f24576a, 8);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.f24580q = relativeLayout2;
        relativeLayout2.setId(2114387586);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -1);
        this.f24580q.setClipChildren(false);
        this.f24580q.setLayoutParams(layoutParams7);
        this.f24576a.addView(this.f24580q);
        ImageView imageView4 = new ImageView(context);
        this.eb = imageView4;
        imageView4.setId(2114387585);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 50.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 50.0f, resources.getDisplayMetrics()));
        v.hp(context, "tt_splash_hand", this.eb, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.eb.setLayoutParams(layoutParams8);
        this.f24580q.addView(this.eb);
        xh.hp((View) this.eb, 4);
        return frameLayout;
    }

    private void l() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.jx, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new hp());
        objectAnimatorOfFloat.setDuration(1300L);
        objectAnimatorOfFloat.setStartDelay(700L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.jx, "translationX", 0.0f, xh.jx(getContext(), 20.0f));
        objectAnimatorOfFloat2.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        objectAnimatorOfFloat2.setDuration(1300L);
        objectAnimatorOfFloat2.setStartDelay(700L);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f24578j, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat3.setInterpolator(new hp());
        objectAnimatorOfFloat3.setDuration(1300L);
        objectAnimatorOfFloat3.setStartDelay(500L);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        objectAnimatorOfFloat3.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f24578j, "translationX", xh.jx(getContext(), 23.0f));
        objectAnimatorOfFloat4.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        objectAnimatorOfFloat4.setDuration(1300L);
        objectAnimatorOfFloat4.setStartDelay(500L);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        objectAnimatorOfFloat4.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f24582w, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat5.setInterpolator(new hp());
        objectAnimatorOfFloat5.setDuration(1300L);
        objectAnimatorOfFloat5.setStartDelay(200L);
        objectAnimatorOfFloat5.setRepeatCount(-1);
        objectAnimatorOfFloat5.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f24582w, "translationX", xh.jx(getContext(), 25.0f));
        objectAnimatorOfFloat6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        objectAnimatorOfFloat6.setDuration(1300L);
        objectAnimatorOfFloat6.setStartDelay(200L);
        objectAnimatorOfFloat6.setRepeatCount(-1);
        objectAnimatorOfFloat6.setRepeatMode(1);
        this.jl.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat5, objectAnimatorOfFloat2, objectAnimatorOfFloat4, objectAnimatorOfFloat6);
    }

    private void hp() {
        this.hp.setVisibility(8);
        this.f24579l.setVisibility(8);
        int i2 = this.gu;
        if (i2 == 1) {
            this.f24579l.setVisibility(0);
            l();
            return;
        }
        if (i2 == 2) {
            this.f24576a.setVisibility(0);
            post(new Runnable() { // from class: com.byazt.qfg.SplashClickBarArrow.1
                @Override // java.lang.Runnable
                public void run() {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SplashClickBarArrow.this.f24580q.getLayoutParams();
                    layoutParams.topMargin = (int) ((SplashClickBarArrow.this.f24581s.getMeasuredHeight() / 2.0f) - xh.jx(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.leftMargin = (int) ((SplashClickBarArrow.this.f24581s.getMeasuredWidth() / 2.0f) - xh.jx(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.bottomMargin = (int) (((-SplashClickBarArrow.this.f24581s.getMeasuredHeight()) / 2.0f) + xh.jx(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.rightMargin = (int) (((-SplashClickBarArrow.this.f24581s.getMeasuredWidth()) / 2.0f) + xh.jx(SplashClickBarArrow.this.getContext(), 5.0f));
                    SplashClickBarArrow.this.f24580q.setLayoutParams(layoutParams);
                }
            });
            jx();
        } else {
            if (i2 == 3 || i2 == 4 || i2 == 5 || i2 == 7) {
                return;
            }
            this.hp.setVisibility(0);
        }
    }
}
