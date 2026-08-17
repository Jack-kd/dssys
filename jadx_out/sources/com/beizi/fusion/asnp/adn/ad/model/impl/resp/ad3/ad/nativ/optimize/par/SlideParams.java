package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.optimize.par;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SlideParams extends ASNPJsonResponseModel {

    @ng(key = "distance")
    private int distance;

    @ng(key = "needTime")
    private int needTime;

    @ng(key = "randomNum")
    private int randomNum;

    public SlideParams(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getDistance() {
        return this.distance;
    }

    public int getNeedTime() {
        return this.needTime;
    }

    public int getRandomNum() {
        return this.randomNum;
    }
}
