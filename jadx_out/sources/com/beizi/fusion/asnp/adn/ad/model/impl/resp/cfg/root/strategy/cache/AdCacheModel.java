package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.cache;

import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AdCacheModel extends ASNPJsonResponseModel {
    public static final int CACHE_DISABLE = 0;
    public static final int CACHE_ENABLE = 1;

    @ng(key = "advanceTime")
    private long advanceTime;

    @ng(key = "batchFetchCount")
    private int batchFetchCount;

    @ng(key = "cacheMaxQty")
    private int cacheMaxQty;

    @ng(key = "cacheRefreshInterval")
    private long cacheRefreshInterval;

    @ng(key = cl.f49062q)
    private int enable;

    @ng(key = "waitTime")
    private long localWaitTime;

    @ng(key = "priorityMode")
    private int priorityMode;

    public AdCacheModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && hashCode() == ((AdCacheModel) obj).hashCode();
    }

    public long getAdvanceTime() {
        return this.advanceTime;
    }

    public int getBatchFetchCount() {
        return this.batchFetchCount;
    }

    public int getCacheMaxQty() {
        return this.cacheMaxQty;
    }

    public long getCacheRefreshInterval() {
        return this.cacheRefreshInterval;
    }

    public int getEnable() {
        return this.enable;
    }

    public long getLocalWaitTime() {
        return this.localWaitTime;
    }

    public int getPriorityMode() {
        return this.priorityMode;
    }

    public int hashCode() {
        JSONObject jSONObject = this.mJsonObject;
        if (jSONObject == null) {
            return 0;
        }
        return jSONObject.toString().hashCode();
    }
}
