package com.ubix.ssp.ad.e;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes5.dex */
public class n extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private double f46987a;

    /* renamed from: b, reason: collision with root package name */
    private int f46988b;

    /* renamed from: c, reason: collision with root package name */
    private int f46989c;

    /* renamed from: d, reason: collision with root package name */
    private int f46990d;

    /* renamed from: e, reason: collision with root package name */
    private float f46991e;

    /* renamed from: f, reason: collision with root package name */
    private AnimatorSet f46992f;

    /* renamed from: g, reason: collision with root package name */
    private ImageView f46993g;

    /* renamed from: h, reason: collision with root package name */
    private ImageView f46994h;

    /* renamed from: i, reason: collision with root package name */
    private int f46995i;

    /* renamed from: j, reason: collision with root package name */
    private String f46996j;

    /* renamed from: k, reason: collision with root package name */
    private String f46997k;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (n.this.f46992f != null) {
                n.this.f46992f.start();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public n(Context context, boolean z2, boolean z3) {
        super(context);
        this.f46987a = 4.0d;
        this.f46991e = 250.0f;
        this.f46992f = null;
        this.f46995i = 1300;
        this.f46996j = "向上滑动!";
        this.f46997k = "跳转详情或第三方应用!";
        double dA = com.ubix.ssp.ad.e.a0.r.a().a(context);
        this.f46987a = dA;
        int i2 = (int) (dA * 54.0d);
        this.f46988b = i2;
        double d2 = i2;
        this.f46989c = (int) (0.65d * d2);
        this.f46990d = (int) (d2 * 0.8d);
        a(z2, z3);
        b();
        setLayoutParams(new RelativeLayout.LayoutParams(-2, MediaPlayer.MEDIA_PLAYER_OPTION_ROTATION));
    }

    private void b() {
        synchronized (this) {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            } finally {
            }
            if (this.f46993g != null && this.f46994h != null) {
                if (this.f46992f == null) {
                    this.f46992f = new AnimatorSet();
                }
                float f2 = this.f46991e;
                float f3 = -((float) ((f2 * 0.95d) / 8.0d));
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f46993g, "translationY", 0.0f, f3, 2.0f * f3, 3.0f * f3, 4.0f * f3, 5.0f * f3, 6.0f * f3, 7.0f * f3, 8.0f * f3, -f2);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f46993g, "alpha", 0.3f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.7f, 0.0f);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f46994h, "alpha", 0.0f, 0.0f, 0.7f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.3f, 0.0f, 0.0f);
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f46994h, "scaleY", 0.75f, this.f46991e / 100.0f);
                this.f46994h.setPivotY(this.f46990d);
                ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f46993g, "alpha", 0.0f, 0.0f);
                objectAnimatorOfFloat.setDuration(this.f46995i);
                objectAnimatorOfFloat2.setDuration(this.f46995i);
                objectAnimatorOfFloat3.setDuration(this.f46995i);
                objectAnimatorOfFloat4.setDuration(this.f46995i);
                objectAnimatorOfFloat5.setDuration(400L);
                this.f46992f.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3).with(objectAnimatorOfFloat4).after(objectAnimatorOfFloat5);
                this.f46992f.setInterpolator(new DecelerateInterpolator());
                this.f46992f.addListener(new a());
            }
        }
    }

    public void c() {
        AnimatorSet animatorSet;
        synchronized (this) {
            try {
                if (this.f46992f == null) {
                    b();
                }
                animatorSet = this.f46992f;
            } finally {
            }
            if (animatorSet != null) {
                animatorSet.start();
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            c();
        } else {
            a();
        }
    }

    public void setDuration(int i2) {
        this.f46995i = i2;
    }

    public void setMoveDistance(float f2) {
        this.f46991e = f2;
    }

    public void a() {
        AnimatorSet animatorSet;
        synchronized (this) {
            try {
                animatorSet = this.f46992f;
            } finally {
            }
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f46992f.removeAllListeners();
                this.f46992f = null;
            }
        }
    }

    private void a(boolean z2, boolean z3) {
        if (z3) {
            try {
                double d2 = this.f46988b;
                this.f46991e = (float) (0.8d * d2);
                int i2 = (int) (d2 * 0.7d);
                this.f46988b = i2;
                this.f46989c = (int) (i2 * 0.6d);
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        TextView textView = new TextView(getContext());
        TextView textView2 = new TextView(getContext());
        textView.setId(910203);
        textView2.setId(910204);
        textView.setText(this.f46996j);
        textView2.setText(this.f46997k);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
        textView.getPaint().setFakeBoldText(true);
        textView.setTextSize(16.0f);
        if (!z2) {
            textView.setVisibility(4);
            textView2.setVisibility(4);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(2, 910204);
        layoutParams.addRule(14);
        layoutParams.bottomMargin = (int) (this.f46987a * 8.0d);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(14);
        layoutParams2.bottomMargin = (int) (this.f46987a * 8.0d);
        addView(textView2, layoutParams2);
        addView(textView, layoutParams);
        this.f46993g = new ImageView(getContext());
        ImageView imageView = new ImageView(getContext());
        this.f46994h = imageView;
        imageView.setAlpha(0.0f);
        this.f46993g.setImageDrawable(q.a("ubix/ic_hand_common.webp"));
        this.f46994h.setBackgroundDrawable(com.ubix.ssp.ad.e.a0.c.a(Color.parseColor("#bbffffff"), Color.parseColor("#00ffffff"), 12));
        int i3 = this.f46988b;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i3, i3);
        if (z2) {
            layoutParams3.addRule(2, 910203);
        } else {
            layoutParams3.addRule(12);
        }
        layoutParams3.addRule(14);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(this.f46989c, this.f46990d);
        if (z2) {
            layoutParams4.addRule(2, 910203);
        } else {
            layoutParams4.addRule(12);
        }
        layoutParams4.addRule(14);
        double d3 = this.f46987a;
        layoutParams3.bottomMargin = (int) ((z3 ? 2 : 4) * d3);
        layoutParams4.bottomMargin = (int) (d3 * (z3 ? 2 : 4));
        addView(this.f46994h, layoutParams4);
        addView(this.f46993g, layoutParams3);
    }
}
