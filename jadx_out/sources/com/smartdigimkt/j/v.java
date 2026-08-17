package com.smartdigimkt.j;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.smartdigimkt.sdk.api.IExHandlerBaseAd;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class v extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        com.smartdigimkt.m3.c baseAdContent;
        String action = intent.getAction();
        if (("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REPLACED".equals(action)) && intent.getData() != null) {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            u uVarA = u.a(context);
            ConcurrentHashMap concurrentHashMap = uVarA.f40829j;
            if (concurrentHashMap != null) {
                concurrentHashMap.size();
            }
            ConcurrentHashMap concurrentHashMap2 = uVarA.f40826g;
            if (concurrentHashMap2 != null) {
                concurrentHashMap2.size();
            }
            try {
                ConcurrentHashMap concurrentHashMap3 = uVarA.f40829j;
                if (concurrentHashMap3 != null && concurrentHashMap3.containsKey(schemeSpecificPart)) {
                    com.smartdigimkt.m3.c cVar = (com.smartdigimkt.m3.c) uVarA.f40829j.remove(schemeSpecificPart);
                    uVarA.a();
                    if (cVar != null) {
                        String str = cVar.f41806a;
                        com.smartdigimkt.k.o oVar = uVarA.f40834o;
                        if (oVar != null) {
                            oVar.a(str);
                        }
                        com.smartdigimkt.y3.h.a(cVar.f41833x, cVar.f41806a, cVar.f41820k, 5, (String) null, 0L, 0L, cVar, 0, 0L);
                    }
                }
            } catch (Throwable unused) {
            }
            try {
                CopyOnWriteArrayList copyOnWriteArrayList = uVarA.f40830k;
                if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                    Iterator it = uVarA.f40830k.iterator();
                    while (it.hasNext()) {
                        IExHandlerBaseAd.DataFetchListener dataFetchListener = (IExHandlerBaseAd.DataFetchListener) it.next();
                        if (dataFetchListener != null && (baseAdContent = dataFetchListener.getBaseAdContent()) != null && TextUtils.equals(baseAdContent.f41822m, schemeSpecificPart)) {
                            dataFetchListener.onStatusChanged(2, com.smartdigimkt.n.b.a(SDKContext.getInstance().d(), com.smartdigimkt.k.c.INSTALLED));
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
            try {
                if (uVarA.f40826g.containsKey(schemeSpecificPart)) {
                    com.smartdigimkt.k.r rVar = (com.smartdigimkt.k.r) uVarA.f40826g.remove(schemeSpecificPart);
                    uVarA.a();
                    if (rVar == null) {
                        return;
                    }
                    com.smartdigimkt.m3.c cVar2 = rVar.f41187j;
                    if (cVar2 != null) {
                        cVar2.f41787H = 2;
                    }
                    rVar.f41196s = com.smartdigimkt.k.c.INSTALLED;
                    uVarA.e(rVar);
                    if (uVarA.f40827h == null) {
                        uVarA.f40827h = new ConcurrentHashMap();
                    }
                    uVarA.f40827h.put(rVar.f41192o, rVar);
                    ConcurrentHashMap concurrentHashMap4 = uVarA.f40825f;
                    if (concurrentHashMap4 != null) {
                        concurrentHashMap4.remove(rVar.f41192o);
                    }
                    com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(uVarA.f40820a);
                    jVarA.getClass();
                    com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.f(jVarA, rVar));
                    com.smartdigimkt.k.o oVar2 = uVarA.f40834o;
                    if (oVar2 != null) {
                        oVar2.a(rVar, "at_offer_action_4");
                    }
                    com.smartdigimkt.y3.h.a(rVar.f41178a, rVar.f41183f, rVar.f41179b, 5, (String) null, 0L, 0L, rVar.f41187j, 0, 0L);
                    if (rVar.f41177G != 1) {
                        String str2 = rVar.f41178a;
                        com.smartdigimkt.l3.a aVar = rVar.f41188k;
                        String str3 = rVar.f41197t;
                        String str4 = rVar.f41199v;
                        String str5 = rVar.f41198u;
                        com.smartdigimkt.m3.c cVar3 = rVar.f41187j;
                        String str6 = cVar3 instanceof com.smartdigimkt.m3.k ? ((com.smartdigimkt.m3.k) cVar3).f42054o0 : "";
                        String str7 = rVar.f41183f;
                        String str8 = rVar.f41182e;
                        long jCurrentTimeMillis = rVar.f41172B > 0 ? System.currentTimeMillis() - rVar.f41172B : 0L;
                        com.smartdigimkt.q3.c cVar4 = new com.smartdigimkt.q3.c(null, null);
                        cVar4.f42817a = "1004713";
                        cVar4.f42818b = str2;
                        cVar4.f42819c = str3;
                        cVar4.a(aVar);
                        cVar4.f42828l = str4;
                        cVar4.f42829m = str5;
                        cVar4.f42830n = str6;
                        cVar4.f42831o = str7;
                        cVar4.f42832p = str8;
                        cVar4.f42833q = String.valueOf(jCurrentTimeMillis);
                        cVar4.f42834r = String.valueOf(1);
                        cVar4.f42835s = String.valueOf(1);
                        com.smartdigimkt.y3.h.a(cVar4);
                        rVar.f41177G = 1;
                    }
                    uVarA.f(rVar);
                    uVarA.b(rVar, 1);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
