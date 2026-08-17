package com.byazt.oa;

import android.text.TextUtils;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 149, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public final class v {
    public final Map<String, Object> hp = new ConcurrentHashMap();

    private v() {
    }

    public static v hp() {
        return new v();
    }

    public String l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : this.hp.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public v hp(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.hp.put(str, obj);
        }
        return this;
    }
}
