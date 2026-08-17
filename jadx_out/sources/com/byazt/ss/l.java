package com.byazt.ss;

import android.text.TextUtils;
import com.byazt.ss.hp;
import com.byazt.zs.w;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1380, 34})
/* loaded from: classes3.dex */
public class l {
    public static String hp(String str, JSONObject jSONObject) {
        hp hpVarJx;
        hp.InterfaceC0366hp interfaceC0366hpHp;
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                if (str.startsWith("${") && str.endsWith("}") && (hpVarJx = w.hp().jx()) != null && (interfaceC0366hpHp = hpVarJx.hp(str.substring(2, str.length() - 1))) != null) {
                    return (String) interfaceC0366hpHp.hp(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        return str;
    }

    public static Object hp(Object obj, JSONObject jSONObject) {
        if (obj == null) {
            return null;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf)) {
            return null;
        }
        return (strValueOf.startsWith("${") && strValueOf.endsWith("}")) ? hp(strValueOf, jSONObject) : obj;
    }
}
