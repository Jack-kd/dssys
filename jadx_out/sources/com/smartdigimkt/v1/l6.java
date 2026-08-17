package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.SpreadAnimLayout;

/* loaded from: classes5.dex */
public final class l6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SpreadAnimLayout f44536a;

    public l6(SpreadAnimLayout spreadAnimLayout) {
        this.f44536a = spreadAnimLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44536a.startSpreadAnimation();
    }
}
