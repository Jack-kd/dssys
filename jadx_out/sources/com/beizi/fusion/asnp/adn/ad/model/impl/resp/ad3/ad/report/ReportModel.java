package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.RuleModel;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ReportModel extends ASNPJsonResponseModel {

    @ng(key = "exposureArea")
    private int exposureArea;

    @ng(key = "rule")
    private List<RuleModel> rules;

    public ReportModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getExposureArea() {
        return this.exposureArea;
    }

    public List<RuleModel> getRules() {
        return this.rules;
    }
}
