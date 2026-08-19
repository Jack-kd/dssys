package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ClkModel extends ASNPJsonResponseModel {

    @ng(key = "acb")
    private int acb;

    @ng(key = "acc")
    private int acc;

    @ng(key = "agl")
    private int agl;

    @ng(key = "av")
    private int av;

    @ng(key = "ncb")
    private int ncb;

    @ng(key = "rt")
    private int rt;

    public ClkModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAcb() {
        return this.acb;
    }

    public int getAgl() {
        return this.agl;
    }

    public int getAt() {
        return this.acc;
    }

    public int getAv() {
        return this.av;
    }

    public int getNcb() {
        return this.ncb;
    }

    public int getRt() {
        return this.rt;
    }
}
