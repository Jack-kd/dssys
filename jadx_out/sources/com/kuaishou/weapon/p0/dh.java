package com.kuaishou.weapon.p0;

import org.json.JSONArray;

/* loaded from: classes4.dex */
public class dh {

    /* renamed from: a, reason: collision with root package name */
    private static final String f31132a = "bGlidmErKw==";

    /* renamed from: b, reason: collision with root package name */
    private static final String f31133b = "WnBvc2VkQnJpZGdlLmphcg==";

    /* renamed from: c, reason: collision with root package name */
    private static final String f31134c = "bGlienBvc2VkX2FydC5zbw==";

    public static Integer a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() <= 0) {
                return null;
            }
            String str = new String(c.a(f31133b.getBytes(), 2));
            byte[] bArrA = c.a(f31134c.getBytes(), 2);
            return (bArrA == null || !a(jSONArray, str, new String(bArrA))) ? null : 1;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Integer b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() <= 0) {
                return null;
            }
            String str = new String(c.a(f31132a.getBytes(), 2));
            return (str.length() <= 1 || !a(jSONArray, str)) ? null : 1;
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean a(JSONArray jSONArray, String str, String str2) {
        try {
            if (jSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String str3 = (String) jSONArray.get(i2);
                    if (str3.contains(str) || str3.contains(str2)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static boolean a(JSONArray jSONArray, String str) {
        try {
            if (jSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    if (((String) jSONArray.get(i2)).contains(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
