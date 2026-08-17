package com.smartdigimkt.h2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PuzzleV2G2CV2View;

/* loaded from: classes5.dex */
public final class y0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PuzzleV2G2CV2View f40541a;

    public y0(PuzzleV2G2CV2View puzzleV2G2CV2View) {
        this.f40541a = puzzleV2G2CV2View;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        PuzzleV2G2CV2View puzzleV2G2CV2View = this.f40541a;
        if (puzzleV2G2CV2View.f43928s != iIntValue) {
            puzzleV2G2CV2View.f43928s = iIntValue;
            puzzleV2G2CV2View.f43923n.setProgress(iIntValue);
        }
    }
}
