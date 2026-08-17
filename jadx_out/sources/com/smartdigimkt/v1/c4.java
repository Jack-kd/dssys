package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.MraidSplashATView;

/* loaded from: classes5.dex */
public final class c4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidSplashATView f44444a;

    public c4(MraidSplashATView mraidSplashATView) {
        this.f44444a = mraidSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MraidSplashATView mraidSplashATView = this.f44444a;
        if (mraidSplashATView.f43335K == null) {
            return;
        }
        int i2 = MraidSplashATView.f43504f0;
        mraidSplashATView.k();
    }
}
