package com.smartdigimkt.e2;

import android.animation.ValueAnimator;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40053a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f40054b;

    public f(h hVar, int i2) {
        this.f40054b = hVar;
        this.f40053a = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        float f2 = -iIntValue;
        this.f40054b.f40056a.f40057a.f43818k.setTranslationY(f2);
        this.f40054b.f40056a.f40057a.f43810c.setTranslationY(f2);
        this.f40054b.f40056a.f40057a.f43812e.setTranslationY(f2);
        this.f40054b.f40056a.f40057a.f43815h.setTranslationY(f2);
        this.f40054b.f40056a.f40057a.f43818k.setTranslationY(f2);
        float f3 = iIntValue;
        this.f40054b.f40056a.f40057a.f43819l.setTranslationY(f3);
        RelativeLayout relativeLayout = this.f40054b.f40056a.f40057a.f43809b;
        if (relativeLayout != null) {
            relativeLayout.setAlpha(((f3 * 1.0f) / this.f40053a) * 0.8f);
        }
    }
}
