package com.smartdigimkt.i5;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class q extends com.smartdigimkt.g5.c {
    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) {
        if (aVar.f40401h) {
            aVar.a(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
            return false;
        }
        aVar.f40401h = true;
        com.smartdigimkt.h3.m mVarB = com.smartdigimkt.h3.m.b();
        mVarB.getClass();
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.h3.l(mVarB), 0L, 17);
        aVar.f40402i = new com.smartdigimkt.h5.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.h5.a aVar2 = aVar.f40402i;
        if (aVar2 != null) {
            aVar2.f40591a = jCurrentTimeMillis;
        }
        SDKContext sDKContext = SDKContext.getInstance();
        boolean z2 = sDKContext.f44116e;
        boolean z3 = sDKContext.f44117f;
        if (z2 && z3) {
            return true;
        }
        com.smartdigimkt.b4.e.a().c(new p(this, sDKContext, aVar));
        return false;
    }
}
