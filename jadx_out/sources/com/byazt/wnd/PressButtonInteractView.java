package com.byazt.wnd;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.sq.s;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1788})
/* loaded from: classes3.dex */
public class PressButtonInteractView extends FrameLayout {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public AnimatorSet f27024j;
    public SplashDiffuseView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f27025l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27026w;

    public PressButtonInteractView(Context context) {
        super(context);
        this.f27026w = true;
        this.hp = context;
        this.f27024j = new AnimatorSet();
        jx();
        j();
        post(new Runnable() { // from class: com.byazt.wnd.PressButtonInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressButtonInteractView.this.f27025l.getLayoutParams();
                layoutParams.topMargin = (int) ((PressButtonInteractView.this.jx.getMeasuredHeight() / 2.0f) - s.hp(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.leftMargin = (int) ((PressButtonInteractView.this.jx.getMeasuredWidth() / 2.0f) - s.hp(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.bottomMargin = (int) (((-PressButtonInteractView.this.jx.getMeasuredHeight()) / 2.0f) + s.hp(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-PressButtonInteractView.this.jx.getMeasuredWidth()) / 2.0f) + s.hp(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                PressButtonInteractView.this.f27025l.setLayoutParams(layoutParams);
            }
        });
    }

    private void j() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f27025l, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.wnd.PressButtonInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressButtonInteractView.this.f27026w) {
                    PressButtonInteractView.this.jx.hp();
                }
                PressButtonInteractView.this.f27026w = !r2.f27026w;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(PressButtonInteractView.this.f27025l, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
                objectAnimatorOfFloat2.start();
                PressButtonInteractView.this.f27025l.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f27025l, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(800L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f27024j.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void jx() {
        this.jx = new SplashDiffuseView(this.hp);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) s.hp(this.hp, 40.0f), (int) s.hp(this.hp, 40.0f));
        layoutParams.gravity = 8388627;
        addView(this.jx, layoutParams);
        this.f27025l = new ImageView(this.hp);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 62.0f), (int) s.hp(this.hp, 62.0f));
        layoutParams2.gravity = 16;
        v.hp(this.hp, "tt_splash_hand", this.f27025l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        addView(this.f27025l, layoutParams2);
    }

    public void l() {
        AnimatorSet animatorSet = this.f27024j;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        SplashDiffuseView splashDiffuseView = this.jx;
        if (splashDiffuseView != null) {
            splashDiffuseView.l();
        }
        ImageView imageView = this.f27025l;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }

    public void hp() {
        this.f27024j.start();
    }
}
