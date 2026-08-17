package com.byazt.zn;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 302})
/* loaded from: classes3.dex */
public class zy {
    public static boolean hp() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObjectC = com.byazt.jz.sz.l().c();
        if (jSONObjectC == null) {
            return false;
        }
        return jCurrentTimeMillis >= jSONObjectC.optLong("start", 1707480000000L) && jCurrentTimeMillis <= jSONObjectC.optLong("end", 1707498000000L);
    }

    public static boolean l() {
        JSONObject jSONObjectC = com.byazt.jz.sz.l().c();
        return jSONObjectC != null && hp() && jSONObjectC.optInt("force_drop", 0) == 1;
    }
}
