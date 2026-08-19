package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;
import java.util.TimerTask;

/* loaded from: classes5.dex */
public final class z1 extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSplashATView f44663a;

    public z1(BaseSplashATView baseSplashATView) {
        this.f44663a = baseSplashATView;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        BaseSplashATView baseSplashATView = this.f44663a;
        com.smartdigimkt.a4.f fVar = baseSplashATView.f43337M;
        if (baseSplashATView.getParent() != null && fVar != null) {
            Object parent = baseSplashATView.getParent();
            if ((parent instanceof View) && fVar.a((View) parent, baseSplashATView, 80, 0) && !com.smartdigimkt.z3.d.f45447a) {
                this.f44663a.post(new y1(this));
                if (this.f44663a.f43346V.compareAndSet(3, 2)) {
                    this.f44663a.a(110);
                    return;
                }
                return;
            }
        }
        if (this.f44663a.f43346V.compareAndSet(2, 3)) {
            this.f44663a.a(111);
        }
    }
}
