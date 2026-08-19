package com.kwad.components.ad.widget;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public abstract class a implements ValueAnimator.AnimatorUpdateListener {
    private WeakReference<View> NX;

    public a(View view) {
        this.NX = new WeakReference<>(view);
    }

    public abstract void a(ViewGroup.LayoutParams layoutParams, Object obj);

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        WeakReference<View> weakReference = this.NX;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.NX.get();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        a(layoutParams, valueAnimator.getAnimatedValue());
        view.setLayoutParams(layoutParams);
    }
}
