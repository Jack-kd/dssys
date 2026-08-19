package com.smartdigimkt.i5;

import android.content.Context;
import com.smartdigimkt.c5.b0;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Random;

/* loaded from: classes5.dex */
public final class t extends com.smartdigimkt.g5.c {
    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) throws NumberFormatException {
        if (aVar.a()) {
            return true;
        }
        com.smartdigimkt.z4.d.c().e();
        Context context = aVar.f40394a;
        String strH = SDKContext.getInstance().h();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(com.smartdigimkt.c5.h.a(context));
        stringBuffer.append("&");
        stringBuffer.append(com.smartdigimkt.c5.h.q());
        stringBuffer.append("&");
        stringBuffer.append(strH);
        stringBuffer.append("&");
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("&");
        stringBuffer.append(new Random().nextInt(10000));
        aVar.f40400g = com.smartdigimkt.c5.i.b(stringBuffer.toString());
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.h5.a aVar2 = aVar.f40402i;
        if (aVar2 != null) {
            aVar2.f40592b = jCurrentTimeMillis;
        }
        String str = aVar.f40398e;
        com.smartdigimkt.a5.e eVarA = com.smartdigimkt.z4.m.a().a(str);
        com.smartdigimkt.q3.a aVarA = b0.a(aVar);
        b0.a(aVarA, eVarA);
        aVar.f40412s = aVarA;
        com.smartdigimkt.j4.a aVar3 = new com.smartdigimkt.j4.a(str);
        aVar3.f41118b = eVarA;
        aVar3.f41119c = new r(this, aVar, eVarA, aVarA);
        com.smartdigimkt.b4.e.a().c(new s(new com.smartdigimkt.j4.b(aVar3)));
        return false;
    }
}
