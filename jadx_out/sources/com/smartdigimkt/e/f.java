package com.smartdigimkt.e;

import android.animation.Animator;
import android.os.Handler;
import com.smartdigimkt.china.formatbusiness.ui.BubbleVibrationFallLayer;

/* loaded from: classes5.dex */
public final class f extends com.smartdigimkt.y1.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleVibrationFallLayer f39930a;

    public f(BubbleVibrationFallLayer bubbleVibrationFallLayer) {
        this.f39930a = bubbleVibrationFallLayer;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        BubbleVibrationFallLayer bubbleVibrationFallLayer = this.f39930a;
        Handler handler = bubbleVibrationFallLayer.f39843c;
        if (handler == null || bubbleVibrationFallLayer.f39846f) {
            return;
        }
        handler.removeMessages(101);
        this.f39930a.f39843c.sendEmptyMessageDelayed(101, 500L);
    }
}
