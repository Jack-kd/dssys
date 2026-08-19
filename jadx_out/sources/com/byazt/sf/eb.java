package com.byazt.sf;

import androidx.annotation.NonNull;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, 94})
/* loaded from: classes3.dex */
public class eb {
    public JSONObject hp;

    public eb(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    public int hp() {
        JSONObject jSONObject = this.hp;
        if (jSONObject != null) {
            return jSONObject.optInt("code", -1);
        }
        return -1;
    }

    @NonNull
    public String toString() {
        JSONObject jSONObject = this.hp;
        return jSONObject != null ? jSONObject.toString() : "pitaya error is null";
    }
}
