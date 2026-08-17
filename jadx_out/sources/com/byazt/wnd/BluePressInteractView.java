package com.byazt.wnd;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.common.C1244a;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2341})
/* loaded from: classes3.dex */
public class BluePressInteractView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public View f26937a;

    /* renamed from: e, reason: collision with root package name */
    public Context f26938e;
    public ImageView eb;
    public AnimatorSet hp;

    /* renamed from: j, reason: collision with root package name */
    public View f26939j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public ObjectAnimator f26940l;

    /* renamed from: q, reason: collision with root package name */
    public int f26941q;

    /* renamed from: s, reason: collision with root package name */
    public int f26942s;

    /* renamed from: w, reason: collision with root package name */
    public View f26943w;

    public BluePressInteractView(Context context, int i2, int i3) {
        super(context);
        this.jx = false;
        this.hp = new AnimatorSet();
        this.f26942s = i2;
        this.f26941q = i3;
        this.f26938e = context;
        jx();
        j();
    }

    private void j() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f26939j, "scaleX", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f26939j, "scaleY", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f26943w, "scaleX", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f26943w, "scaleY", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f26937a, "scaleX", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f26937a, "scaleY", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.eb, C1244a.f35650B, 0.0f, -20.0f, 0.0f);
        this.f26940l = objectAnimatorOfFloat7;
        objectAnimatorOfFloat7.setDuration(1000L);
        this.hp.setDuration(1500L);
        this.hp.setInterpolator(new AccelerateDecelerateInterpolator());
        this.hp.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3).with(objectAnimatorOfFloat4).with(objectAnimatorOfFloat5).with(objectAnimatorOfFloat6);
        this.hp.addListener(new Animator.AnimatorListener() { // from class: com.byazt.wnd.BluePressInteractView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                BluePressInteractView.this.jx = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BluePressInteractView.this.jx) {
                    return;
                }
                BluePressInteractView.this.f26940l.start();
                BluePressInteractView.this.hp.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void jx() {
        View view = new View(this.f26938e);
        this.f26939j = view;
        view.setBackground(hp("#1A7BBEFF", "#337BBEFF"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (this.f26942s * 0.45d), (int) (this.f26941q * 0.45d));
        layoutParams.gravity = 17;
        this.f26939j.setLayoutParams(layoutParams);
        addView(this.f26939j);
        View view2 = new View(this.f26938e);
        this.f26943w = view2;
        view2.setBackground(hp("#337BBEFF", "#807BBEFF"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (this.f26942s * 0.25d), (int) (this.f26941q * 0.25d));
        layoutParams2.gravity = 17;
        this.f26943w.setLayoutParams(layoutParams2);
        addView(this.f26943w);
        View view3 = new View(this.f26938e);
        this.f26937a = view3;
        view3.setBackground(hp("#807BBEFF", "#FF7BBEFF"));
        int i2 = this.f26942s;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (i2 * 0.25d), (int) (i2 * 0.25d));
        layoutParams3.gravity = 17;
        this.f26937a.setLayoutParams(layoutParams3);
        addView(this.f26937a);
        this.eb = new ImageView(this.f26938e);
        v.hp(getContext(), "tt_blue_hand", this.eb, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.eb.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((int) (this.f26942s * 0.62d), (int) (this.f26941q * 0.53d));
        layoutParams4.gravity = 17;
        layoutParams4.topMargin = (layoutParams4.width / 2) - 5;
        layoutParams4.leftMargin = (layoutParams4.height / 2) - 5;
        this.eb.setLayoutParams(layoutParams4);
        addView(this.eb);
    }

    public void l() {
        this.jx = true;
        ObjectAnimator objectAnimator = this.f26940l;
        if (objectAnimator == null || this.hp == null) {
            return;
        }
        objectAnimator.cancel();
        this.hp.cancel();
    }

    private GradientDrawable hp(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(1, Color.parseColor(str2));
        return gradientDrawable;
    }

    public void hp() {
        this.jx = false;
        ObjectAnimator objectAnimator = this.f26940l;
        if (objectAnimator == null || this.hp == null) {
            return;
        }
        objectAnimator.start();
        this.hp.start();
    }
}
