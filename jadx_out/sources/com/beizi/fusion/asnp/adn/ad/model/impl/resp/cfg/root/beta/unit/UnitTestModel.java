package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.beta.unit;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.m0;
import com.beizi.fusion.nb;
import com.beizi.fusion.ng;
import com.beizi.fusion.qo;
import com.umeng.analytics.AnalyticsConfig;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class UnitTestModel extends ASNPJsonResponseModel implements nb {

    @ng(key = "duration")
    private String mBetaDuration;

    @ng(key = "endTime")
    private String mBetaEndTime;

    @ng(key = "planId")
    private String mBetaPlanID;

    @ng(key = AnalyticsConfig.RTD_START_TIME)
    private String mBetaStartTime;

    @ng(key = "random")
    private String mRandomProbability;

    public UnitTestModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // com.beizi.fusion.nb
    public String getBetaTestPlanID() {
        return this.mBetaPlanID;
    }

    @Override // com.beizi.fusion.nb
    public long getDurationMillisecond() {
        return qo.j(this.mBetaDuration);
    }

    @Override // com.beizi.fusion.nb
    public long getEndTimestamp() {
        return qo.j(this.mBetaEndTime);
    }

    @Override // com.beizi.fusion.nb
    public int getRandomProbability() {
        return qo.i(this.mRandomProbability);
    }

    @Override // com.beizi.fusion.nb
    public String getSDKBizID() {
        return m0.e();
    }

    @Override // com.beizi.fusion.nb
    public long getStartTimestamp() {
        return qo.j(this.mBetaStartTime);
    }
}
