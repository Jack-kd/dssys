package com.byazt.pp;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1041, 34})
/* loaded from: classes3.dex */
public class l {
    public static long hp(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return 0L;
        }
        try {
            return Long.valueOf(jSONObject.optString(str)).longValue();
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static boolean hp(com.byazt.jb.hp hpVar, String str) {
        if (hpVar == null || hpVar.hp("apk_update_handler_enable", 1) != 1) {
            return false;
        }
        return "application/ttpatch".equals(str);
    }

    public static JSONObject hp(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject != null && jSONObject2 != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject2.put(next, jSONObject.get(next));
                }
            } catch (JSONException unused) {
            }
        }
        return jSONObject2;
    }

    @NonNull
    public static JSONObject hp(JSONObject jSONObject) {
        return hp(jSONObject, new JSONObject());
    }

    @NonNull
    public static JSONObject hp(JSONObject... jSONObjectArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (jSONObjectArr != null && jSONObjectArr.length != 0) {
            for (JSONObject jSONObject2 : jSONObjectArr) {
                if (jSONObject2 != null) {
                    hp(jSONObject2, jSONObject);
                }
            }
        }
        return jSONObject;
    }

    public static String hp(String... strArr) {
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return "";
    }
}
