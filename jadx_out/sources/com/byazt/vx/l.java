package com.byazt.vx;

import android.os.Build;
import android.text.TextUtils;
import java.security.SecureRandom;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1122, 34})
/* loaded from: classes3.dex */
public class l {
    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strHp = hp();
        String strHp2 = hp(strHp, 32);
        String strL = l();
        return 3 + strHp + strL + ((strHp2 == null || strL == null) ? null : hp.hp(str, strL, strHp2));
    }

    private static SecureRandom jx() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String strHp = hp(str.substring(1, 33), 32);
        String strSubstring = str.substring(33, 49);
        return (strSubstring == null || strHp == null) ? str : hp.l(str.substring(49), strSubstring, strHp);
    }

    public static String l() {
        String strHp = hp(8);
        if (strHp == null || strHp.length() != 16) {
            return null;
        }
        return strHp;
    }

    public static JSONObject hp(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                try {
                    String strHp = hp(jSONObject.toString());
                    if (!TextUtils.isEmpty(strHp)) {
                        jSONObject2.put("message", strHp);
                        jSONObject2.put("cypher", 3);
                        return jSONObject2;
                    }
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                    return jSONObject2;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        }
        return jSONObject2;
    }

    public static String hp() {
        String strHp = hp(16);
        if (strHp == null || strHp.length() != 32) {
            return null;
        }
        return strHp;
    }

    public static String hp(String str, int i2) {
        if (str == null || str.length() != i2) {
            return null;
        }
        int i3 = i2 / 2;
        return str.substring(i3, i2) + str.substring(0, i3);
    }

    public static String hp(int i2) {
        try {
            byte[] bArr = new byte[i2];
            jx().nextBytes(bArr);
            return j.hp(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
