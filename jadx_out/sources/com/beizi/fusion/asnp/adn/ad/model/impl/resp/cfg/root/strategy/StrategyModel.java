package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy;

import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.cache.AdCacheModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.StrategyFilterModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StrategyModel extends ASNPJsonResponseModel {

    @ng(key = "adCache")
    private AdCacheModel adCache;

    @ng(key = "filter")
    private StrategyFilterModel filter;

    @ng(key = StrategyEventDBModel.COLUMN_SPACE_ID)
    private String spaceID;

    @ng(key = cl.f49059n)
    private String version;

    public StrategyModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public AdCacheModel getAdCache() {
        return this.adCache;
    }

    public StrategyFilterModel getFilter() {
        return this.filter;
    }

    public String getSpaceID() {
        return this.spaceID;
    }

    public String getVersion() {
        return this.version;
    }
}
