package com.smartdigimkt.e;

import android.os.Vibrator;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Vibrator f39965a;

    public o(Vibrator vibrator) {
        this.f39965a = vibrator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q.a(this.f39965a);
    }
}
