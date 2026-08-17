package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AsseblemSplashATView f44562a;

    public o(AsseblemSplashATView asseblemSplashATView) {
        this.f44562a = asseblemSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AsseblemSplashATView asseblemSplashATView = this.f44562a;
        if (asseblemSplashATView.f43335K == null) {
            return;
        }
        asseblemSplashATView.k();
    }
}
