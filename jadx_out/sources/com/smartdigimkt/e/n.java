package com.smartdigimkt.e;

import android.os.Vibrator;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Vibrator f39964a;

    public n(Vibrator vibrator) {
        this.f39964a = vibrator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q.a(this.f39964a);
    }
}
