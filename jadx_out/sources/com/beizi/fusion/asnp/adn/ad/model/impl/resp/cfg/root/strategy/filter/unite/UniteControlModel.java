package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.unite;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

@Deprecated
/* loaded from: classes2.dex */
public class UniteControlModel extends ASNPJsonResponseModel {

    @ng(key = "duration")
    private long duration;

    @ng(key = "random")
    private int random;

    public UniteControlModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Deprecated
    public long getDuration() {
        return this.duration;
    }

    @Deprecated
    public int getRandom() {
        return this.random;
    }
}
