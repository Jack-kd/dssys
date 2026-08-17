package com.byazt.rr;

import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2236, 34})
/* loaded from: classes3.dex */
public class l implements hp {
    public hp hp;

    @Override // com.byazt.rr.hp
    public void hp(JSONObject jSONObject) throws JSONException {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(jSONObject);
        }
        jSONObject.put("event_ts", System.currentTimeMillis());
    }
}
