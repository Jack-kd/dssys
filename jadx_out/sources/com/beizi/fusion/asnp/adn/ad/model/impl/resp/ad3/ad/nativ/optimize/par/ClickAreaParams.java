package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.optimize.par;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ClickAreaParams extends ASNPJsonResponseModel {

    @ng(key = "durationTime")
    private int duration;

    @ng(key = "height")
    private String height;

    @ng(key = "horizontalSpace")
    private String horizontalSpace;

    @ng(key = "needTime")
    private int needTime;

    @ng(key = "randomNum")
    private int randomNum;

    @ng(key = "reference")
    private int reference;

    @ng(key = "verticalSpace")
    private String verticalSpace;

    @ng(key = "width")
    private String width;

    public ClickAreaParams(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getDuration() {
        return this.duration;
    }

    public String getHeight() {
        return this.height;
    }

    public String getHorizontalSpace() {
        return this.horizontalSpace;
    }

    public int getNeedTime() {
        return this.needTime;
    }

    public int getRandomNum() {
        return this.randomNum;
    }

    public int getReference() {
        return this.reference;
    }

    public String getVerticalSpace() {
        return this.verticalSpace;
    }

    public String getWidth() {
        return this.width;
    }
}
