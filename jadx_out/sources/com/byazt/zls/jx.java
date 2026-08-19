package com.byazt.zls;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2172, 30})
/* loaded from: classes3.dex */
public class jx {
    public static int hp(Map<String, Object> map) {
        try {
            return ((Integer) map.get("live_saas_param_interaction_type")).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    private static boolean l(String str) {
        JSONObject jSONObjectOptJSONObject;
        if (TextUtils.isEmpty(str) || (jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("enter_request")) == null) {
            return false;
        }
        int iOptInt = jSONObjectOptJSONObject.optInt("activity_type");
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("incr_coupon");
        if (iOptInt == 1 && jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject2.optInt("interaction_type") == 1 && jSONObjectOptJSONObject2.optInt("task_time") > 0 && jSONObjectOptJSONObject2.optLong(f.a.f3244d) > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hp(String str) {
        try {
            if (TextUtils.isEmpty(str) || new JSONObject(str).optJSONObject("enter_request") == null) {
                return false;
            }
            return !l(str);
        } catch (Exception unused) {
            return false;
        }
    }
}
