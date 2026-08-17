package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.AnalyticsConfig;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class RewardConditionModel extends ASNPJsonResponseModel {

    @ng(key = "browse")
    private int browse;

    @ng(key = "count")
    private int count;

    @ng(key = "install")
    private int install;

    @ng(key = AnalyticsConfig.RTD_PERIOD)
    private int period;

    public RewardConditionModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getBrowse() {
        return this.browse;
    }

    public int getCount() {
        return this.count;
    }

    public int getInstall() {
        return this.install;
    }

    public int getPeriod() {
        return this.period;
    }
}
