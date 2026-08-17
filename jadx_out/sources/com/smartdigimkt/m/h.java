package com.smartdigimkt.m;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f41681b;

    public h(j jVar, int i2) {
        this.f41681b = jVar;
        this.f41680a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f41681b.f41684a.cancel(this.f41680a);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
