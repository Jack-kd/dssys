package com.beizi.fusion.asnp.adn.ad.model.impl.db;

import android.text.TextUtils;
import com.beizi.fusion.l6;
import com.beizi.fusion.ma;
import com.beizi.fusion.qo;

/* loaded from: classes2.dex */
public class StrategyEventDBModel extends ma {
    public static final String COLUMN_API_KEY = "apiKey";
    public static final String COLUMN_EVENT_CODE = "eventCode";
    public static final String COLUMN_EVENT_TIME = "eventTime";
    public static final String COLUMN_SPACE_ID = "spaceId";

    @l6(column = COLUMN_API_KEY)
    private String apiKey;

    @l6(column = COLUMN_EVENT_CODE)
    private String eventCode;

    @l6(column = COLUMN_EVENT_TIME, encode = false)
    private String eventTime;

    @l6(column = COLUMN_SPACE_ID)
    private String spaceId;

    public String getApiKey() {
        return this.apiKey;
    }

    public String getEventCode() {
        return this.eventCode;
    }

    public long getEventTime() {
        if (TextUtils.isEmpty(this.eventTime)) {
            return 0L;
        }
        return qo.j(this.eventTime);
    }

    public String getSpaceId() {
        return this.spaceId;
    }

    public void setApiKey(String str) {
        this.apiKey = str;
    }

    public void setEventCode(String str) {
        this.eventCode = str;
    }

    public void setEventTime(String str) {
        this.eventTime = str;
    }

    public void setSpaceId(String str) {
        this.spaceId = str;
    }
}
