package com.meishu.sdk.meishu_ad;

import android.animation.ObjectAnimator;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* loaded from: classes4.dex */
public class t extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32550a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView f32551b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f32552c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32553d;

    public t(v vVar, RelativeLayout relativeLayout, ImageView imageView, int i2) {
        this.f32553d = vVar;
        this.f32550a = relativeLayout;
        this.f32551b = imageView;
        this.f32552c = i2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        this.f32550a.setVisibility(0);
        this.f32551b.setVisibility(0);
        int iA = com.meishu.sdk.core.utils.m.a(this.f32553d.f32569a);
        int i2 = ((int) (iA * 13.7d)) / 100;
        int height = this.f32551b.getHeight();
        if (height == 0) {
            height = (iA * 5) / 100;
        }
        float f2 = (-i2) + height;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f32551b, "translationY", 0.0f, f2, f2);
        this.f32553d.getClass();
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatCount(this.f32552c);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.start();
        this.f32553d.f32573e.add(objectAnimatorOfFloat);
    }
}
