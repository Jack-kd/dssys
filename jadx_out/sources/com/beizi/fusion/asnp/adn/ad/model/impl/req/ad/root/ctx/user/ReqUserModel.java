package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.user;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ReqUserModel extends ASNPJsonRequestModel {

    @ng(key = "data")
    private JSONArray data;

    @ng(key = n.f36450m)
    private JSONObject ext;

    @ng(key = "forbidSensor")
    private int forbidSensor;

    @ng(key = "id")
    private String id;

    public void setData(JSONArray jSONArray) {
        this.data = jSONArray;
    }

    public void setExt(JSONObject jSONObject) {
        this.ext = jSONObject;
    }

    public void setForbidSensor(int i2) {
        this.forbidSensor = i2;
    }

    public void setId(String str) {
        this.id = str;
    }
}
