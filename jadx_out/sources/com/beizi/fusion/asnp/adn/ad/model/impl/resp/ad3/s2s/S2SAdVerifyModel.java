package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.s2s;

import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class S2SAdVerifyModel extends ASNPJsonResponseModel {

    @ng(key = "adType")
    private String s2sAdType;

    @ng(key = "reqId")
    private String s2sReqId;

    @ng(key = StrategyEventDBModel.COLUMN_SPACE_ID)
    private String s2sSpaceId;

    public S2SAdVerifyModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getS2sAdType() {
        return this.s2sAdType;
    }

    public String getS2sReqId() {
        return this.s2sReqId;
    }

    public String getS2sSpaceId() {
        return this.s2sSpaceId;
    }
}
