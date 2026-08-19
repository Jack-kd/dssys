package com.byazt.fqv;

import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1804, 34})
/* loaded from: classes2.dex */
public class l {
    public static volatile l hp;

    private l() {
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        com.byazt.rz.l.l(com.byazt.di.l.getContext(), "tt_sdk_test_tool_data_" + com.byazt.di.hp.jl().zy(), 0).edit().putString("rit_conf", jSONArray.toString()).apply();
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.byazt.rz.l.l(com.byazt.di.l.getContext(), "tt_sdk_test_tool_data_" + com.byazt.di.hp.jl().zy(), 0).edit().putString("adn_init_conf", jSONObject.toString()).apply();
    }
}
