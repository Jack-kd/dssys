package com.byazt.wnd;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.sq.s;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2429})
/* loaded from: classes3.dex */
public class SlideRightView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public AnimatorSet f27052a;
    public AnimatorSet eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f27053j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f27054l;

    /* renamed from: q, reason: collision with root package name */
    public AnimatorSet f27055q;

    /* renamed from: s, reason: collision with root package name */
    public AnimatorSet f27056s;

    /* renamed from: w, reason: collision with root package name */
    public TextView f27057w;

    public SlideRightView(Context context) {
        super(context);
        this.f27052a = new AnimatorSet();
        this.eb = new AnimatorSet();
        this.f27056s = new AnimatorSet();
        this.f27055q = new AnimatorSet();
        this.hp = context;
        jx();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
    }

    public void setGuideText(String str) {
        this.f27057w.setText(str);
    }

    private void j() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f27054l, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.jx, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.jx, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f27053j, "alpha", 0.0f, 1.0f);
        this.f27056s.setDuration(300L);
        this.f27056s.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f27054l, "translationX", 0.0f, s.hp(getContext(), 90.0f));
        objectAnimatorOfFloat5.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) s.hp(getContext(), 90.0f));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.wnd.SlideRightView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SlideRightView.this.f27053j.getLayoutParams();
                layoutParams.width = num.intValue();
                SlideRightView.this.f27053j.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.jx, "translationX", 0.0f, s.hp(getContext(), 90.0f));
        objectAnimatorOfFloat6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.f27055q.setDuration(1500L);
        this.f27055q.playTogether(objectAnimatorOfFloat5, valueAnimatorOfInt, objectAnimatorOfFloat6);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.f27054l, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.f27053j, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.jx, "alpha", 1.0f, 0.0f);
        this.eb.setDuration(50L);
        this.eb.playTogether(objectAnimatorOfFloat7, objectAnimatorOfFloat8, objectAnimatorOfFloat9);
        this.f27052a.playSequentially(this.f27056s, this.f27055q, this.eb);
    }

    private void jx() {
        ImageView imageView = new ImageView(this.hp);
        this.f27053j = imageView;
        v.hp(this.hp, "tt_splash_slide_right_bg", (View) imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, -2);
        layoutParams.gravity = 48;
        layoutParams.leftMargin = (int) s.hp(this.hp, 30.0f);
        addView(this.f27053j, layoutParams);
        setClipChildren(false);
        setClipToPadding(false);
        ImageView imageView2 = new ImageView(this.hp);
        this.jx = imageView2;
        v.hp(this.hp, "tt_splash_slide_right_circle", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 50.0f), (int) s.hp(this.hp, 50.0f));
        layoutParams2.gravity = 48;
        layoutParams2.leftMargin = (int) s.hp(this.hp, 30.0f);
        addView(this.jx, layoutParams2);
        ImageView imageView3 = new ImageView(this.hp);
        this.f27054l = imageView3;
        v.hp(this.hp, "tt_splash_hand2", imageView3, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 80.0f), (int) s.hp(this.hp, 80.0f));
        layoutParams3.gravity = 48;
        layoutParams3.leftMargin = (int) s.hp(this.hp, 30.0f);
        addView(this.f27054l, layoutParams3);
        TextView textView = new TextView(this.hp);
        this.f27057w = textView;
        textView.setTextColor(-1);
        this.f27057w.setSingleLine();
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 80;
        addView(this.f27057w, layoutParams4);
        post(new Runnable() { // from class: com.byazt.wnd.SlideRightView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) SlideRightView.this.f27054l.getLayoutParams();
                layoutParams5.topMargin = (int) ((SlideRightView.this.jx.getMeasuredHeight() / 2.0f) - s.hp(SlideRightView.this.getContext(), 7.0f));
                int iHp = (-SlideRightView.this.jx.getMeasuredWidth()) + ((int) s.hp(SlideRightView.this.hp, 30.0f));
                layoutParams5.leftMargin = iHp;
                layoutParams5.setMarginStart(iHp);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                SlideRightView.this.f27054l.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) SlideRightView.this.f27053j.getLayoutParams();
                layoutParams6.topMargin = (int) ((SlideRightView.this.jx.getMeasuredHeight() / 2.0f) - s.hp(SlideRightView.this.getContext(), 5.0f));
                layoutParams6.leftMargin = (int) ((SlideRightView.this.jx.getMeasuredWidth() / 2.0f) + ((int) s.hp(SlideRightView.this.hp, 30.0f)));
                layoutParams5.setMarginStart(layoutParams5.leftMargin);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                SlideRightView.this.f27053j.setLayoutParams(layoutParams6);
            }
        });
    }

    public void hp() {
        j();
        this.f27052a.start();
        this.f27052a.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.wnd.SlideRightView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideRightView.this.postDelayed(new Runnable() { // from class: com.byazt.wnd.SlideRightView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideRightView.this.f27052a.start();
                    }
                }, 200L);
            }
        });
    }

    public void l() {
        try {
            AnimatorSet animatorSet = this.f27052a;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f27056s;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.f27055q;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.eb;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable unused) {
        }
    }
}
