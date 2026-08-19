package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BiddingModel3 extends ASNPJsonResponseModel {

    @ng(key = "auction")
    private BidAuction auction;

    @ng(key = "burl")
    private String burl;

    @ng(key = "lurl")
    private String lurl;

    @ng(key = "price")
    private double price;

    @ng(key = "purl")
    private String purl;

    public BiddingModel3(JSONObject jSONObject) {
        super(jSONObject);
    }

    public BidAuction getAuction() {
        return this.auction;
    }

    public String getBiddingURL() {
        return this.purl;
    }

    public String getLoseURL() {
        return this.lurl;
    }

    public double getPrice() {
        return this.price;
    }

    public String getWinURL() {
        return this.burl;
    }
}
