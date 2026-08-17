package com.meishu.sdk.meishu_ad;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

/* loaded from: classes4.dex */
public class s extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f32491a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f32492b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f32493c;

    public s(v vVar, ImageView imageView, int i2) {
        this.f32493c = vVar;
        this.f32491a = imageView;
        this.f32492b = i2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f32491a, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f32491a, "scaleY", 0.0f, 1.0f);
        this.f32493c.getClass();
        animatorSet.setDuration(800L);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat.setRepeatCount(this.f32492b);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat2.setRepeatCount(this.f32492b);
        objectAnimatorOfFloat2.setRepeatMode(1);
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
        animatorSet.start();
        this.f32493c.f32573e.add(animatorSet);
    }
}
