package com.byazt.rj;

import androidx.core.view.PointerIconCompat;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ZOOM_OUT, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Object hp(JSONObject jSONObject, String str) {
        return hp(jSONObject, str, null);
    }

    public static Object hp(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (jSONObject != null && str != null && !str.isEmpty()) {
            String[] strArrSplit = str.split("\\.");
            try {
                int length = strArrSplit.length;
                int i2 = 0;
                Object obj2 = jSONObject;
                while (i2 < length) {
                    String str2 = strArrSplit[i2];
                    if (obj2 instanceof JSONObject) {
                        JSONObject jSONObject2 = (JSONObject) obj2;
                        if (jSONObject2.has(str2)) {
                            i2++;
                            obj2 = jSONObject2.get(str2);
                        }
                    }
                }
                return obj2;
            } catch (Exception unused) {
            }
        }
        return obj;
    }
}
