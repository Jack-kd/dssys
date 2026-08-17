package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.frequency;

import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StrategyFrequencyModel extends ASNPJsonResponseModel {

    @ng(key = "absoluteTime")
    private long[] absoluteTime;

    @ng(key = "count")
    private int count;

    @ng(key = StrategyEventDBModel.COLUMN_EVENT_CODE)
    private String eventCode;

    @ng(key = "relativeTime")
    private long relativeTime;

    public StrategyFrequencyModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public long[] getAbsoluteTime() {
        return this.absoluteTime;
    }

    public int getCount() {
        return this.count;
    }

    public String getEventCode() {
        return this.eventCode;
    }

    public long getRelativeTime() {
        return this.relativeTime;
    }
}
