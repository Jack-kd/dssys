package com.octopus.ad.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.utils.ThreadUtils;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class o {
    public static void a(final l lVar) {
        ThreadUtils.runOnLogThreadPool(new Runnable() { // from class: com.octopus.ad.internal.o.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                byte[] bytes;
                try {
                    Context contextL = q.a().l();
                    if (contextL != null && lVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        String strA = lVar.a();
                        if (TextUtils.isEmpty(strA)) {
                            return;
                        }
                        jSONObject.put("type", strA);
                        if (strA.equals("INIT") || strA.equals("CFG")) {
                            jSONObject.put("appId", lVar.b());
                        } else {
                            jSONObject.put("slotId", lVar.f());
                            jSONObject.put("reqId", lVar.e());
                            if (!strA.equals("REQ") && !strA.equals("LOAD") && !strA.equals("DPORULKREPORT")) {
                                jSONObject.put("ptime", lVar.g());
                            }
                        }
                        if (strA.equals("REQ")) {
                            jSONObject.put("retryReq", lVar.d());
                        }
                        if (strA.equals("RES")) {
                            jSONObject.put("bid", lVar.h());
                        }
                        if (strA.equals("IMP") || strA.equals("CLK")) {
                            jSONObject.put("callback", lVar.i());
                        }
                        if (strA.equals("INIT") || strA.equals("CFG") || strA.equals("REWARD") || strA.equals("CHANGECONFIG")) {
                            jSONObject.put("result", lVar.c());
                        }
                        if (!TextUtils.isEmpty(lVar.j())) {
                            jSONObject.put("extra", lVar.j());
                        }
                        jSONObject.put("appVersion", com.octopus.ad.d.b.i.e(contextL));
                        jSONObject.put("brand", Build.BRAND);
                        jSONObject.put("model", Build.MODEL);
                        jSONObject.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
                        jSONObject.put("bundle", contextL.getPackageName());
                        jSONObject.put("deviceId", Octopus.getOaid(contextL));
                        jSONObject.put("sdkVersion", "2.6.5.7");
                        jSONObject.put("osv", Build.VERSION.RELEASE + "_" + Build.VERSION.SDK_INT);
                        StringBuilder sb = new StringBuilder();
                        sb.append(q.a().o());
                        sb.append("/sdk/logReport");
                        String string = sb.toString();
                        Boolean bool = (Boolean) com.octopus.ad.internal.c.o.c(contextL, "encrypt", Boolean.TRUE);
                        if (bool == null || bool.booleanValue()) {
                            String strA2 = com.octopus.ad.d.b.a.a(com.octopus.ad.d.b.e.a(), jSONObject.toString());
                            if (strA2 == null) {
                                strA2 = "";
                            }
                            bytes = strA2.getBytes();
                        } else {
                            string = string + "?test=1";
                            bytes = jSONObject.toString().getBytes();
                        }
                        com.octopus.ad.d.b.d.a(string, bytes);
                    }
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        });
    }
}
