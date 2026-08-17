package com.beizi.fusion.asnp.adn.ad.cache.ad.pre.model;

import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PreCacheSpaceAdModel extends ASNPJsonResponseModel {

    @ng(key = "ad")
    private AdResponseModel ad;

    @ng(key = StrategyEventDBModel.COLUMN_SPACE_ID)
    private String spaceId;

    public PreCacheSpaceAdModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public AdResponseModel a() {
        return this.ad;
    }

    public String b() {
        return this.spaceId;
    }
}
