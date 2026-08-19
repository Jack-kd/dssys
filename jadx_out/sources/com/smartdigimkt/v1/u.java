package com.smartdigimkt.v1;

import android.view.View;

/* loaded from: classes5.dex */
public final class u extends com.smartdigimkt.a4.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f44620a;

    public u(Runnable runnable) {
        this.f44620a = runnable;
    }

    @Override // com.smartdigimkt.a4.a
    public final void recordImpression(View view) {
        Runnable runnable = this.f44620a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
