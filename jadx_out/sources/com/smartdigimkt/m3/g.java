package com.smartdigimkt.m3;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class g {
    public static String a(int i2) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("taskType", i2);
            jSONObject.put("status", 1);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public static String a(int i2, long j2) {
        return j2 + "_" + i2;
    }

    public static String a(int i2, int i3, long j2) {
        if (i2 == 16) {
            if (i3 == 53 || i3 == 42) {
                return a(4, j2);
            }
            if (i3 == 54) {
                return a(5, j2);
            }
            if (i3 == 55) {
                return a(6, j2);
            }
            if (i3 == 56) {
                return a(7, j2);
            }
        }
        if (i2 == 1) {
            if (i3 == 55) {
                return a(6, j2);
            }
            if (i3 == 56) {
                return a(7, j2);
            }
            if (i3 == 57) {
                return a(8, j2);
            }
            if (i3 == 58) {
                return a(9, j2);
            }
        }
        if ((i2 == 1 || i2 == 4 || i2 == 18 || i2 == 19 || i2 == 14 || i2 == 15) && (i3 == 6 || i3 == 30 || i3 == 34 || i3 == 36 || i3 == 40 || i3 == 41 || i3 == 24 || i3 == 25)) {
            return a(10, j2);
        }
        if (i3 == 39 || i3 == 62) {
            return a(11, j2);
        }
        if (i3 == 29 || i3 == 38 || i3 == 35 || i3 == 8 || i3 == 37 || i3 == 26) {
            return a(12, j2);
        }
        if (i2 == 10 && i3 == 14) {
            return a(2, j2);
        }
        if (i2 == 1 && i3 == 61) {
            return a(2, j2);
        }
        if (i2 == 1 && i3 == 1) {
            return a(1, j2);
        }
        if ((i2 == 4 && i3 == 5) || ((i2 == 18 && i3 == 51) || ((i2 == 19 && i3 == 50) || ((i2 == 1 && i3 == 3) || (i2 == 1 && i3 == 2))))) {
            return a(3, j2);
        }
        return a(3, j2);
    }
}
