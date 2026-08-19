package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SldModel extends ASNPJsonResponseModel {

    @ng(key = "clk")
    private String clk;

    @ng(key = "other")
    private String other;

    @ng(key = "scroll")
    private String scroll;

    @ng(key = "shake")
    private String shake;

    @ng(key = "turn")
    private String turn;

    public SldModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getClk() {
        return this.clk;
    }

    public String getOther() {
        return this.other;
    }

    public String getScroll() {
        return this.scroll;
    }

    public String getShake() {
        return this.shake;
    }

    public String getTurn() {
        return this.turn;
    }
}
