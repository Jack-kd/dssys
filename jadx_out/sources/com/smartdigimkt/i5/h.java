package com.smartdigimkt.i5;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.c5.w;
import com.smartdigimkt.sdk.api.SDMSDK;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class h extends com.smartdigimkt.g5.c {

    /* renamed from: c, reason: collision with root package name */
    public final String f40757c = h.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f40758d = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public g f40759e;

    public static void a(String str, com.smartdigimkt.g5.a aVar) {
        ThreadPoolExecutor threadPoolExecutor;
        com.smartdigimkt.k4.a aVar2;
        com.smartdigimkt.a5.f fVar = aVar.f40406m;
        if (fVar != null && (aVar2 = aVar.f40410q) != null) {
            fVar.f39448i = aVar2.getErrorInfo();
        }
        String str2 = aVar.f40398e;
        String strA = com.smartdigimkt.c5.j.a(String.valueOf(aVar.f40396c));
        com.smartdigimkt.a5.f fVar2 = aVar.f40406m;
        ThreadPoolExecutor threadPoolExecutor2 = w.f39821a;
        if (!SDMSDK.getInstance().isNetworkLogDebug() || (threadPoolExecutor = w.f39821a) == null) {
            return;
        }
        threadPoolExecutor.execute(new com.smartdigimkt.c5.s(str, str2, strA, fVar2));
    }

    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) {
        a("start", aVar);
        if (aVar.a()) {
            a(cb.f11292o, aVar);
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.h5.a aVar2 = aVar.f40402i;
        if (aVar2 != null) {
            aVar2.f40594d = jCurrentTimeMillis;
        }
        String str = aVar.f40400g;
        com.smartdigimkt.a5.e eVar = aVar.f40405l;
        if (eVar == null) {
            aVar.a(com.smartdigimkt.k4.b.a("10008", "The placeStrategy is null."));
            return false;
        }
        com.smartdigimkt.a5.f fVar = aVar.f40406m;
        if (fVar == null) {
            aVar.a(com.smartdigimkt.k4.b.a("10008", "The placeStrategy does not has ADX ad source"));
            return false;
        }
        long j2 = eVar.f39426p;
        if (j2 < 0) {
            j2 = 10000;
        }
        this.f40759e = new g(new c(this, aVar));
        com.smartdigimkt.x3.g gVarA = com.smartdigimkt.x3.g.a();
        gVarA.f45120a.a(this.f40759e, j2);
        ArrayList arrayList = new ArrayList();
        com.smartdigimkt.l3.a aVarA = com.smartdigimkt.l3.a.a(str, eVar, fVar);
        com.smartdigimkt.d4.i iVarA = com.smartdigimkt.d4.i.a();
        Map map = fVar.f39444e;
        e eVar2 = new e(this, aVar, arrayList, str, eVar, fVar);
        iVarA.getClass();
        com.smartdigimkt.x.l lVarA = com.smartdigimkt.x.l.a();
        com.smartdigimkt.d4.h hVar = new com.smartdigimkt.d4.h(iVarA, eVar2, map, aVarA);
        lVarA.getClass();
        com.smartdigimkt.b4.e.a().getClass();
        if (com.smartdigimkt.b4.e.b()) {
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.x.d(lVarA, hVar));
        } else {
            lVarA.a(hVar);
        }
        return false;
    }
}
