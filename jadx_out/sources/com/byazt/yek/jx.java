package com.byazt.yek;

import com.byazt.xci.mp;
import com.byazt.ymw.u;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 669, 30})
/* loaded from: classes3.dex */
public final class jx {
    public static void hp(mp mpVar, JSONObject jSONObject) {
        if (mpVar == null || jSONObject == null) {
            return;
        }
        mpVar.s(jSONObject.optLong("correct_action_code", -1L));
        mpVar.q(jSONObject.optLong("correct_result_code", -1L));
        mpVar.e(jSONObject.optLong("cali_timestamp", -1L));
    }

    public static void hp(mp mpVar, JSONObject jSONObject, boolean z2) {
        if (mpVar == null || jSONObject == null) {
            return;
        }
        long jRi = mpVar.ri();
        long jQn = mpVar.qn();
        long jUt = mpVar.ut();
        try {
            jSONObject.put("correct_action_code", jRi);
            jSONObject.put("correct_result_code", jQn);
            if (z2) {
                jSONObject.put("cali_timestamp", jUt);
            }
        } catch (JSONException e2) {
            u.hp("CaliTrackUtils", "putCaliExtra error", e2);
        }
    }
}
