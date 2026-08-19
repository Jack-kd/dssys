package com.byazt.jo;

import com.byazt.kc.AbsServerManager;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 28})
/* loaded from: classes.dex */
public abstract class hp implements j {
    public com.byazt.tw.a hp;

    public void hp(com.byazt.tw.a aVar) {
        this.hp = aVar;
    }

    public com.byazt.tw.a hp() {
        return this.hp;
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        try {
            com.byazt.tw.a aVar = this.hp;
            if (aVar == null || jSONObject == null) {
                return;
            }
            JSONObject passThroughJson = aVar.getPassThroughJson();
            jSONObject.put("pitaya_cache_size", this.hp.getPitayaCacheSize());
            jSONObject.put("pitaya_code", this.hp.getPitayaCode());
            jSONObject.put("pitaya_msg", this.hp.getPitayaErrorMsg());
            jSONObject.put("ext_plugin_code", passThroughJson.optInt("ext_plugin_code"));
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, passThroughJson.optJSONObject(AbsServerManager.PACKAGE_QUERY_BINDER));
        } catch (Exception unused) {
        }
    }
}
