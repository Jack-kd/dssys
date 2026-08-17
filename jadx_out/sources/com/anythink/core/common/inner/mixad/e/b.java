package com.anythink.core.common.inner.mixad.e;

import com.anythink.core.common.h.n;
import com.anythink.core.common.h.x;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class b extends x implements Serializable {
    public b(com.anythink.core.common.l.g.a aVar, n nVar, int i2) {
        this.f4489i = nVar.y();
        this.f4481a = nVar.aQ();
        this.f4485e = nVar.N();
        this.f4486f = nVar.aR();
        this.f4490j = nVar.Z();
        this.f4491k = nVar.aN();
        this.f4483c = nVar.aO();
        this.f4484d = nVar.aa();
        this.f4482b = i2;
        this.f4494n = -1;
        this.f4492l = nVar.p();
        c cVar = new c(aVar);
        this.f4500t = cVar;
        cVar.r(i2);
    }

    public final String toString() {
        return "ThirdPartyAdRequestInfo{bidId='" + this.f4489i + "', placementId='" + this.f4481a + "', adsourceId='" + this.f4485e + "', requestId='" + this.f4486f + "', networkFirmId=" + this.f4490j + ", networkName='" + this.f4491k + "', trafficGroupId=" + this.f4483c + ", groupId=" + this.f4484d + ", format=" + this.f4482b + ", tpBidId='" + this.f4492l + "', requestUrl='" + this.f4497q + "', bidResultOutDateTime=" + this.f4496p + ", baseAdSetting=" + this.f4500t + '}';
    }
}
