package com.beizi.fusion.asnp.adn.ad.model.impl.local;

import com.beizi.fusion.pg;
import com.beizi.fusion.qa;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class IBaseLocalModel extends qa {
    public IBaseLocalModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    private String parseToJson() {
        return pg.b(this).toString();
    }

    @Override // com.beizi.fusion.qa, com.beizi.fusion.hd
    public String toJsonString() {
        JSONObject jSONObject = this.mJsonObject;
        return jSONObject != null ? jSONObject.toString() : parseToJson();
    }
}
