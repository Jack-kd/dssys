package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.complain;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ComplainModel extends ASNPJsonResponseModel {

    @ng(key = "duration")
    private long duration;

    public ComplainModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public long getDuration() {
        return this.duration;
    }
}
