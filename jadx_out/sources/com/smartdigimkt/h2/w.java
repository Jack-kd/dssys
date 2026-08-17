package com.smartdigimkt.h2;

import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GestureG2CV2View;

/* loaded from: classes5.dex */
public final class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GestureG2CV2View f40536a;

    public w(GestureG2CV2View gestureG2CV2View) {
        this.f40536a = gestureG2CV2View;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f40536a.getMeasuredWidth() < com.smartdigimkt.c5.k.a(this.f40536a.getContext(), 182.0f)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f40536a.f43883i.getLayoutParams();
            layoutParams.width = -1;
            this.f40536a.f43883i.setLayoutParams(layoutParams);
        }
        this.f40536a.f43883i.setVisibility(0);
    }
}
