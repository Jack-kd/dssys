package com.smartdigimkt.f4;

import android.content.Context;
import com.smartdigimkt.a5.e;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.i0.c;
import com.smartdigimkt.s1.d;
import com.smartdigimkt.sdk.api.format.IMyOfferAdManager;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.b0;
import com.smartdigimkt.z4.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b implements IMyOfferAdManager {

    /* renamed from: a, reason: collision with root package name */
    public static volatile b f40274a;

    @Override // com.smartdigimkt.sdk.api.format.IMyOfferAdManager
    public final boolean checkOffersOutOfCap(Context context, String str) {
        List<com.smartdigimkt.p3.a> list;
        if (context != null) {
            SDKContext.getInstance().a(context.getApplicationContext());
        }
        d dVarA = d.a(context);
        dVarA.getClass();
        e eVarA = m.a().a(str);
        if (eVarA != null && (list = eVarA.f39410D) != null && list.size() > 0) {
            for (com.smartdigimkt.p3.a aVar : list) {
                c cVarA = dVarA.a(aVar);
                int i2 = aVar.f42599o0;
                if (i2 != -1 && cVarA.f40639d >= i2) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.format.IMyOfferAdManager
    public final String getDefaultOfferId(Context context, String str) {
        if (context != null) {
            SDKContext.getInstance().a(context.getApplicationContext());
        }
        com.smartdigimkt.s1.b bVarA = com.smartdigimkt.s1.b.a(context);
        bVarA.getClass();
        e eVarA = m.a().a(str);
        if (eVarA == null) {
            return "";
        }
        List list = eVarA.f39410D;
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() == 0) {
            return "";
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            com.smartdigimkt.p3.a aVar = (com.smartdigimkt.p3.a) list.get(size);
            b0 b0VarA = b0.a();
            int i2 = eVarA.f39423m;
            com.smartdigimkt.p3.b bVar = eVarA.f39411E;
            b0VarA.getClass();
            if (t.a(bVar, i2, aVar)) {
                arrayList.add(d.a(bVarA.f43102a).a(aVar));
            } else {
                list.remove(size);
            }
        }
        if (arrayList.size() == 0) {
            return "";
        }
        Collections.sort(arrayList, new com.smartdigimkt.s1.a());
        return ((c) arrayList.get(0)).f40636a;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00da A[Catch: all -> 0x00bd, PHI: r0
      0x00da: PHI (r0v9 android.database.Cursor) = 
      (r0v5 android.database.Cursor)
      (r0v7 android.database.Cursor)
      (r0v8 android.database.Cursor)
      (r0v11 android.database.Cursor)
     binds: [B:28:0x00c5, B:33:0x00ce, B:39:0x00d8, B:25:0x00c1] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #7 {, blocks: (B:19:0x00b7, B:40:0x00da, B:36:0x00d3, B:37:0x00d6, B:31:0x00c9), top: B:56:0x0034, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e8  */
    @Override // com.smartdigimkt.sdk.api.format.IMyOfferAdManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getOutOfCapOfferIds(android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.f4.b.getOutOfCapOfferIds(android.content.Context):java.lang.String");
    }

    @Override // com.smartdigimkt.sdk.api.format.IMyOfferAdManager
    public final void preloadTopOnOffer(Context context, String str, JSONObject jSONObject) {
        List list;
        com.smartdigimkt.p3.b bVar;
        if (context != null) {
            SDKContext.getInstance().a(context.getApplicationContext());
        }
        com.smartdigimkt.s1.b.a(context).getClass();
        e eVarA = m.a().a(str);
        if (eVarA == null && jSONObject != null) {
            eVarA = e.b(str, jSONObject);
            m.a().a(str, eVarA, null);
        }
        if (eVarA == null || (list = eVarA.f39410D) == null || (bVar = eVarA.f39411E) == null) {
            return;
        }
        b0.a().getClass();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            com.smartdigimkt.l3.a aVar = new com.smartdigimkt.l3.a();
            aVar.f41644r = bVar;
            SDKContext.getInstance().getClass();
            aVar.f41638l = -1;
            b0.a(str, true, (com.smartdigimkt.m3.c) list.get(i2), aVar, null);
        }
    }
}
