package com.byazt.ymw;

import android.os.Build;
import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 68, 28})
/* loaded from: classes3.dex */
public class hp {

    @com.byazt.kj.hp(hp = {0, 1, 68, 170})
    /* renamed from: com.byazt.ymw.hp$hp, reason: collision with other inner class name */
    public static class C0423hp {
        public static final Random hp = hp.jx();
    }

    public static JSONObject hp(JSONObject jSONObject) {
        return jSONObject == null ? new JSONObject() : hp(jSONObject.toString());
    }

    public static String jx(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String strHp = hp(str.substring(1, 33), 32);
        String strSubstring = str.substring(33, 49);
        return (strSubstring == null || strHp == null) ? str : com.byazt.opp.hp.l(str.substring(49), strSubstring, strHp);
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strHp = hp();
        String strHp2 = hp(strHp, 32);
        String strL = l();
        return 3 + strHp + strL + ((strHp2 == null || strL == null) ? null : com.byazt.opp.hp.hp(str, strL, strHp2));
    }

    public static JSONObject hp(String str) {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    String strL = l(str);
                    if (!TextUtils.isEmpty(strL)) {
                        jSONObject.put("message", strL);
                        jSONObject.put("cypher", 3);
                        return jSONObject;
                    }
                    jSONObject.put("message", str);
                    jSONObject.put("cypher", 0);
                    return jSONObject;
                } catch (Throwable th) {
                    th.getMessage();
                }
            } catch (Throwable unused) {
                jSONObject.put("message", str);
                jSONObject.put("cypher", 0);
            }
        }
        return jSONObject;
    }

    public static Random jx() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                return SecureRandom.getInstanceStrong();
            } catch (Throwable unused) {
                return new SecureRandom();
            }
        }
        return new SecureRandom();
    }

    public static String l() {
        String strHp = hp(8);
        if (strHp == null || strHp.length() != 16) {
            return null;
        }
        return strHp;
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
            C0423hp.hp.nextBytes(bArr);
            return a.hp(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
