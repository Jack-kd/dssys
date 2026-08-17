package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TSensorModel extends ASNPJsonResponseModel {

    @ng(key = "accx")
    private int accx;

    @ng(key = "accy")
    private int accy;

    @ng(key = "accz")
    private int accz;

    @ng(key = "aglx")
    private int aglx;

    @ng(key = "agly")
    private int agly;

    @ng(key = "aglz")
    private int aglz;

    @ng(key = "sld")
    private SldModel sld;

    @ng(key = "type")
    private int type;

    public TSensorModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAccx() {
        return this.accx;
    }

    public int getAccy() {
        return this.accy;
    }

    public int getAccz() {
        return this.accz;
    }

    public int getAglx() {
        return this.aglx;
    }

    public int getAgly() {
        return this.agly;
    }

    public int getAglz() {
        return this.aglz;
    }

    public SldModel getSld() {
        return this.sld;
    }

    public int getType() {
        return this.type;
    }
}
