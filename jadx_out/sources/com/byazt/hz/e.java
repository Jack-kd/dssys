package com.byazt.hz;

import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, 45})
/* loaded from: classes2.dex */
public class e implements gu {
    @Override // com.byazt.hz.gu
    public Object hp(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length < 2) {
            return null;
        }
        int i2 = 0;
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        if (obj == null || !(obj2 instanceof String)) {
            return null;
        }
        String str = (String) obj2;
        StringBuilder sb = new StringBuilder();
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            while (i2 < jSONArray.length()) {
                if (i2 > 0) {
                    sb.append(str);
                }
                sb.append(String.valueOf(jSONArray.opt(i2)));
                i2++;
            }
        } else {
            if (!obj.getClass().isArray()) {
                return String.valueOf(obj);
            }
            Object[] objArr2 = (Object[]) obj;
            while (i2 < objArr2.length) {
                if (i2 > 0) {
                    sb.append(str);
                }
                sb.append(String.valueOf(objArr2[i2]));
                i2++;
            }
        }
        return sb.toString();
    }
}
