package com.smartdigimkt.i5;

import com.baidu.mobads.sdk.internal.cb;
import java.util.List;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f40746a;

    public d(e eVar) {
        this.f40746a = eVar;
    }

    public final void a(List list) {
        com.smartdigimkt.g5.a aVar = this.f40746a.f40747a;
        System.currentTimeMillis();
        aVar.getClass();
        com.smartdigimkt.x3.g.a().a(this.f40746a.f40752f.f40759e);
        if (this.f40746a.f40752f.f40758d.get()) {
            return;
        }
        if (list != null && !list.isEmpty()) {
            com.smartdigimkt.o3.b bVar = (com.smartdigimkt.o3.b) list.get(0);
            e eVar = this.f40746a;
            eVar.f40747a.f40409p = bVar;
            com.smartdigimkt.a5.f fVar = eVar.f40751e;
            fVar.f39440a = bVar;
            fVar.a(bVar, bVar.f42221a ? 1 : 0);
            e eVar2 = this.f40746a;
            com.smartdigimkt.l3.a aVarA = com.smartdigimkt.l3.a.a(eVar2.f40749c, eVar2.f40750d, eVar2.f40751e);
            e eVar3 = this.f40746a;
            com.smartdigimkt.g5.a aVar2 = eVar3.f40747a;
            aVar2.f40407n = aVarA;
            h hVar = eVar3.f40752f;
            com.smartdigimkt.a5.f fVar2 = eVar3.f40751e;
            hVar.getClass();
            com.smartdigimkt.b4.e.a().c(new f(hVar, aVar2, fVar2));
        }
        e eVar4 = this.f40746a;
        h hVar2 = eVar4.f40752f;
        com.smartdigimkt.g5.a aVar3 = eVar4.f40747a;
        hVar2.getClass();
        h.a(cb.f11292o, aVar3);
        e eVar5 = this.f40746a;
        eVar5.f40752f.a(eVar5.f40747a);
    }

    public final void a(com.smartdigimkt.k4.a aVar) {
        com.smartdigimkt.g5.a aVar2 = this.f40746a.f40747a;
        System.currentTimeMillis();
        aVar2.getClass();
        com.smartdigimkt.x3.g.a().a(this.f40746a.f40752f.f40759e);
        if (this.f40746a.f40752f.f40758d.get()) {
            return;
        }
        this.f40746a.f40747a.a(aVar);
        e eVar = this.f40746a;
        h hVar = eVar.f40752f;
        com.smartdigimkt.g5.a aVar3 = eVar.f40747a;
        hVar.getClass();
        h.a("fail", aVar3);
        e eVar2 = this.f40746a;
        eVar2.f40752f.a(eVar2.f40747a);
    }
}
