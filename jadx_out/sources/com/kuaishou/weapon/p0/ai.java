package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ai {
    public static JSONObject a(Context context) {
        try {
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = "-1";
            }
            int i2 = Integer.parseInt(property2);
            if (TextUtils.isEmpty(property) || i2 == -1) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("h", property);
            jSONObject.put("p", i2);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }
}
