package com.byazt.zg;

import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final Random hp = new SecureRandom();

    public static JSONObject hp(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                try {
                    String strHp = hp(jSONObject.toString());
                    if (TextUtils.isEmpty(strHp)) {
                        jSONObject2.put("message", jSONObject.toString());
                        jSONObject2.put("cypher", 0);
                        return jSONObject2;
                    }
                    jSONObject2.put("message", strHp);
                    jSONObject2.put("cypher", 3);
                    return jSONObject2;
                } catch (Throwable th) {
                    com.byazt.aw.l.hp(th.getMessage());
                }
            } catch (Throwable unused) {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        }
        return jSONObject2;
    }

    public static String l() {
        String strHp = hp(8);
        if (strHp == null || strHp.length() != 16) {
            return null;
        }
        return strHp;
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strHp = hp();
        String strHp2 = hp(strHp, 32);
        String strL = l();
        return 3 + strHp + strL + ((strHp2 == null || strL == null) ? null : hp.hp(str, strL, strHp2));
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
            hp.nextBytes(bArr);
            return gu.hp(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
