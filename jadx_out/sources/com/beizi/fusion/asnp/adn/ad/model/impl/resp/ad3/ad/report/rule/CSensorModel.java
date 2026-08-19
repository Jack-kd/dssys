package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class CSensorModel extends ASNPJsonResponseModel {

    @ng(key = "acc")
    private int acc;

    @ng(key = "agl")
    private int agl;

    @ng(key = "dit")
    private String dit;

    @ng(key = "dut")
    private int dut;

    @ng(key = "type")
    private int type;

    public CSensorModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAcc() {
        return this.acc;
    }

    public int getAgl() {
        return this.agl;
    }

    public String getDit() {
        return this.dit;
    }

    public int getDut() {
        return this.dut;
    }

    public int getType() {
        return this.type;
    }
}
