package com.anythink.core.c.d;

import android.util.Pair;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdFilter;
import com.anythink.core.api.ATSDKUtils;
import com.anythink.core.api.ATWaterfallFilter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.common.u.f;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2004a = "b";

    public static void a(JSONObject jSONObject, String str, by byVar, com.anythink.core.common.h.a aVar) {
        if (jSONObject != null) {
            try {
                if (byVar.ak() == -1) {
                    jSONObject.put("ad_format", str);
                } else {
                    jSONObject.put("ad_format", String.valueOf(byVar.ak()));
                }
                jSONObject.put("ad_source_id", byVar.G());
                jSONObject.put("nw_firm_id", byVar.n());
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BIDDING_FLOOR, a(aVar, byVar));
                if (s.b().z()) {
                    jSONObject.put("test", 1);
                }
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.P_BIDFLOOR, byVar.aq());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b0 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:18:0x0052, B:20:0x0058, B:22:0x0060, B:24:0x0066, B:26:0x0070, B:28:0x0078, B:30:0x007e, B:35:0x0096, B:37:0x00a0, B:39:0x00a8, B:42:0x00b0, B:44:0x00ba, B:46:0x00c2, B:49:0x00c9, B:51:0x00d3, B:53:0x00db, B:56:0x00e2, B:59:0x00f2, B:61:0x00f6, B:62:0x00fb, B:64:0x00ff), top: B:86:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c9 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:18:0x0052, B:20:0x0058, B:22:0x0060, B:24:0x0066, B:26:0x0070, B:28:0x0078, B:30:0x007e, B:35:0x0096, B:37:0x00a0, B:39:0x00a8, B:42:0x00b0, B:44:0x00ba, B:46:0x00c2, B:49:0x00c9, B:51:0x00d3, B:53:0x00db, B:56:0x00e2, B:59:0x00f2, B:61:0x00f6, B:62:0x00fb, B:64:0x00ff), top: B:86:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e2 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:18:0x0052, B:20:0x0058, B:22:0x0060, B:24:0x0066, B:26:0x0070, B:28:0x0078, B:30:0x007e, B:35:0x0096, B:37:0x00a0, B:39:0x00a8, B:42:0x00b0, B:44:0x00ba, B:46:0x00c2, B:49:0x00c9, B:51:0x00d3, B:53:0x00db, B:56:0x00e2, B:59:0x00f2, B:61:0x00f6, B:62:0x00fb, B:64:0x00ff), top: B:86:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0134 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<java.lang.Double, com.anythink.core.api.ATWaterfallFilter.PriceInterval> b(com.anythink.core.common.h.a r19, com.anythink.core.common.h.by r20) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.b.b(com.anythink.core.common.h.a, com.anythink.core.common.h.by):android.util.Pair");
    }

    private static boolean a(Map<String, Object> map, String str, String str2, String str3) {
        Object obj = map.get(ATAdFilter.KEY_NETWORK_ID);
        if (obj instanceof List) {
            List list = (List) obj;
            if (!list.isEmpty() && !list.contains(str)) {
                return false;
            }
        }
        Object obj2 = map.get(ATAdFilter.KEY_BIDDING_TYPE);
        if (obj2 instanceof List) {
            List list2 = (List) obj2;
            if (!list2.isEmpty() && !list2.contains(str2)) {
                return false;
            }
        }
        Object obj3 = map.get(ATAdFilter.KEY_NETWORK_PLACEMENT_ID);
        if (!(obj3 instanceof List)) {
            return true;
        }
        List list3 = (List) obj3;
        return list3.isEmpty() || list3.contains(str3);
    }

    private static double a(double d2, ATAdConst.CURRENCY currency) {
        double rmbChangeToUsdRate;
        if (currency == null) {
            return 0.0d;
        }
        if (currency == ATAdConst.CURRENCY.RMB) {
            rmbChangeToUsdRate = ATSDKUtils.getRmbChangeToUsdRate();
        } else {
            rmbChangeToUsdRate = currency == ATAdConst.CURRENCY.RMB_CENT ? ATSDKUtils.getRmbChangeToUsdRate() / 100.0d : 1.0d;
        }
        if (rmbChangeToUsdRate == 0.0d) {
            return 0.0d;
        }
        return d2 * rmbChangeToUsdRate;
    }

    public static double a(com.anythink.core.common.h.a aVar, by byVar) {
        if (aVar.f3586t == 8) {
            Map<String, Double> map = aVar.f3587u;
            Double d2 = map != null ? map.get(byVar.G()) : null;
            if (d2 == null) {
                return 0.0d;
            }
            double dDoubleValue = d2.doubleValue();
            byVar.d(dDoubleValue);
            return dDoubleValue;
        }
        double dAz = byVar.az();
        if (aVar.f3559C > 0.0d && byVar.ba() == 1) {
            double dMax = Math.max(dAz, aVar.f3559C);
            byVar.d(dMax);
            return dMax;
        }
        Pair<Double, ATWaterfallFilter.PriceInterval> pairB = b(aVar, byVar);
        if (pairB == null) {
            return dAz;
        }
        double dDoubleValue2 = ((Double) pairB.first).doubleValue();
        byVar.d(dDoubleValue2);
        f.a(aVar.f3585s, byVar, (ATWaterfallFilter.PriceInterval) pairB.second);
        return dDoubleValue2;
    }
}
