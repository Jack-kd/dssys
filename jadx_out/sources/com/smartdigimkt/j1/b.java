package com.smartdigimkt.j1;

import com.anythink.core.bridge.a;
import com.smartdigimkt.z.z;
import java.util.Map;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.p1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.p1.f f41058a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f41059b;

    public b(f fVar, com.smartdigimkt.i5.a aVar) {
        this.f41059b = fVar;
        this.f41058a = aVar;
    }

    @Override // com.smartdigimkt.p1.f
    public final void a() {
        com.smartdigimkt.p1.f fVar = this.f41058a;
        if (fVar != null) {
            fVar.a();
        }
    }

    @Override // com.smartdigimkt.p1.f
    public final void b() {
        com.smartdigimkt.q3.a aVar;
        f fVar = this.f41059b;
        Map map = fVar.f41072h;
        if (map != null) {
            map.put(a.b.f1727a, Integer.valueOf(z.a(fVar.f41069e, fVar.f41067c)));
            com.smartdigimkt.m3.b bVar = fVar.f41069e;
            if (bVar != null && (aVar = fVar.f41076l) != null && aVar.f42787v) {
                fVar.f41072h.put(a.b.f1739m, bVar.f41810c);
                fVar.f41072h.put(a.b.f1740n, fVar.f41069e.f41812d);
                fVar.f41072h.put(a.b.f1741o, fVar.f41069e.f42045f0);
                fVar.f41072h.put(a.b.f1742p, fVar.f41069e.f41818i);
                fVar.f41072h.put(a.b.f1743q, fVar.f41069e.f41821l);
                fVar.f41072h.put(a.b.f1744r, fVar.f41069e.f41822m);
            }
        }
        com.smartdigimkt.p1.f fVar2 = this.f41058a;
        if (fVar2 != null) {
            fVar2.b();
        }
    }

    @Override // com.smartdigimkt.p1.f
    public final void a(com.smartdigimkt.i0.f fVar) {
        com.smartdigimkt.p1.f fVar2 = this.f41058a;
        if (fVar2 != null) {
            fVar2.a(fVar);
        }
    }
}
