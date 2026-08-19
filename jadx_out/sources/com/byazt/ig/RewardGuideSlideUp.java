package com.byazt.ig;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.jz.sz;
import com.byazt.vi.a;
import com.byazt.ymw.u;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 7, 1241})
/* loaded from: classes.dex */
public class RewardGuideSlideUp extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final AnimatorSet f21056a;
    public final AnimatorSet eb;
    public ImageView hp;

    /* renamed from: j, reason: collision with root package name */
    public AnimatorSet f21057j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f21058l;

    /* renamed from: w, reason: collision with root package name */
    public final AnimatorSet f21059w;

    public RewardGuideSlideUp(Context context) {
        super(context);
        this.f21059w = new AnimatorSet();
        this.f21056a = new AnimatorSet();
        this.eb = new AnimatorSet();
        hp(context);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.f21057j;
    }

    public void l() {
        try {
            AnimatorSet animatorSet = this.f21057j;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f21056a;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.f21059w;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.eb;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable th) {
            u.hp(th.getMessage());
        }
    }

    private void hp(Context context) {
        if (context == null) {
            context = sz.getContext();
        }
        addView(a.gu(context));
        this.hp = (ImageView) findViewById(2114387644);
        this.f21058l = (ImageView) findViewById(2114387939);
        this.jx = (ImageView) findViewById(2114387639);
    }

    public void hp() {
        this.f21057j = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.hp, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.hp, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.hp, "translationY", 0.0f, xh.jx(getContext(), -110.0f));
        objectAnimatorOfFloat3.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, xh.jx(getContext(), 110.0f));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ig.RewardGuideSlideUp.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) RewardGuideSlideUp.this.f21058l.getLayoutParams();
                layoutParams.height = num.intValue();
                RewardGuideSlideUp.this.f21058l.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f21058l, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f21058l, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.jx, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.jx, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.jx, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.jx, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.jx, "translationY", 0.0f, xh.jx(getContext(), -110.0f));
        objectAnimatorOfFloat10.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.f21059w.setDuration(50L);
        this.eb.setDuration(3000L);
        this.f21056a.setDuration(50L);
        this.f21059w.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat7, objectAnimatorOfFloat5);
        this.f21056a.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat6, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat4);
        this.eb.playTogether(objectAnimatorOfFloat3, valueAnimatorOfInt, objectAnimatorOfFloat10);
        this.f21057j.playSequentially(this.f21056a, this.eb, this.f21059w);
    }
}
