package com.smartdigimkt.e;

import android.view.View;
import com.smartdigimkt.china.formatbusiness.ui.BubbleVibrationFallLayer;

/* loaded from: classes5.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleVibrationFallLayer f39924a;

    public c(BubbleVibrationFallLayer bubbleVibrationFallLayer) {
        this.f39924a = bubbleVibrationFallLayer;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Runnable runnable = this.f39924a.f39847g;
        if (runnable != null) {
            runnable.run();
        }
    }
}
