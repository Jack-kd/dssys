package com.smartdigimkt.s4;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: c, reason: collision with root package name */
    public static e f43142c;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f43143d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile com.smartdigimkt.t4.a f43144a;

    /* renamed from: b, reason: collision with root package name */
    public volatile com.smartdigimkt.t4.b f43145b;

    public final void a(d dVar, c cVar) {
        com.smartdigimkt.t4.d dVar2;
        if (dVar == null) {
            return;
        }
        int iA = dVar.a();
        synchronized (f43143d) {
            try {
                if (iA == 6) {
                    if (this.f43145b == null) {
                        this.f43145b = new com.smartdigimkt.t4.b();
                    }
                    dVar2 = this.f43145b;
                } else {
                    if (this.f43144a == null) {
                        this.f43144a = new com.smartdigimkt.t4.a();
                    }
                    dVar2 = this.f43144a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (dVar2 == null) {
            if (cVar != null) {
                cVar.a((Throwable) new Exception("socketUploadData is null."));
            }
        } else {
            com.smartdigimkt.t4.c cVar2 = new com.smartdigimkt.t4.c(dVar2, dVar, cVar);
            if (dVar.a() == 6) {
                com.smartdigimkt.b4.e.a().a(cVar2, 2);
            } else {
                com.smartdigimkt.b4.e.a().a(cVar2, 3);
            }
        }
    }
}
