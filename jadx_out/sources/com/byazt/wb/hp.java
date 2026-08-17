package com.byazt.wb;

import android.text.TextUtils;
import com.byazt.hz.vv;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2376, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp(String str, JSONObject jSONObject) {
        com.byazt.nh.hp hpVarHp;
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return str;
        }
        try {
            if (str.startsWith("${") && str.endsWith("}") && (hpVarHp = com.byazt.nh.hp.hp(str.substring(2, str.length() - 1))) != null) {
                Object objHp = hpVarHp.hp(jSONObject);
                return objHp instanceof String ? (String) objHp : objHp instanceof com.byazt.xj.hp ? String.valueOf(vv.hp((com.byazt.xj.hp) objHp)) : String.valueOf(objHp);
            }
            return str;
        } catch (Throwable unused) {
            return str;
        }
    }
}
