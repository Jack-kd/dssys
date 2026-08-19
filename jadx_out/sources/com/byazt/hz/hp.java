package com.byazt.hz;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, 28})
/* loaded from: classes2.dex */
public class hp implements gu {
    @Override // com.byazt.hz.gu
    public Object hp(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length != 2) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            JSONArray jSONArrayHp = hp(objArr[0]);
            if (jSONArrayHp != null) {
                int i2 = Integer.parseInt(String.valueOf(objArr[1]));
                for (int i3 = 0; i3 < jSONArrayHp.length(); i3 += i2) {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i4 = 0; i4 < i2; i4++) {
                        int i5 = i3 + i4;
                        if (i5 >= jSONArrayHp.length()) {
                            break;
                        }
                        jSONArray2.put(jSONArrayHp.opt(i5));
                    }
                    jSONObject2.put("$chunk", jSONArray2);
                    jSONArray.put(jSONObject2);
                }
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    private JSONArray hp(Object obj) {
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj != null && obj.getClass().isArray()) {
            JSONArray jSONArray = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                jSONArray.put(obj2);
            }
            return jSONArray;
        }
        try {
            return new JSONArray(String.valueOf(obj));
        } catch (JSONException unused) {
            return null;
        }
    }
}
