package com.byazt.xa;

import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1328, 34})
/* loaded from: classes3.dex */
public class l {
    public static void hp(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject2.put(next, jSONObject.opt(next));
            } catch (JSONException unused) {
            }
        }
    }

    public static JSONObject hp(String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public static JSONArray hp(JSONObject jSONObject, String str, JSONArray jSONArray) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONArray(com.byazt.ss.l.hp(str, jSONObject));
            } catch (JSONException unused) {
            }
        }
        return jSONArray;
    }

    public static JSONArray hp(String str, JSONArray jSONArray) {
        return hp(null, str, jSONArray);
    }

    public static void hp(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray2 == null || jSONArray2.length() <= 0) {
            return;
        }
        if (jSONArray == null) {
            jSONArray = new JSONArray();
        }
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            Object objOpt = jSONArray2.opt(i2);
            if (objOpt != null) {
                jSONArray.put(objOpt);
            }
        }
    }
}
