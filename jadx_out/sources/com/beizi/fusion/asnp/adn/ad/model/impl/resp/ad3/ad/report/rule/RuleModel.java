package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class RuleModel extends ASNPJsonResponseModel {

    @ng(key = "calExposureTime")
    private int calExposureTime;

    @ng(key = "calRandomNum")
    private int calRandomNum;

    @ng(key = "repDelay")
    private int repDelay;

    @ng(key = "repRandomDelay")
    private int repRandomDelay;

    @ng(key = "type")
    private int type;

    public RuleModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getCallbackExposureTime() {
        return this.calExposureTime;
    }

    public int getCallbackRandomNum() {
        return this.calRandomNum;
    }

    public int getRepDelay() {
        return this.repDelay;
    }

    public int getRepRandomDelay() {
        return this.repRandomDelay;
    }

    public int getType() {
        return this.type;
    }
}
