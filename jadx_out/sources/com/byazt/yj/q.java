package com.byazt.yj;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1283, 150})
/* loaded from: classes3.dex */
public class q {
    public static void hp(String str, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectGd = com.byazt.wkx.l.gd(str);
        if (jSONObjectGd == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectGd.optJSONObject("values");
        if (jSONObjectOptJSONObject == null) {
            return;
        }
        hp(jSONObjectOptJSONObject, jSONObject);
    }

    public static String l(String str, String str2) {
        if (!com.byazt.wkx.j.hp()) {
            return hp.hp(str);
        }
        if (str.indexOf(46) < 0) {
            str = str + ".png";
        }
        return str2 + "static/images/" + str;
    }

    public static JSONObject hp(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObjectGd = com.byazt.wkx.l.gd(str);
        if (jSONObjectGd == null) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return hp(jSONObject2, jSONObjectGd.optJSONObject("themeValues"), jSONObject);
    }

    private static void hp(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        if (jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!jSONObject2.has(next)) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static JSONObject hp(JSONObject... jSONObjectArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (JSONObject jSONObject2 : jSONObjectArr) {
            if (jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        jSONObject.put(next, jSONObject2.opt(next));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    public static String hp(String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectGd = com.byazt.wkx.l.gd(str);
        if (jSONObjectGd == null || (jSONObjectOptJSONObject = jSONObjectGd.optJSONObject("values")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optString("data");
    }

    public static String hp(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectGd = com.byazt.wkx.l.gd(str);
        if (jSONObjectGd == null || (jSONObjectOptJSONObject = jSONObjectGd.optJSONObject("values")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optString(str2);
    }

    public static JSONObject hp(JSONArray jSONArray) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONArray == null || jSONArray.length() <= 0 || (jSONObjectOptJSONObject = jSONArray.optJSONObject(0)) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optJSONObject("values");
    }
}
