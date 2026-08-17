package com.smartdigimkt.f3;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40237a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40238b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f40239c;

    public o(p pVar, String str, com.smartdigimkt.m3.b bVar) {
        this.f40239c = pVar;
        this.f40237a = str;
        this.f40238b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f40239c.f40245e) {
            try {
                p pVar = this.f40239c;
                String str = pVar.f40241a;
                long jC = p.c();
                if (pVar.f40244d != jC) {
                    pVar.f40243c.clear();
                    pVar.f40244d = jC;
                }
                r rVar = (r) this.f40239c.f40243c.get(this.f40237a);
                if (rVar == null) {
                    rVar = new r();
                    this.f40239c.f40243c.put(this.f40237a, rVar);
                }
                com.smartdigimkt.m3.c cVar = this.f40238b;
                if (cVar instanceof com.smartdigimkt.m3.b) {
                    rVar.a(((com.smartdigimkt.m3.b) cVar).f42054o0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p.a(this.f40239c, 6, this.f40237a, this.f40238b);
    }
}
