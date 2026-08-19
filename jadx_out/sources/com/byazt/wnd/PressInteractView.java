package com.byazt.wnd;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.sq.s;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.badge.BadgeDrawable;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2416})
/* loaded from: classes3.dex */
public class PressInteractView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public TextView f27027a;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public AnimatorSet f27028j;
    public SplashDiffuseView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f27029l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27030w;

    public PressInteractView(Context context) {
        super(context);
        this.f27030w = true;
        this.hp = context;
        this.f27028j = new AnimatorSet();
        jx();
        j();
        post(new Runnable() { // from class: com.byazt.wnd.PressInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                int iHp = (int) s.hp(PressInteractView.this.hp, 50.0f);
                int iHp2 = (int) s.hp(PressInteractView.this.hp, 50.0f);
                if (PressInteractView.this.jx.getMeasuredHeight() > 0) {
                    iHp = PressInteractView.this.jx.getMeasuredHeight();
                }
                if (PressInteractView.this.jx.getMeasuredWidth() > 0) {
                    iHp2 = PressInteractView.this.jx.getMeasuredWidth();
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressInteractView.this.f27029l.getLayoutParams();
                layoutParams.topMargin = ((int) ((iHp / 2.0f) - s.hp(PressInteractView.this.getContext(), 5.0f))) + ((int) s.hp(PressInteractView.this.hp, 40.0f));
                layoutParams.leftMargin = ((int) ((iHp2 / 2.0f) - s.hp(PressInteractView.this.getContext(), 5.0f))) + ((int) s.hp(PressInteractView.this.hp, 20.0f));
                layoutParams.bottomMargin = (int) (((-iHp) / 2.0f) + s.hp(PressInteractView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-iHp2) / 2.0f) + s.hp(PressInteractView.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                PressInteractView.this.f27029l.setLayoutParams(layoutParams);
            }
        });
    }

    public void setGuideText(String str) {
        this.f27027a.setVisibility(0);
        this.f27027a.setText(str);
    }

    public void setGuideTextColor(int i2) {
        this.f27027a.setTextColor(i2);
    }

    private void j() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f27029l, "scaleX", 1.0f, 1.0f, 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(600L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.wnd.PressInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressInteractView.this.f27030w) {
                    PressInteractView.this.jx.hp();
                }
                PressInteractView.this.f27030w = !r2.f27030w;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(PressInteractView.this.f27029l, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                PressInteractView.this.f27029l.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f27029l, "scaleY", 1.0f, 1.0f, 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(600L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f27028j.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void jx() {
        this.jx = new SplashDiffuseView(this.hp);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) s.hp(this.hp, 50.0f), (int) s.hp(this.hp, 50.0f));
        layoutParams.gravity = BadgeDrawable.TOP_START;
        layoutParams.topMargin = (int) s.hp(this.hp, 40.0f);
        int iHp = (int) s.hp(this.hp, 20.0f);
        layoutParams.leftMargin = iHp;
        layoutParams.setMarginStart(iHp);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.jx, layoutParams);
        this.f27029l = new ImageView(this.hp);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 78.0f), (int) s.hp(this.hp, 78.0f));
        v.hp(this.hp, "tt_splash_hand", this.f27029l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        addView(this.f27029l, layoutParams2);
        TextView textView = new TextView(this.hp);
        this.f27027a = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) s.hp(this.hp, 10.0f);
        addView(this.f27027a, layoutParams3);
        this.f27027a.setVisibility(8);
    }

    public void l() {
        AnimatorSet animatorSet = this.f27028j;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        SplashDiffuseView splashDiffuseView = this.jx;
        if (splashDiffuseView != null) {
            splashDiffuseView.l();
        }
        ImageView imageView = this.f27029l;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }

    public void hp() {
        this.f27028j.start();
    }
}
