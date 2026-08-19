package com.byazt.zls;

import android.text.TextUtils;
import com.byazt.xci.mp;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2172, 38})
/* loaded from: classes3.dex */
public class j {
    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (jSONObject != null) {
                    String strOptString = jSONObject.optString("name", null);
                    if (TextUtils.equals(strOptString, "ec_reward_gold") || TextUtils.equals(strOptString, "reward_gold") || TextUtils.equals(strOptString, "auth_reward_gold")) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static boolean hp(mp mpVar) {
        JSONObject jSONObjectW;
        com.byazt.qb.hp hpVarFi = mpVar.fi();
        return (hpVarFi == null || (jSONObjectW = hpVarFi.w()) == null || jSONObjectW.optBoolean("landing_type", false)) ? false : true;
    }
}
