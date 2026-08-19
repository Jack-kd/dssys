package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.AsseblemCardSplashATView;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AsseblemCardSplashATView f44486a;

    public h(AsseblemCardSplashATView asseblemCardSplashATView) {
        this.f44486a = asseblemCardSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AsseblemCardSplashATView asseblemCardSplashATView = this.f44486a;
        if (asseblemCardSplashATView.f43335K == null) {
            return;
        }
        asseblemCardSplashATView.k();
    }
}
