package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.FullScreenATView;

/* loaded from: classes5.dex */
public final class n2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenATView f44555a;

    public n2(FullScreenATView fullScreenATView) {
        this.f44555a = fullScreenATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44555a.M();
        this.f44555a.c(1);
    }
}
