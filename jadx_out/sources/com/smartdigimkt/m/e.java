package com.smartdigimkt.m;

import com.smartdigimkt.k.r;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41674a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f41675b;

    public e(j jVar, r rVar) {
        this.f41675b = jVar;
        this.f41674a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        this.f41675b.a(this.f41674a);
        this.f41675b.a(this.f41674a, 0L, 100L, true);
    }
}
