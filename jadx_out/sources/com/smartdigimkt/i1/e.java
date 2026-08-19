package com.smartdigimkt.i1;

import android.content.Context;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.z.g0;
import com.smartdigimkt.z.p;
import com.smartdigimkt.z.y;

/* loaded from: classes5.dex */
public final class e extends IOfferClickHandler {
    @Override // com.smartdigimkt.sdk.api.IOfferClickHandler
    public final boolean startDataFetchApp(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, String str) {
        y yVarA = y.a();
        int iE = cVar.e();
        String str2 = cVar.f41806a;
        return p.a(context, aVar, cVar, (com.smartdigimkt.i0.e) yVarA.f45348a.get(iE + str2), str, new g0());
    }
}
