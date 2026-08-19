package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;

/* loaded from: classes5.dex */
public final class y1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z1 f44654a;

    public y1(z1 z1Var) {
        this.f44654a = z1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseSplashATView baseSplashATView = this.f44654a.f44663a;
        long j2 = baseSplashATView.f43338N;
        if (j2 > 0) {
            baseSplashATView.a(j2);
            this.f44654a.f44663a.f43338N -= 1000;
            return;
        }
        if (!baseSplashATView.needShowSplashEndCard()) {
            BaseSplashATView baseSplashATView2 = this.f44654a.f44663a;
            baseSplashATView2.a(2, true);
            baseSplashATView2.f43329E.setText(baseSplashATView2.f43332H);
            baseSplashATView2.f43349b0 = true;
            return;
        }
        BaseSplashATView baseSplashATView3 = this.f44654a.f44663a;
        baseSplashATView3.onSplashEndCardCountDownTick(baseSplashATView3.f43339O);
        BaseSplashATView baseSplashATView4 = this.f44654a.f44663a;
        long j3 = baseSplashATView4.f43339O - 1000;
        baseSplashATView4.f43339O = j3;
        if (j3 <= 0) {
            baseSplashATView4.a(2, true);
            baseSplashATView4.f43329E.setText(baseSplashATView4.f43332H);
            baseSplashATView4.f43349b0 = true;
        }
    }
}
