package com.smartdigimkt.e;

import com.smartdigimkt.china.formatbusiness.ui.BubbleVibrationFallLayer;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleVibrationFallLayer f39928a;

    public e(BubbleVibrationFallLayer bubbleVibrationFallLayer) {
        this.f39928a = bubbleVibrationFallLayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubbleVibrationFallLayer bubbleVibrationFallLayer = this.f39928a;
        if (bubbleVibrationFallLayer.f39846f) {
            return;
        }
        bubbleVibrationFallLayer.b();
    }
}
