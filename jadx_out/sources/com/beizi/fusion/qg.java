package com.beizi.fusion;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class qg {
    public static JSONArray a(JSONObject jSONObject, String str) throws JSONException {
        JSONArray jSONArray;
        if (jSONObject == null) {
            return null;
        }
        try {
            jSONArray = jSONObject.getJSONArray(str);
        } catch (JSONException unused) {
        }
        if (jSONArray.length() > 0) {
            return jSONArray;
        }
        return null;
    }

    public static double b(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return -1.0d;
        }
        try {
            return jSONObject.getDouble(str);
        } catch (JSONException unused) {
            return -1.0d;
        }
    }

    public static int c(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return -1;
        }
        try {
            return jSONObject.getInt(str);
        } catch (JSONException unused) {
            return -1;
        }
    }

    public static JSONObject d(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String e(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return "";
        }
        try {
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return "";
        }
    }

    public static ArrayList a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() > 0) {
                int length = jSONArray.length();
                ArrayList arrayList = new ArrayList(length);
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add((String) jSONArray.get(i2));
                }
                return arrayList;
            }
        } catch (ClassCastException | JSONException unused) {
        }
        return null;
    }

    public static HashMap a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            HashMap map = new HashMap();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            return map;
        } catch (JSONException unused) {
            return null;
        }
    }
}
