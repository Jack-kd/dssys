package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.format.SDMAdPlaceInfo;

/* loaded from: classes5.dex */
public final class k implements SDMAdPlaceInfo {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f40089a;

    public k(com.smartdigimkt.j1.f fVar) {
        this.f40089a = fVar != null ? fVar.f41067c : null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdPlaceInfo
    public final int getFormat() {
        com.smartdigimkt.l3.a aVar = this.f40089a;
        if (aVar != null) {
            return aVar.f41628b;
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdPlaceInfo
    public final String getPlacementId() {
        com.smartdigimkt.l3.a aVar = this.f40089a;
        return aVar != null ? aVar.f41627a : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdPlaceInfo
    public final String getRequestId() {
        com.smartdigimkt.l3.a aVar = this.f40089a;
        return aVar != null ? aVar.f41632f : "";
    }

    public final String toString() {
        return "SDMAdPlaceInfo{placementId=" + getPlacementId() + ", requestId=" + getRequestId() + ", format=" + getFormat() + '}';
    }
}
