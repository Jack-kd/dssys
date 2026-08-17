package com.beizi.fusion.asnp.adn.ad.model.impl.db;

import com.beizi.fusion.l6;
import com.beizi.fusion.ma;

/* loaded from: classes2.dex */
public class AdvertCacheDBModel extends ma {
    public static final String COLUMN_CACHE_DATA = "cacheData";
    public static final String COLUMN_CACHE_ECPM = "ecpm";
    public static final String COLUMN_CACHE_KEY = "cacheKey";
    public static final String COLUMN_CACHE_STATUS = "status";
    public static final String COLUMN_CACHE_TIME = "cacheTime";
    public static final String COLUMN_EXPIRE_TIME = "expireTime";

    @l6(column = COLUMN_CACHE_DATA)
    private String cacheData;

    @l6(column = "ecpm", encode = false)
    private String cacheEcpm;

    @l6(column = COLUMN_CACHE_KEY, encode = false)
    private String cacheKey;

    @l6(column = "status", encode = false)
    private String cacheStatus;

    @l6(column = COLUMN_CACHE_TIME, encode = false)
    private String cacheTime;

    @l6(column = COLUMN_EXPIRE_TIME, encode = false)
    private String expireTime;

    public String getCacheData() {
        return this.cacheData;
    }

    public void setCacheData(String str) {
        this.cacheData = str;
    }

    public void setCacheEcpm(String str) {
        this.cacheEcpm = str;
    }

    public void setCacheKey(String str) {
        this.cacheKey = str;
    }

    public void setCacheStatus(String str) {
        this.cacheStatus = str;
    }

    public void setCacheTime(String str) {
        this.cacheTime = str;
    }

    public void setExpireTime(String str) {
        this.expireTime = str;
    }
}
