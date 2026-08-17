package com.smartdigimkt.i5;

import android.os.SystemClock;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class a implements com.smartdigimkt.p1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j1.f f40741a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40742b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f40743c;

    public a(b bVar, com.smartdigimkt.j1.f fVar, com.smartdigimkt.g5.a aVar) {
        this.f40743c = bVar;
        this.f40741a = fVar;
        this.f40742b = aVar;
    }

    @Override // com.smartdigimkt.p1.f
    public final void a() {
    }

    @Override // com.smartdigimkt.p1.f
    public final void b() {
        com.smartdigimkt.h5.a aVar;
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.d dVar;
        if (!com.smartdigimkt.j1.f.a(this.f40741a.b())) {
            this.f40742b.a(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4587d, "load fill but ad not ready."));
            this.f40743c.d(this.f40742b);
            return;
        }
        com.smartdigimkt.g5.d dVar2 = new com.smartdigimkt.g5.d();
        com.smartdigimkt.j1.f fVar = this.f40741a;
        dVar2.f40419a = fVar;
        com.smartdigimkt.g5.a aVar2 = this.f40742b;
        aVar2.f40411r = dVar2;
        com.smartdigimkt.q3.a aVar3 = aVar2.f40412s;
        if (aVar3 != null && (aVar = aVar2.f40402i) != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            aVar3.f42755d0 = System.currentTimeMillis() - aVar.f40591a;
            aVar3.f42759f0 = jElapsedRealtime;
            aVar3.f42757e0 = System.currentTimeMillis() - aVar.f40591a;
            aVar3.f42761g0 = jElapsedRealtime;
            aVar3.f42763h0 = z.a(fVar.f41069e, fVar.f41067c);
            try {
                com.smartdigimkt.m3.b bVar = fVar.f41069e;
                if (bVar != null && (eVar = bVar.f41832w) != null && (dVar = eVar.f41897T1) != null) {
                    long j2 = dVar.f41836a;
                    if (j2 > 0) {
                        com.smartdigimkt.l3.a aVar4 = fVar.f41067c;
                        long jA = com.smartdigimkt.m3.h.a(j2, bVar, aVar4);
                        aVar3.f42769k0 = jA;
                        if (j2 <= 0) {
                            j2 = 0;
                        }
                        aVar3.f42771l0 = j2;
                        aVar3.f42773m0 = aVar4 != null && aVar4.f41628b == 1 && com.smartdigimkt.m3.h.a(jA) && !(com.smartdigimkt.m3.p.f42139a && com.smartdigimkt.m3.h.a(jA));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(2, this.f40742b.f40412s, -1L);
        if (this.f40742b.f40404k != 1) {
            com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(12, this.f40742b.f40412s, -1L);
        }
        this.f40743c.e(this.f40742b);
    }

    @Override // com.smartdigimkt.p1.f
    public final void a(com.smartdigimkt.i0.f fVar) {
        if (fVar != null) {
            this.f40742b.a(com.smartdigimkt.k4.b.a("10010", fVar.a()));
        } else {
            this.f40742b.a(com.smartdigimkt.k4.b.a("10010", "The ad load failed."));
        }
        this.f40743c.d(this.f40742b);
    }
}
