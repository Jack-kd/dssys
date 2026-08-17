package com.smartdigimkt.e;

import com.smartdigimkt.china.formatbusiness.ui.BubbleVibrationFallLayer;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.l2.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleVibrationFallLayer f39922a;

    public b(BubbleVibrationFallLayer bubbleVibrationFallLayer) {
        this.f39922a = bubbleVibrationFallLayer;
    }

    @Override // com.smartdigimkt.l2.g
    public final void a() {
        Runnable runnable = this.f39922a.f39848h;
        if (runnable != null) {
            runnable.run();
        }
    }
}
