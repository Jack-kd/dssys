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

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1133})
/* loaded from: classes3.dex */
public class HandLongPressView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public TextView f27006a;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public AnimatorSet f27007j;
    public CircleRippleView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f27008l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27009w;

    public HandLongPressView(Context context) {
        super(context);
        this.f27009w = true;
        this.hp = context;
        this.f27007j = new AnimatorSet();
        jx();
        j();
        post(new Runnable() { // from class: com.byazt.wnd.HandLongPressView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) HandLongPressView.this.f27008l.getLayoutParams();
                layoutParams.topMargin = ((int) ((HandLongPressView.this.jx.getMeasuredHeight() / 2.0f) - s.hp(HandLongPressView.this.getContext(), 5.0f))) + ((int) s.hp(HandLongPressView.this.hp, 20.0f));
                layoutParams.leftMargin = ((int) ((HandLongPressView.this.jx.getMeasuredWidth() / 2.0f) - s.hp(HandLongPressView.this.getContext(), 5.0f))) + ((int) s.hp(HandLongPressView.this.hp, 20.0f));
                layoutParams.bottomMargin = (int) (((-HandLongPressView.this.jx.getMeasuredHeight()) / 2.0f) + s.hp(HandLongPressView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-HandLongPressView.this.jx.getMeasuredWidth()) / 2.0f) + s.hp(HandLongPressView.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                HandLongPressView.this.f27008l.setLayoutParams(layoutParams);
            }
        });
    }

    public void setGuideText(String str) {
        this.f27006a.setText(str);
    }

    public void setGuideTextColor(int i2) {
        this.f27006a.setTextColor(i2);
    }

    private void j() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f27008l, "scaleX", 1.0f, 0.8f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.wnd.HandLongPressView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (HandLongPressView.this.f27009w) {
                    HandLongPressView.this.jx.hp();
                    HandLongPressView.this.jx.setAlpha(1.0f);
                } else {
                    HandLongPressView.this.jx.l();
                    HandLongPressView.this.jx.setAlpha(0.0f);
                }
                HandLongPressView.this.f27009w = !r2.f27009w;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(HandLongPressView.this.f27008l, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                HandLongPressView.this.f27008l.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f27008l, "scaleY", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f27007j.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void jx() {
        this.jx = new CircleRippleView(this.hp);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) s.hp(this.hp, 80.0f), (int) s.hp(this.hp, 80.0f));
        layoutParams.gravity = BadgeDrawable.TOP_START;
        layoutParams.topMargin = (int) s.hp(this.hp, 20.0f);
        int iHp = (int) s.hp(this.hp, 20.0f);
        layoutParams.leftMargin = iHp;
        layoutParams.setMarginStart(iHp);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.jx, layoutParams);
        this.jx.hp();
        this.f27008l = new ImageView(this.hp);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) s.hp(this.hp, 80.0f), (int) s.hp(this.hp, 80.0f));
        v.hp(this.hp, "tt_splash_hand", this.f27008l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        addView(this.f27008l, layoutParams2);
        TextView textView = new TextView(this.hp);
        this.f27006a = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) s.hp(this.hp, 10.0f);
        addView(this.f27006a, layoutParams3);
    }

    public void l() {
        AnimatorSet animatorSet = this.f27007j;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        CircleRippleView circleRippleView = this.jx;
        if (circleRippleView != null) {
            circleRippleView.l();
        }
    }

    public void hp() {
        this.f27007j.start();
    }
}
