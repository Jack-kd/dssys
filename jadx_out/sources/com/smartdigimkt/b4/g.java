package com.smartdigimkt.b4;

/* loaded from: classes5.dex */
public abstract class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public String f39593a = "sdm_default_thread";

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        Thread.currentThread().setName(this.f39593a);
        b();
    }
}
