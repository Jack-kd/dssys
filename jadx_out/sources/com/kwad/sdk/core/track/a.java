package com.kwad.sdk.core.track;

import androidx.annotation.NonNull;
import com.kwad.components.ad.reward.monitor.FraudVerifyCode;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.export.proxy.AdHttpProxy;
import com.kwad.sdk.h;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ak;
import com.kwad.sdk.utils.ar;
import com.kwad.sdk.utils.by;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class a {
    private static List<String> a(AdTemplate adTemplate, int i2, @NonNull com.kwad.sdk.core.adlog.c.a aVar) {
        List<String> list;
        ArrayList arrayList = new ArrayList();
        AdInfo adInfoEO = e.eO(adTemplate);
        List<AdInfo.AdTrackInfo> list2 = adInfoEO.adTrackInfoList;
        if (!ar.R(list2)) {
            List<String> listA = a(i2, aVar, arrayList, adInfoEO, list2);
            if (listA == null) {
                Iterator<AdInfo.AdTrackInfo> it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AdInfo.AdTrackInfo next = it.next();
                    if (next.type == i2 && (list = next.urls) != null) {
                        arrayList.addAll(list);
                        break;
                    }
                }
            } else {
                return listA;
            }
        }
        return arrayList;
    }

    public static void e(@NonNull com.kwad.sdk.core.adlog.c.a aVar) {
        AdTemplate adTemplate = aVar.adTemplate;
        AdInfo adInfoEO = e.eO(adTemplate);
        int i2 = aVar.aKI;
        List<String> listA = a(adTemplate, i2, aVar);
        if (ar.R(listA)) {
            return;
        }
        boolean zDE = com.kwad.sdk.core.response.helper.a.dE(adInfoEO);
        boolean zDF = com.kwad.sdk.core.response.helper.a.dF(adInfoEO);
        for (String str : listA) {
            com.kwad.sdk.commercial.i.a.p(adTemplate, i2, str);
            if (adTemplate.isCheatingFlow()) {
                com.kwad.sdk.commercial.i.a.o(adTemplate, i2, str);
                return;
            }
            if (by.ir(str)) {
                com.kwad.sdk.commercial.i.a.a(adTemplate, i2, str, "", FraudVerifyCode.RerwardFraudUnknown, "", 0);
                return;
            }
            HashMap map = null;
            String strA = ak.a(ServiceProvider.getContext(), str, i2 == 2 ? aVar.no : null, com.kwad.sdk.core.response.helper.a.aH(e.eO(adTemplate)));
            ak.f(adTemplate, str, strA);
            AdHttpProxy adHttpProxyEG = h.EG();
            int i3 = adHttpProxyEG instanceof com.kwad.sdk.core.network.c.a ? 2 : 1;
            c.d("AdTrackUtil", "handleTrackUrl useKwaiUA: " + zDE);
            if (zDE) {
                com.kwad.sdk.core.i.c cVarK = com.kwad.sdk.core.i.a.k(zDE, zDF);
                c.d("AdTrackUtil", "handleTrackUrl uaGetter: " + cVarK);
                if (cVarK != null) {
                    map = new HashMap();
                    map.put("User-Agent", cVarK.OC());
                }
            }
            com.kwad.sdk.core.network.c cVarDoGetWithoutResponse = adHttpProxyEG.doGetWithoutResponse(strA, map, !zDE);
            if (eK(cVarDoGetWithoutResponse.code)) {
                c.d("AdTrackUtil", "trackUrl request success actionType: " + i2);
                com.kwad.sdk.commercial.i.a.a(adTemplate, i2, str, cVarDoGetWithoutResponse.code, i3);
            } else {
                com.kwad.sdk.commercial.i.a.a(adTemplate, i2, str, strA, com.kwad.sdk.commercial.e.dt(cVarDoGetWithoutResponse.code), cVarDoGetWithoutResponse.aSY, i3);
            }
        }
    }

    private static boolean eK(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        r4.addAll(r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<java.lang.String> a(int r2, com.kwad.sdk.core.adlog.c.a r3, java.util.List<java.lang.String> r4, com.kwad.sdk.core.response.model.AdInfo r5, java.util.List<com.kwad.sdk.core.response.model.AdInfo.AdTrackInfo> r6) {
        /*
            r0 = 402(0x192, float:5.63E-43)
            if (r2 != r0) goto L4f
            boolean r2 = com.kwad.sdk.core.response.helper.a.bu(r5)
            if (r2 == 0) goto L4f
            java.lang.String r2 = r3.QY     // Catch: java.lang.Throwable -> L4e
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L4e
            if (r2 != 0) goto L20
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L4e
            java.lang.String r3 = r3.QY     // Catch: java.lang.Throwable -> L4e
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r3 = "photoPlaySecond"
            int r2 = r2.optInt(r3)     // Catch: java.lang.Throwable -> L4e
            goto L22
        L20:
            int r2 = r3.aMf     // Catch: java.lang.Throwable -> L4e
        L22:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L4e
            com.kwad.sdk.core.response.model.AdInfo$AdBaseInfo r5 = r5.adBaseInfo     // Catch: java.lang.Throwable -> L4e
            java.lang.String r5 = r5.videoPlayedNSConfig     // Catch: java.lang.Throwable -> L4e
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L4e
            java.util.Iterator r5 = r6.iterator()     // Catch: java.lang.Throwable -> L4e
        L2f:
            boolean r6 = r5.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r6 == 0) goto L4e
            java.lang.Object r6 = r5.next()     // Catch: java.lang.Throwable -> L4e
            com.kwad.sdk.core.response.model.AdInfo$AdTrackInfo r6 = (com.kwad.sdk.core.response.model.AdInfo.AdTrackInfo) r6     // Catch: java.lang.Throwable -> L4e
            int r0 = r6.type     // Catch: java.lang.Throwable -> L4e
            java.lang.String r1 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L4e
            int r1 = r3.optInt(r1)     // Catch: java.lang.Throwable -> L4e
            if (r0 != r1) goto L2f
            java.util.List<java.lang.String> r6 = r6.urls     // Catch: java.lang.Throwable -> L4e
            if (r6 == 0) goto L2f
            r4.addAll(r6)     // Catch: java.lang.Throwable -> L4e
        L4e:
            return r4
        L4f:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.track.a.a(int, com.kwad.sdk.core.adlog.c.a, java.util.List, com.kwad.sdk.core.response.model.AdInfo, java.util.List):java.util.List");
    }
}
