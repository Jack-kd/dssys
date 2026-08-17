package com.byazt.dnb;

import com.anythink.core.common.f.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1239, 45})
/* loaded from: classes2.dex */
public class e {
    public static JSONObject hp(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    jSONObject.put(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.opt(f.a.f3244d));
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
