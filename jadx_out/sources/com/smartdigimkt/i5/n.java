package com.smartdigimkt.i5;

/* loaded from: classes5.dex */
public final class n extends com.smartdigimkt.g5.c {
    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) {
        com.smartdigimkt.h5.a aVar2;
        if (!aVar.a() && (aVar2 = aVar.f40402i) != null) {
            long j2 = aVar2.f40593c - aVar2.f40591a;
            if (j2 <= 0) {
                j2 = 0;
            }
            com.smartdigimkt.a5.e eVar = aVar.f40405l;
            long j3 = eVar != null ? eVar.f39421k : 60000L;
            m mVar = new m(this, aVar);
            com.smartdigimkt.x3.g.a().f45120a.a(mVar, j3 - j2);
            aVar.f40403j = mVar;
        }
        return true;
    }
}
