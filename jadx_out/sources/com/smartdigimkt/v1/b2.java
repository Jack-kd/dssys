package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;

/* loaded from: classes5.dex */
public final class b2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSplashATView f44433a;

    public b2(BaseSplashATView baseSplashATView) {
        this.f44433a = baseSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j3 j3Var = this.f44433a.f43336L;
        if (j3Var.f44510b != null) {
            j3Var.f44509a.post(new i3(j3Var));
        }
    }
}
