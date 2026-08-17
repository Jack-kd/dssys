package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.land;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class LandingOptimizeModel extends ASNPJsonResponseModel {

    @ng(key = "againOpen")
    private int againOpen;

    @ng(key = "againOpenTime")
    private int againOpenTime;

    @ng(key = "autoOpen")
    private int autoOpen;

    @ng(key = "autoOpenType")
    private int autoOpenType;

    @ng(key = "random")
    private int random;

    @ng(key = "repeatOpen")
    private int repeatOpen;

    @ng(key = "repeatOpenCount")
    private int repeatOpenCount;

    @ng(key = "showMask")
    private int showMask;

    @ng(key = "url")
    private String url;

    public LandingOptimizeModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAgainOpen() {
        return this.againOpen;
    }

    public int getAgainOpenTime() {
        return this.againOpenTime;
    }

    public int getAutoOpen() {
        return this.autoOpen;
    }

    public int getAutoOpenType() {
        return this.autoOpenType;
    }

    public int getRandom() {
        return this.random;
    }

    public int getRepeatOpen() {
        return this.repeatOpen;
    }

    public int getRepeatOpenCount() {
        return this.repeatOpenCount;
    }

    public int getShowMask() {
        return this.showMask;
    }

    public String getUrl() {
        return this.url;
    }
}
