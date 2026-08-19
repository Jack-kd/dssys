package com.anythink.core.common;

import android.text.TextUtils;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustEvent;
import com.appsflyer.AppsFlyerLib;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class p {

    /* renamed from: c, reason: collision with root package name */
    private static volatile p f7189c;

    /* renamed from: a, reason: collision with root package name */
    private final String f7190a = "1";

    /* renamed from: b, reason: collision with root package name */
    private final String f7191b = "2";

    private p() {
    }

    public static p a() {
        if (f7189c == null) {
            synchronized (p.class) {
                try {
                    if (f7189c == null) {
                        f7189c = new p();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7189c;
    }

    public static void a(com.anythink.core.common.h.n nVar) {
        if (nVar == null) {
            return;
        }
        try {
            com.anythink.core.e.m mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(nVar.aQ());
            if (mVarA != null) {
                String strY = mVarA.Y();
                if (TextUtils.isEmpty(strY)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(strY);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("1");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("token");
                    if (!TextUtils.isEmpty(strOptString)) {
                        String strE = nVar.E();
                        double dM = nVar.M() / 1000.0d;
                        String strA = nVar.A();
                        try {
                            AdjustEvent adjustEvent = new AdjustEvent(strOptString);
                            adjustEvent.setRevenue(dM, strE);
                            adjustEvent.setOrderId(strA);
                            Adjust.trackEvent(adjustEvent);
                        } catch (Throwable unused) {
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("2");
                if (jSONObjectOptJSONObject2 != null) {
                    int iOptInt = jSONObjectOptJSONObject2.optInt("rtye");
                    HashMap map = new HashMap();
                    map.put("af_order_id", nVar.A());
                    map.put("af_content_id", nVar.aQ());
                    map.put("af_content_type", nVar.aS());
                    map.put("af_revenue", Double.valueOf(iOptInt == 2 ? nVar.M() : nVar.M() / 1000.0d));
                    map.put("af_currency", "USD");
                    AppsFlyerLib.getInstance().trackEvent(com.anythink.core.common.d.s.b().g(), "af_ad_view", map);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private static void a(String str, double d2, String str2, String str3) {
        try {
            AdjustEvent adjustEvent = new AdjustEvent(str);
            adjustEvent.setRevenue(d2, str2);
            adjustEvent.setOrderId(str3);
            Adjust.trackEvent(adjustEvent);
        } catch (Throwable unused) {
        }
    }
}
