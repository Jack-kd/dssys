package com.smartdigimkt.c5;

import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f39821a;

    static {
        ThreadPoolExecutor threadPoolExecutor;
        com.smartdigimkt.b4.b bVar = com.smartdigimkt.b4.e.a().f39591a;
        if (bVar != null) {
            if (bVar.f39586j == null) {
                synchronized (com.smartdigimkt.b4.b.class) {
                    try {
                        if (bVar.f39586j == null) {
                            bVar.f39586j = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.smartdigimkt.b4.f());
                        }
                    } finally {
                    }
                }
            }
            threadPoolExecutor = bVar.f39586j;
        } else {
            threadPoolExecutor = null;
        }
        f39821a = threadPoolExecutor;
    }

    public static void a(int i2, String str, String str2) {
        String property = System.getProperty("line.separator");
        try {
            if (str2.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str2);
                a(jSONObject);
                str2 = jSONObject.toString(4);
            } else if (str2.startsWith("[")) {
                str2 = new JSONArray(str2).toString(4);
            }
        } catch (JSONException unused) {
        }
        int i3 = 0;
        String str3 = "╔═══════════════════════════════════════════════════════════════════════════════════════";
        for (String str4 : str2.split(property)) {
            str3 = com.smartdigimkt.p.a.a(str3, "\n") + "║ " + str4;
        }
        String strA = com.smartdigimkt.p.a.a(str3, "\n╚═══════════════════════════════════════════════════════════════════════════════════════");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(SDKContext.getInstance().i() ? "(DebuggerMode)" : "");
        String string = sb.toString();
        String str5 = " \n" + strA;
        if (TextUtils.isEmpty(str5)) {
            return;
        }
        int length = str5.length();
        if (length <= 3970) {
            if (i2 != 1) {
                return;
            }
            Log.e(string, str5);
            return;
        }
        int i4 = (length + 3969) / 3970;
        int i5 = 1;
        while (i5 <= i4) {
            int iMin = Math.min(i3 + 3970, length);
            String str6 = "(" + i5 + ServiceReference.DELIMITER + i4 + ") " + str5.substring(i3, iMin);
            if (i2 == 1) {
                Log.e(string, str6);
            }
            i5++;
            i3 = iMin;
        }
    }

    public static void a(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames == null) {
            return;
        }
        for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
            String strOptString = jSONArrayNames.optString(i2, null);
            if (strOptString != null && strOptString.startsWith("msg")) {
                Object objOpt = jSONObject.opt(strOptString);
                if (objOpt instanceof String) {
                    String str = (String) objOpt;
                    if (str.length() > 2000) {
                        try {
                            jSONObject.put(strOptString, str.substring(0, 2000) + "...<truncated, total=" + str.length() + ">");
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5) {
        ThreadPoolExecutor threadPoolExecutor;
        if (!SDMSDK.getInstance().isNetworkLogDebug() || (threadPoolExecutor = f39821a) == null) {
            return;
        }
        threadPoolExecutor.execute(new u(str, str2, str3, str4, str5));
    }

    public static void a(com.smartdigimkt.q3.a aVar, String str, String str2, String str3) {
        ThreadPoolExecutor threadPoolExecutor;
        if (!SDMSDK.getInstance().isNetworkLogDebug() || (threadPoolExecutor = f39821a) == null) {
            return;
        }
        threadPoolExecutor.execute(new v(aVar, str, str2, str3));
    }
}
