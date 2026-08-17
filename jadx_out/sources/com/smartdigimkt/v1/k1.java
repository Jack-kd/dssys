package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class k1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44518a;

    public k1(BaseShakeView baseShakeView) {
        this.f44518a = baseShakeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iMin;
        try {
            iMin = Math.min(this.f44518a.getResources().getDisplayMetrics().widthPixels, this.f44518a.getResources().getDisplayMetrics().heightPixels) / 2;
        } catch (Throwable unused) {
            iMin = 0;
        }
        BaseShakeView baseShakeView = this.f44518a;
        baseShakeView.f43325j = com.smartdigimkt.t3.m.a(baseShakeView.getContext()).b(new com.smartdigimkt.t3.o(3, this.f44518a.f43321f), iMin, iMin);
        BaseShakeView baseShakeView2 = this.f44518a;
        baseShakeView2.getClass();
        com.smartdigimkt.b4.e.a().a(new l1(baseShakeView2));
    }
}
