package com.smartdigimkt.h2;

import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FingerG2CV2View;

/* loaded from: classes5.dex */
public final class a0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseG2CV2View f40457a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e0 f40458b;

    public a0(e0 e0Var, FingerG2CV2View fingerG2CV2View) {
        this.f40458b = e0Var;
        this.f40457a = fingerG2CV2View;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RelativeLayout relativeLayout = this.f40458b.f40479d;
        if (relativeLayout == null || relativeLayout.getMeasuredHeight() <= com.smartdigimkt.c5.k.a(this.f40458b.f40476a, 90.0f)) {
            return;
        }
        ((FingerG2CV2View) this.f40457a).setFingerViewMode(506);
    }
}
