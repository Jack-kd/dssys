package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ShowModel extends ASNPJsonResponseModel {

    @ng(key = "av")
    private int av;

    @ng(key = "rt")
    private int rt;

    public ShowModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAv() {
        return this.av;
    }

    public int getRt() {
        return this.rt;
    }
}
