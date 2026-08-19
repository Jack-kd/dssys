package com.octopus.ad.internal.c;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.model.types.csv.CSVFloat;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class k {
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

    public static JSONObject b(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String c(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return "";
        }
        try {
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return "";
        }
    }

    public static int d(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return 0;
        }
        try {
            return jSONObject.getInt(str);
        } catch (JSONException unused) {
            return 0;
        }
    }

    public static long e(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return 0L;
        }
        try {
            return jSONObject.getLong(str);
        } catch (JSONException unused) {
            return 0L;
        }
    }

    public static double f(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return 0.0d;
        }
        try {
            return jSONObject.getDouble(str);
        } catch (JSONException unused) {
            return 0.0d;
        }
    }

    public static boolean g(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return false;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00be A[Catch: Exception -> 0x0102, TryCatch #0 {Exception -> 0x0102, blocks: (B:35:0x00a4, B:36:0x00be, B:38:0x00c6, B:40:0x00cc, B:41:0x00ef), top: B:49:0x00a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ef A[Catch: Exception -> 0x0102, TRY_LEAVE, TryCatch #0 {Exception -> 0x0102, blocks: (B:35:0x00a4, B:36:0x00be, B:38:0x00c6, B:40:0x00cc, B:41:0x00ef), top: B:49:0x00a4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> java.lang.String b(T r12) throws java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.c.k.b(java.lang.Object):java.lang.String");
    }

    public static ArrayList<String> a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() > 0) {
                int length = jSONArray.length();
                ArrayList<String> arrayList = new ArrayList<>(length);
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add((String) jSONArray.get(i2));
                }
                return arrayList;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static HashMap<String, Object> a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            HashMap<String, Object> map = new HashMap<>();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            return map;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean a(JSONObject jSONObject, String str, boolean z2) {
        if (jSONObject == null) {
            return z2;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return z2;
        }
    }

    public static <T> T a(String str, Class<T> cls) {
        try {
            return (T) a(new JSONObject(str), cls, (Object) null);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3 A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:39:0x00a6, B:41:0x00b2, B:48:0x00cf, B:49:0x00d3, B:50:0x00df, B:51:0x00eb, B:52:0x00f7, B:54:0x011f, B:55:0x0129, B:56:0x0135, B:43:0x00bd, B:46:0x00ca), top: B:60:0x00a6, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00df A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:39:0x00a6, B:41:0x00b2, B:48:0x00cf, B:49:0x00d3, B:50:0x00df, B:51:0x00eb, B:52:0x00f7, B:54:0x011f, B:55:0x0129, B:56:0x0135, B:43:0x00bd, B:46:0x00ca), top: B:60:0x00a6, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00eb A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:39:0x00a6, B:41:0x00b2, B:48:0x00cf, B:49:0x00d3, B:50:0x00df, B:51:0x00eb, B:52:0x00f7, B:54:0x011f, B:55:0x0129, B:56:0x0135, B:43:0x00bd, B:46:0x00ca), top: B:60:0x00a6, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f7 A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:39:0x00a6, B:41:0x00b2, B:48:0x00cf, B:49:0x00d3, B:50:0x00df, B:51:0x00eb, B:52:0x00f7, B:54:0x011f, B:55:0x0129, B:56:0x0135, B:43:0x00bd, B:46:0x00ca), top: B:60:0x00a6, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0129 A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:39:0x00a6, B:41:0x00b2, B:48:0x00cf, B:49:0x00d3, B:50:0x00df, B:51:0x00eb, B:52:0x00f7, B:54:0x011f, B:55:0x0129, B:56:0x0135, B:43:0x00bd, B:46:0x00ca), top: B:60:0x00a6, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0135 A[Catch: Exception -> 0x0140, TRY_LEAVE, TryCatch #0 {Exception -> 0x0140, blocks: (B:39:0x00a6, B:41:0x00b2, B:48:0x00cf, B:49:0x00d3, B:50:0x00df, B:51:0x00eb, B:52:0x00f7, B:54:0x011f, B:55:0x0129, B:56:0x0135, B:43:0x00bd, B:46:0x00ca), top: B:60:0x00a6, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T, V> T a(org.json.JSONObject r9, java.lang.Class<T> r10, V r11) throws java.lang.IllegalAccessException, org.json.JSONException, java.lang.InstantiationException, java.lang.SecurityException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.c.k.a(org.json.JSONObject, java.lang.Class, java.lang.Object):java.lang.Object");
    }

    private static <T, V> ArrayList<T> a(JSONArray jSONArray, Class<T> cls, V v2) {
        CSVFloat cSVFloat = (ArrayList<T>) new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                if (jSONArray.get(i2) instanceof JSONObject) {
                    cSVFloat.add(a(jSONArray.getJSONObject(i2), cls, v2));
                } else {
                    cSVFloat.add(jSONArray.get(i2));
                }
            } catch (Exception unused) {
            }
        }
        return cSVFloat;
    }

    public static <T> String a(T t2) {
        if (t2 == null) {
            return "{}";
        }
        return b(t2);
    }

    private static <T> String a(List<T> list) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : list) {
            if (obj instanceof String) {
                sb.append(a((String) obj));
                sb.append(",");
            } else if (!(obj instanceof Boolean) && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Double)) {
                sb.append(b(obj));
                sb.append(",");
            } else {
                sb.append(obj);
                sb.append(",");
            }
        }
        return sb.toString();
    }

    private static String a(String str) {
        String strValueOf;
        if (str != null && !str.isEmpty()) {
            StringBuilder sb = new StringBuilder((str.length() + 2) << 4);
            sb.append('\"');
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt == '\"') {
                    strValueOf = "\\\"";
                } else if (cCharAt == '\\') {
                    strValueOf = "\\\\";
                } else if (cCharAt == '/') {
                    strValueOf = "\\/";
                } else if (cCharAt == '\b') {
                    strValueOf = "\\b";
                } else if (cCharAt == '\f') {
                    strValueOf = "\\f";
                } else if (cCharAt == '\n') {
                    strValueOf = "\\n";
                } else if (cCharAt == '\r') {
                    strValueOf = "\\r";
                } else {
                    strValueOf = cCharAt == '\t' ? "\\t" : Character.valueOf(cCharAt);
                }
                sb.append(strValueOf);
            }
            sb.append('\"');
            return sb.toString();
        }
        return "\"\"";
    }
}
