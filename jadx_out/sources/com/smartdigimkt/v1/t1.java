package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class t1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44615a;

    public t1(BaseShakeView baseShakeView) {
        this.f44615a = baseShakeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44615a.f43316a.setPivotX((int) (this.f44615a.f43316a.getWidth() * 0.5d));
        this.f44615a.f43316a.setPivotY((int) (this.f44615a.f43316a.getHeight() * 0.5d));
    }
}
