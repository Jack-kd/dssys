package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMAdEcpmInfo;
import com.smartdigimkt.sdk.api.format.SDMAdPlaceInfo;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class l implements SDMAd {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.j1.f f40090a;

    public l(com.smartdigimkt.j1.f fVar) {
        this.f40090a = fVar;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAd
    public final SDMAdEcpmInfo getEcpmInfo() {
        return new j(this.f40090a);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAd
    public final Map getExtraInfo() {
        com.smartdigimkt.j1.f fVar = this.f40090a;
        if (fVar == null) {
            return null;
        }
        HashMap mapA = com.smartdigimkt.z.f.a(fVar.f41069e);
        if (mapA == null) {
            mapA = new HashMap();
        }
        com.smartdigimkt.m3.b bVar = fVar.f41069e;
        if (bVar != null && !bVar.f42059t0.isEmpty()) {
            mapA.putAll(bVar.f42059t0);
        }
        return mapA;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAd
    public final SDMAdPlaceInfo getPlaceInfo() {
        return new k(this.f40090a);
    }
}
