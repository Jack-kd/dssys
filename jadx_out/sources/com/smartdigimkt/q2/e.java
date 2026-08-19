package com.smartdigimkt.q2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSpecialNoteView f42719a;

    public e(BaseSpecialNoteView baseSpecialNoteView) {
        this.f42719a = baseSpecialNoteView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f42719a.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
