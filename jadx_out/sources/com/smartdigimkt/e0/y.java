package com.smartdigimkt.e0;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final String f40036a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.e f40037b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.w3.b f40038c;

    /* renamed from: d, reason: collision with root package name */
    public final long f40039d;

    /* renamed from: e, reason: collision with root package name */
    public com.smartdigimkt.w3.a f40040e;

    /* renamed from: f, reason: collision with root package name */
    public long f40041f = 0;

    public y(com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.e eVar, com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.w3.b bVar;
        String str = cVar.f41818i;
        this.f40036a = str;
        this.f40037b = eVar;
        cVar.e();
        if (cVar instanceof com.smartdigimkt.m3.k) {
        }
        com.smartdigimkt.w3.d dVarA = com.smartdigimkt.w3.d.a();
        synchronized (dVarA) {
            bVar = (com.smartdigimkt.w3.b) dVarA.f44940a.get(str);
            if (bVar == null) {
                bVar = new com.smartdigimkt.w3.b(str);
                dVarA.f44940a.put(str, bVar);
            }
        }
        this.f40038c = bVar;
        this.f40039d = 0L;
        if (TextUtils.equals(String.valueOf(eVar.f41915a), "4") && eVar.f41860H0 != 1 && eVar.f41895T > 0) {
            this.f40039d = eVar.f41948l;
        }
        bVar.a(new com.smartdigimkt.w3.c(eVar.f41895T, eVar.f41901V, eVar.f41904W, this.f40039d));
        bVar.a(new w(this, cVar, aVar));
        bVar.f44925f = new x(this, cVar);
    }
}
