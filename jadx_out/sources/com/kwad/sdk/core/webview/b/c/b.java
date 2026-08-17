package com.kwad.sdk.core.webview.b.c;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.model.HybridLoadMsg;
import com.kwad.sdk.commercial.model.WebViewLoadMsg;
import com.kwad.sdk.utils.ac;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {
    public static final Map<String, JSONObject> bcU = new HashMap();
    public static boolean bcV = true;

    public static class a {
        public String msg;
    }

    public static void a(com.kwad.sdk.h.a.b bVar, int i2) {
        com.kwad.sdk.commercial.c.a(ILoggerReporter.Category.APM_LOG, new HybridLoadMsg().setSceneId(bVar.bgG).setH5Version(bVar.version).setLoadType(bVar.loadType).setState(i2).setPackageUrl(bVar.packageUrl).setInterval(String.valueOf(System.currentTimeMillis() - bVar.Re())));
    }

    public static void ah(String str, String str2) {
        ac.putValue(fR(str), "c_" + str2, System.currentTimeMillis());
    }

    private static void ai(String str, String str2) {
        a(str, str2, 1, "");
    }

    public static void aj(String str, String str2) {
        a(str, "", 2, str2);
    }

    public static void d(String str, String str2, String str3) {
        if (str3.contains(ServiceReference.DELIMITER)) {
            str3 = str3.substring(str3.lastIndexOf(ServiceReference.DELIMITER) + 1);
        }
        ac.putValue(fR(str), "c_responseStart_" + str2 + "_" + str3, System.currentTimeMillis());
    }

    public static void e(String str, String str2, String str3) {
        if (str3.contains(ServiceReference.DELIMITER)) {
            str3 = str3.substring(str3.lastIndexOf(ServiceReference.DELIMITER) + 1);
        }
        ac.putValue(fR(str), "c_responseEnd_" + str2 + "_" + str3, System.currentTimeMillis());
    }

    private static JSONObject fR(String str) {
        Map<String, JSONObject> map = bcU;
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        map.put(str, jSONObject2);
        return jSONObject2;
    }

    private static void fS(String str) {
        bcU.remove(str);
    }

    public static void fT(String str) {
        JSONObject jSONObjectFR = fR(str);
        long jWN = com.kwad.sdk.core.webview.b.a.PH().wN();
        long jCurrentTimeMillis = jWN <= 0 ? -1L : System.currentTimeMillis() - jWN;
        ac.putValue(jSONObjectFR, "c_loadUrl", System.currentTimeMillis());
        ac.putValue(jSONObjectFR, "c_init_interval", jCurrentTimeMillis);
        ac.putValue(jSONObjectFR, "c_init_state", bcV ? 1 : 2);
        bcV = false;
    }

    public static void a(com.kwad.sdk.h.a.b bVar, int i2, int i3, String str) {
        com.kwad.sdk.commercial.c.a(ILoggerReporter.Category.ERROR_LOG, new HybridLoadMsg().setSceneId(bVar.bgG).setH5Version(bVar.version).setLoadType(bVar.loadType).setState(0).setPackageUrl(bVar.packageUrl).setFailState(i3).setInterval(String.valueOf(System.currentTimeMillis() - bVar.Re())).setFailReason(str));
    }

    public static void a(String str, String str2, int i2, String str3, long j2) {
        String str4;
        if (i2 == 2) {
            str4 = ILoggerReporter.Category.ERROR_LOG;
        } else {
            str4 = ILoggerReporter.Category.APM_LOG;
        }
        if (j2 > 60000 || j2 < 0) {
            j2 = -1;
        }
        com.kwad.sdk.commercial.c.b(str4, new HybridLoadMsg().setSceneId(str2).setUrl(str).setState(i2).setInterval(String.valueOf(j2)).setFailReason(str3));
    }

    public static void a(String str, String str2, String str3, String str4) {
        JSONObject jSONObjectFR = fR(str2);
        ac.putValue(jSONObjectFR, "c_" + str3, System.currentTimeMillis());
        if (str3.equals("pageStatus")) {
            try {
                if (TextUtils.isEmpty(str4)) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str4);
                    int iOptInt = jSONObject.optInt("status");
                    String strOptString = jSONObject.optString(MediationConstant.KEY_ERROR_MSG, "");
                    String strOptString2 = jSONObject.optString("webViewCostParams", "");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        JSONObject jSONObject2 = new JSONObject(strOptString2);
                        Iterator<String> itKeys = jSONObject2.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            jSONObjectFR.put(next, jSONObject2.opt(next));
                        }
                    }
                    if (!TextUtils.isEmpty(str)) {
                        if (iOptInt == 1) {
                            ai(str, str2);
                        } else {
                            aj(str, strOptString);
                        }
                    }
                    fS(str2);
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.printStackTrace(e2);
                    fS(str2);
                }
            } catch (Throwable th) {
                fS(str2);
                throw th;
            }
        }
    }

    private static void a(String str, String str2, int i2, String str3) {
        long jCurrentTimeMillis;
        String str4;
        JSONObject jSONObject = bcU.get(str2);
        if (jSONObject == null) {
            jCurrentTimeMillis = -3;
        } else {
            long jOptLong = jSONObject.optLong("c_loadUrl");
            if (jOptLong <= 0) {
                jCurrentTimeMillis = -2;
            } else {
                jCurrentTimeMillis = System.currentTimeMillis() - jOptLong;
                if (jCurrentTimeMillis > 100000 || jCurrentTimeMillis < 0) {
                    jCurrentTimeMillis = -1;
                }
            }
        }
        if (i2 == 2) {
            str4 = ILoggerReporter.Category.ERROR_LOG;
        } else {
            str4 = ILoggerReporter.Category.APM_LOG;
        }
        com.kwad.sdk.commercial.c.a(str4, new WebViewLoadMsg().setUrl(str).setState(i2).setCostTime(jSONObject != null ? jSONObject.toString() : "").setInterval(String.valueOf(jCurrentTimeMillis)).setFailReason(str3));
        fS(str2);
    }
}
