package com.smartdigimkt.m;

import com.smartdigimkt.k.r;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f41667a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f41668b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f41669c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f41670d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f41671e;

    public c(long j2, long j3, r rVar, j jVar, boolean z2) {
        this.f41671e = jVar;
        this.f41667a = z2;
        this.f41668b = rVar;
        this.f41669c = j2;
        this.f41670d = j3;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (this.f41667a) {
            this.f41671e.a(this.f41668b);
        }
        this.f41671e.a(this.f41668b, this.f41669c, this.f41670d, false);
    }
}
