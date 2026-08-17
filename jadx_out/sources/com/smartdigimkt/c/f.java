package com.smartdigimkt.c;

import com.smartdigimkt.china.based.twist.TwistG2CV2View;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f39599a;

    public f(h hVar) {
        this.f39599a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TwistG2CV2View twistG2CV2View = this.f39599a.f39601i;
        if (twistG2CV2View != null) {
            twistG2CV2View.registerGyroscopeAfterShowNotified();
        }
    }
}
