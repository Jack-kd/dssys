package com.smartdigimkt.f3;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40234a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40235b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f40236c;

    public n(p pVar, String str, com.smartdigimkt.m3.b bVar) {
        this.f40236c = pVar;
        this.f40234a = str;
        this.f40235b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p pVar = this.f40236c;
        String str = pVar.f40241a;
        synchronized (pVar.f40245e) {
            try {
                p pVar2 = this.f40236c;
                pVar2.getClass();
                long jC = p.c();
                if (pVar2.f40244d != jC) {
                    pVar2.f40243c.clear();
                    pVar2.f40244d = jC;
                }
                r rVar = (r) this.f40236c.f40243c.get(this.f40234a);
                if (rVar == null) {
                    rVar = new r();
                    this.f40236c.f40243c.put(this.f40234a, rVar);
                }
                rVar.b(((com.smartdigimkt.m3.b) this.f40235b).f42054o0);
            } catch (Throwable th) {
                throw th;
            }
        }
        p.a(this.f40236c, 4, this.f40234a, this.f40235b);
    }
}
