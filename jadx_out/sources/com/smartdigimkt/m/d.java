package com.smartdigimkt.m;

import com.smartdigimkt.k.r;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41672a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f41673b;

    public d(j jVar, r rVar) {
        this.f41673b = jVar;
        this.f41672a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        this.f41673b.a(this.f41672a);
        this.f41673b.a(this.f41672a, 100L, 100L, true);
    }
}
