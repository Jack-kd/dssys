package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BidAuction extends ASNPJsonResponseModel {

    @ng(key = "customData")
    private String customData;

    @ng(key = "isClose")
    private int isClose;

    @ng(key = "maxRate")
    private String maxRate;

    @ng(key = "minRate")
    private String minRate;

    @ng(key = "random")
    private int random;

    @ng(key = "secondPrice")
    private int secondPrice;

    @ng(key = "sortRaise")
    private int sortRaise;

    @ng(key = "type")
    private int type;

    public BidAuction(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getCustomData() {
        return this.customData;
    }

    public int getIsClose() {
        return this.isClose;
    }

    public String getMaxRate() {
        return this.maxRate;
    }

    public String getMinRate() {
        return this.minRate;
    }

    public int getRandom() {
        return this.random;
    }

    public int getSecondPrice() {
        return this.secondPrice;
    }

    public int getSortRaise() {
        return this.sortRaise;
    }

    public int getType() {
        return this.type;
    }
}
