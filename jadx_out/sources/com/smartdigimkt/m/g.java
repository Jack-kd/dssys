package com.smartdigimkt.m;

import com.smartdigimkt.k.r;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41678a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f41679b;

    public g(j jVar, r rVar) {
        this.f41679b = jVar;
        this.f41678a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f41679b.f41684a.cancel(j.a(this.f41679b, this.f41678a).f41688a);
            this.f41679b.f41685b.remove(this.f41678a.f41192o);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
