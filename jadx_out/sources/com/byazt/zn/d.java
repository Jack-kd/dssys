package com.byazt.zn;

import com.byazt.xci.mp;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 670})
/* loaded from: classes3.dex */
public class d {
    public static void hp(JSONObject jSONObject, mp mpVar) {
        if (jSONObject == null || mpVar == null) {
            return;
        }
        try {
            JSONObject jSONObjectHp = com.byazt.ymw.b.hp().hp(mpVar.nu());
            if (jSONObjectHp != null && jSONObjectHp.has("click_calculation_type")) {
                iOptInt = Math.abs(System.currentTimeMillis() - jSONObjectHp.optLong("click_calculation_time", 0L)) <= 2000 ? jSONObjectHp.optInt("click_calculation_type", 0) : 0;
                com.byazt.ymw.b.hp().l(mpVar.nu());
            }
            int iCs = mpVar.cs();
            int iGv = mpVar.gv();
            jSONObject.put("calculation_method", iCs);
            jSONObject.put("calculation_method_twist", iGv);
            jSONObject.put("click_calculation_type", iOptInt);
        } catch (Throwable unused) {
        }
    }
}
