package com.anythink.core.common.v;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATCustomContentInfo;
import com.anythink.core.api.ATCustomContentResult;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8289a = "q";

    public static class a implements Comparable<a> {

        /* renamed from: a, reason: collision with root package name */
        int f8290a;

        /* renamed from: b, reason: collision with root package name */
        ATCustomContentInfo f8291b;

        /* renamed from: c, reason: collision with root package name */
        double f8292c;

        /* renamed from: d, reason: collision with root package name */
        com.anythink.core.common.h.c f8293d;

        public a(int i2, ATCustomContentInfo aTCustomContentInfo, double d2, com.anythink.core.common.h.c cVar) {
            this.f8290a = i2;
            this.f8291b = aTCustomContentInfo;
            this.f8292c = d2;
            this.f8293d = cVar;
        }

        private int a(a aVar) {
            double d2 = this.f8292c;
            double d3 = aVar.f8292c;
            if (d2 > d3) {
                return -1;
            }
            return d2 < d3 ? 1 : 0;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(a aVar) {
            double d2 = this.f8292c;
            double d3 = aVar.f8292c;
            if (d2 > d3) {
                return -1;
            }
            return d2 < d3 ? 1 : 0;
        }
    }

    public static ATCustomContentInfo a(List<ATCustomContentInfo> list) {
        try {
            ATCustomContentResult aTCustomContentResultC = c(list);
            if (aTCustomContentResultC != null) {
                return aTCustomContentResultC.getCustomContentInfoList().get(0);
            }
        } catch (Throwable unused) {
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public static ATCustomContentResult b(List<ATCustomContentInfo> list) {
        try {
            return c(list);
        } catch (Throwable unused) {
            return new ATCustomContentResult(list);
        }
    }

    private static ATCustomContentResult c(List<ATCustomContentInfo> list) {
        long j2;
        com.anythink.core.e.m mVarA;
        com.anythink.core.common.h.c cVarB;
        com.anythink.core.common.h.c cVar;
        int i2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (list == null || list.size() == 0) {
            Log.e(f8289a, "List<ATCustomContentInfo> can not be empty");
            return null;
        }
        ArrayList arrayList = new ArrayList(list);
        if (!com.anythink.core.common.d.s.b().V()) {
            return d(arrayList);
        }
        LinkedList<a> linkedList = new LinkedList();
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            int i5 = i4 + 1;
            ATCustomContentInfo aTCustomContentInfo = (ATCustomContentInfo) arrayList.get(i4);
            if (aTCustomContentInfo != null) {
                try {
                    String customContentString = aTCustomContentInfo.getCustomContentString();
                    double customContentDouble = aTCustomContentInfo.getCustomContentDouble();
                    double dK = 0.0d;
                    if (customContentDouble > 0.0d) {
                        dK = customContentDouble;
                        i2 = 2;
                        cVar = null;
                    } else if (TextUtils.isEmpty(customContentString)) {
                        cVarB = null;
                        i2 = 0;
                        cVar = cVarB;
                    } else {
                        try {
                            mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(customContentString);
                        } catch (Throwable unused) {
                        }
                        if (mVarA == null) {
                            throw new RuntimeException("placementId: " + customContentString + ", place strategy is null");
                        }
                        com.anythink.core.common.f fVarA = com.anythink.core.common.t.a().a(customContentString, String.valueOf(mVarA.ap()));
                        if (fVarA == null) {
                            throw new RuntimeException("The \" + placementId + \" object has not been created yet!");
                        }
                        cVarB = fVarA.b(com.anythink.core.common.d.s.b().g(), false, false, new com.anythink.core.common.h.ae());
                        if (cVarB == null) {
                            throw new RuntimeException("no cache, placementId: ".concat(String.valueOf(customContentString)));
                        }
                        try {
                            cVar = cVarB;
                            dK = cVarB.e().getUnitGroupInfo().K();
                            i2 = 1;
                        } catch (Throwable unused2) {
                        }
                        i2 = 0;
                        cVar = cVarB;
                    }
                    linkedList.add(new a(i2, aTCustomContentInfo, dK, cVar));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            i4 = i5;
        }
        if (linkedList.size() == 0) {
            return new ATCustomContentResult(arrayList);
        }
        Collections.sort(linkedList);
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayList2 = new ArrayList();
        double d2 = -1.0d;
        String customContentString2 = "";
        ATCustomContentInfo aTCustomContentInfo2 = null;
        for (a aVar : linkedList) {
            if (aVar != null) {
                ATCustomContentInfo aTCustomContentInfo3 = aVar.f8291b;
                double d3 = d2;
                double d4 = aVar.f8292c;
                com.anythink.core.common.h.c cVar2 = aVar.f8293d;
                if (aTCustomContentInfo2 == null) {
                    i3 = aVar.f8290a;
                    d3 = d4;
                    customContentString2 = aTCustomContentInfo3.getCustomContentString();
                    aTCustomContentInfo2 = aTCustomContentInfo3;
                }
                if (cVar2 != null) {
                    aTCustomContentInfo3.setATAdInfo(cVar2.p());
                }
                arrayList2.add(aTCustomContentInfo3);
                JSONObject jSONObject = new JSONObject();
                try {
                    if (aTCustomContentInfo3.getCustomContentObject() instanceof String) {
                        j2 = jElapsedRealtime;
                        try {
                            jSONObject.put("custom_string", aTCustomContentInfo3.getCustomContentObject());
                        } catch (Throwable unused3) {
                        }
                    } else {
                        j2 = jElapsedRealtime;
                    }
                    jSONObject.put("price", String.valueOf(d4));
                    if (aVar.f8290a != 2) {
                        jSONObject.put(com.anythink.core.common.m.f.bn, aTCustomContentInfo3.getCustomContentString());
                        com.anythink.core.common.h.n nVarI = cVar2 != null ? cVar2.i() : null;
                        jSONObject.put("req_id", nVarI != null ? nVarI.aR() : "");
                        jSONObject.put("network_firm_id", nVarI != null ? nVarI.Z() : 0);
                        jSONObject.put("adsource_id", nVarI != null ? nVarI.N() : "");
                        jSONObject.put("adsource_isheaderbidding", (nVarI == null || !nVarI.L()) ? 0 : 1);
                        jSONObject.put("network_placement_id", nVarI != null ? nVarI.z() : "");
                    }
                    jSONArray.put(jSONObject);
                } catch (Throwable unused4) {
                    j2 = jElapsedRealtime;
                }
                d2 = d3;
                jElapsedRealtime = j2;
            }
        }
        com.anythink.core.common.h.e eVar = new com.anythink.core.common.h.e(jSONArray, i3, i3 == 2 ? String.valueOf(d2) : i3 == 1 ? customContentString2 : null, SystemClock.elapsedRealtime() - jElapsedRealtime);
        com.anythink.core.common.h.n nVar = new com.anythink.core.common.h.n();
        nVar.a(eVar);
        com.anythink.core.common.u.e.a(com.anythink.core.common.d.s.b().g());
        com.anythink.core.common.u.e.a(26, nVar);
        return new ATCustomContentResult(arrayList2);
    }

    private static ATCustomContentResult d(List<ATCustomContentInfo> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ATCustomContentInfo aTCustomContentInfo : list) {
            if (aTCustomContentInfo != null) {
                if (TextUtils.isEmpty(aTCustomContentInfo.getCustomContentString())) {
                    arrayList.add(aTCustomContentInfo);
                } else {
                    arrayList2.add(aTCustomContentInfo);
                }
            }
        }
        if (arrayList.size() != 0) {
            Collections.sort(arrayList, new Comparator<ATCustomContentInfo>() { // from class: com.anythink.core.common.v.q.1
                private static int a(ATCustomContentInfo aTCustomContentInfo2, ATCustomContentInfo aTCustomContentInfo3) {
                    if (aTCustomContentInfo2.getCustomContentDouble() > aTCustomContentInfo3.getCustomContentDouble()) {
                        return -1;
                    }
                    return aTCustomContentInfo2.getCustomContentDouble() < aTCustomContentInfo3.getCustomContentDouble() ? 1 : 0;
                }

                @Override // java.util.Comparator
                public final /* synthetic */ int compare(ATCustomContentInfo aTCustomContentInfo2, ATCustomContentInfo aTCustomContentInfo3) {
                    ATCustomContentInfo aTCustomContentInfo4 = aTCustomContentInfo2;
                    ATCustomContentInfo aTCustomContentInfo5 = aTCustomContentInfo3;
                    if (aTCustomContentInfo4.getCustomContentDouble() > aTCustomContentInfo5.getCustomContentDouble()) {
                        return -1;
                    }
                    return aTCustomContentInfo4.getCustomContentDouble() < aTCustomContentInfo5.getCustomContentDouble() ? 1 : 0;
                }
            });
        }
        arrayList.addAll(arrayList2);
        return new ATCustomContentResult(arrayList);
    }

    public static void a(ATCustomContentResult aTCustomContentResult, com.anythink.core.common.h.n nVar) {
        List<ATCustomContentInfo> customContentInfoList;
        ATAdInfo adInfo;
        if (aTCustomContentResult == null || nVar == null || (customContentInfoList = aTCustomContentResult.getCustomContentInfoList()) == null || customContentInfoList.size() == 0) {
            return;
        }
        nVar.a(aTCustomContentResult);
        String strAR = nVar.aR();
        String strN = nVar.N();
        for (ATCustomContentInfo aTCustomContentInfo : customContentInfoList) {
            if (aTCustomContentInfo != null && (adInfo = aTCustomContentInfo.getAdInfo()) != null) {
                String requestId = adInfo.getRequestId();
                String adsourceId = adInfo.getAdsourceId();
                if (TextUtils.equals(strAR, requestId) && TextUtils.equals(strN, adsourceId)) {
                    double dQ = nVar.q();
                    double dR = nVar.r();
                    if (adInfo instanceof com.anythink.core.common.d.k) {
                        com.anythink.core.common.d.k kVar = (com.anythink.core.common.d.k) adInfo;
                        kVar.a(dQ);
                        kVar.b(dR);
                        return;
                    }
                    return;
                }
            }
        }
    }
}
