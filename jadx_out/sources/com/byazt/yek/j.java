package com.byazt.yek;

import com.anythink.core.common.m.f;
import com.sigmob.sdk.base.n;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 669, 38})
/* loaded from: classes3.dex */
public class j {
    public static JSONObject hp(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            String upperCase = com.byazt.ymw.a.l("id=" + str + "&timestamp=" + iCurrentTimeMillis + "&ext=" + str2).toUpperCase();
            jSONObject.put("id", str);
            jSONObject.put("timestamp", iCurrentTimeMillis);
            jSONObject.put(f.f5775Y, upperCase);
            jSONObject.put(n.f36450m, str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
