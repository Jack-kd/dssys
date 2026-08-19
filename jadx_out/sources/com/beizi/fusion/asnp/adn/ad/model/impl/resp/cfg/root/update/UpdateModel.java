package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.update;

import com.beizi.fusion.asnp.adn.ad.model.impl.db.AdvertCacheDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class UpdateModel extends ASNPJsonResponseModel {

    @ng(key = "checkInterval")
    private int checkInterval;

    @ng(key = AdvertCacheDBModel.COLUMN_EXPIRE_TIME)
    private long expireTime;

    @ng(key = "maxExpireTime")
    private long maxExpireTime;

    @ng(key = cl.f49059n)
    private String version;

    public UpdateModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getCheckInterval() {
        return this.checkInterval;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public long getMaxExpireTime() {
        return this.maxExpireTime;
    }

    public String getVersion() {
        return this.version;
    }
}
