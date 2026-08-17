package com.byazt.d;

import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 670, 45})
/* loaded from: classes2.dex */
public class e implements q {
    private boolean l(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("pause_optimise_mistake_click_interval_switch", 0) == 1;
    }

    @Override // com.byazt.d.q
    public boolean hp(com.byazt.zv.l lVar, int i2, s sVar) throws JSONException {
        if (lVar == null || !l(lVar.ec())) {
            return false;
        }
        if (System.currentTimeMillis() - lVar.nd() > hp(lVar.ec())) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", "mistake_click");
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("pause_optimise", jSONObject, lVar);
        return true;
    }

    private long hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("pause_optimise_mistake_click_interval", 300);
    }
}
