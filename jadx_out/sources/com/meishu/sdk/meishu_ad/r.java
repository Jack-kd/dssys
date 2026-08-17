package com.meishu.sdk.meishu_ad;

import android.animation.ObjectAnimator;
import android.widget.ImageView;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public class r extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f32440a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f32441b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f32442c;

    public r(v vVar, ImageView imageView, int i2) {
        this.f32442c = vVar;
        this.f32440a = imageView;
        this.f32441b = i2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f32440a, C1244a.f35650B, 0.0f, -45.0f, 0.0f);
        this.f32442c.getClass();
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatCount(this.f32441b);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.start();
        this.f32442c.f32573e.add(objectAnimatorOfFloat);
    }
}
