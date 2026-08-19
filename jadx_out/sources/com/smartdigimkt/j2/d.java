package com.smartdigimkt.j2;

import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewSplashATView;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f41100a;

    public d(e eVar) {
        this.f41100a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41100a.f41101a;
        int i2 = WTWebViewSplashATView.f43968n0;
        if (wTWebViewSplashATView.f43335K == null) {
            return;
        }
        wTWebViewSplashATView.k();
    }
}
