package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.CSensorModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.ClkModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.ShowModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.TSensorModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ReportModel3 extends ASNPJsonResponseModel {

    @ng(key = "clk")
    private ClkModel clk;

    @ng(key = "csensor")
    private CSensorModel csensor;

    @ng(key = "show")
    private ShowModel show;

    @ng(key = "tsensor")
    private TSensorModel tsensor;

    public ReportModel3(JSONObject jSONObject) {
        super(jSONObject);
    }

    public CSensorModel getCSensor() {
        return this.csensor;
    }

    public ClkModel getClk() {
        return this.clk;
    }

    public ShowModel getShow() {
        return this.show;
    }

    public TSensorModel getTSensor() {
        return this.tsensor;
    }
}
