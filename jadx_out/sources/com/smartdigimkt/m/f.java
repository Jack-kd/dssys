package com.smartdigimkt.m;

import com.smartdigimkt.k.r;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41676a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f41677b;

    public f(j jVar, r rVar) {
        this.f41677b = jVar;
        this.f41676a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        this.f41677b.a(this.f41676a);
        this.f41677b.a(this.f41676a, 0L, 100L, true);
    }
}
