package com.smartdigimkt.i5;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class k extends com.smartdigimkt.g5.c {
    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) {
        SDMAdRequest sDMAdRequest = aVar.f40395b;
        int i2 = aVar.f40396c;
        com.smartdigimkt.l3.a aVar2 = aVar.f40407n;
        String str = aVar.f40405l == null ? "place strategy is null" : aVar.f40406m == null ? "unit group info is null" : aVar2 == null ? "ad request info is null" : "";
        if (!TextUtils.isEmpty(str)) {
            aVar.a(com.smartdigimkt.k4.b.a("10010", "load fail:".concat(str)));
            return false;
        }
        aVar2.f41644r = aVar.f40405l.f39411E;
        Map<String, Object> extraMap = sDMAdRequest.getExtraMap();
        String str2 = (String) com.smartdigimkt.c5.k.a(extraMap, "my_oid", "");
        boolean zBooleanValue = ((Boolean) com.smartdigimkt.c5.k.a(extraMap, com.anythink.core.common.r.f7264b, Boolean.FALSE)).booleanValue();
        if (TextUtils.isEmpty(str2)) {
            aVar.a(com.smartdigimkt.k4.b.a("10010", "load fail: offerId is null"));
            return false;
        }
        com.smartdigimkt.r1.d qVar = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? null : new com.smartdigimkt.r1.q(aVar.f40394a, aVar2, str2, zBooleanValue) : new com.smartdigimkt.r1.f(aVar.f40394a, aVar2, str2, zBooleanValue) : new com.smartdigimkt.r1.a(aVar.f40394a, aVar2, str2, zBooleanValue) : new com.smartdigimkt.r1.o(aVar.f40394a, aVar2, str2, zBooleanValue) : new com.smartdigimkt.r1.m(aVar.f40394a, aVar2, str2, zBooleanValue);
        if (qVar != null) {
            Map<String, Object> customEventMap = sDMAdRequest.getCustomEventMap();
            if (customEventMap == null) {
                customEventMap = new HashMap<>();
            }
            qVar.f42950f = customEventMap;
            j jVar = new j(this, qVar, aVar);
            try {
                com.smartdigimkt.i0.f fVarB = qVar.b();
                if (fVarB != null) {
                    jVar.a(fVarB);
                } else {
                    Map map = qVar.f42950f;
                    if (map == null || map.isEmpty() || ((Integer) com.smartdigimkt.c5.k.a(qVar.f42950f, SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, (Object) 0)).intValue() != 1) {
                        com.smartdigimkt.s1.b bVarA = com.smartdigimkt.s1.b.a(qVar.f42945a);
                        com.smartdigimkt.l3.a aVar3 = qVar.f42946b;
                        bVarA.a(aVar3.f41627a, qVar.f42949e, aVar3, new com.smartdigimkt.r1.b(qVar, jVar));
                    } else {
                        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.r1.c(qVar, jVar));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                String message = e2.getMessage();
                jVar.f40761b.a(com.smartdigimkt.k4.b.a("10010", "code[ -9999 ],desc[ " + message + " ]"));
                jVar.f40762c.d(jVar.f40761b);
            }
        } else {
            aVar.a(com.smartdigimkt.k4.b.a("10010", "not support format:" + aVar2.f41628b));
        }
        return false;
    }
}
