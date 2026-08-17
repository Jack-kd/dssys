package com.smartdigimkt.e;

import com.smartdigimkt.china.formatbusiness.ui.BubbleVibrationFallLayer;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleVibrationFallLayer f39926a;

    public d(BubbleVibrationFallLayer bubbleVibrationFallLayer) {
        this.f39926a = bubbleVibrationFallLayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubbleVibrationFallLayer bubbleVibrationFallLayer = this.f39926a;
        String[] strArr = BubbleVibrationFallLayer.f39840m;
        bubbleVibrationFallLayer.b();
    }
}
