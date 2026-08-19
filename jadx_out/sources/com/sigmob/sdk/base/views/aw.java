package com.sigmob.sdk.base.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes4.dex */
public class aw extends v {

    /* renamed from: a, reason: collision with root package name */
    private au f36900a;

    /* renamed from: b, reason: collision with root package name */
    private av f36901b;

    /* renamed from: c, reason: collision with root package name */
    private ObjectAnimator f36902c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f36903d;

    public aw(Context context) {
        super(context);
        c();
    }

    private void c() {
        addView(new C1294f(getContext()), new FrameLayout.LayoutParams(-1, -1));
        this.f36900a = new au(getContext());
        this.f36901b = new av(getContext());
        addView(this.f36900a, new ViewGroup.LayoutParams(-1, -1));
        addView(this.f36901b, new ViewGroup.LayoutParams(-1, -1));
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f36901b, (Property<av, Float>) View.ROTATION_Y, -45.0f, 0.0f, 45.0f);
        this.f36902c = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(1000L);
        this.f36902c.setRepeatCount(-1);
        this.f36902c.setRepeatMode(2);
    }

    @Override // com.sigmob.sdk.base.views.v
    public void a() {
        this.f36903d = true;
        ObjectAnimator objectAnimator = this.f36902c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f36902c.start();
        }
    }

    @Override // com.sigmob.sdk.base.views.v
    public void b() {
        this.f36903d = false;
        ObjectAnimator objectAnimator = this.f36902c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f36903d) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public aw(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public aw(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        c();
    }
}
