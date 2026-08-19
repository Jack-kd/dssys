package com.smartdigimkt.b4;

/* loaded from: classes5.dex */
public final class c extends g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f39587b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f39588c;

    public c(long j2, Runnable runnable) {
        this.f39587b = j2;
        this.f39588c = runnable;
    }

    @Override // com.smartdigimkt.b4.g
    public final void b() throws InterruptedException {
        long j2 = this.f39587b;
        if (j2 > 0) {
            try {
                Thread.sleep(j2);
            } catch (InterruptedException unused) {
            }
        }
        this.f39588c.run();
    }
}
