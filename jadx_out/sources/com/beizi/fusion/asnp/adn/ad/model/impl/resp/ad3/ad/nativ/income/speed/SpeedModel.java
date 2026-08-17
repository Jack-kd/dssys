package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.speed;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SpeedModel extends ASNPJsonResponseModel {

    @ng(key = "isAnimation")
    private int isAnimation;

    @ng(key = "isImageSpeed")
    private int isImageSpeed;

    @ng(key = "isPlaceHolder")
    private int isPlaceHolder;

    public SpeedModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public boolean isAnimation() {
        return this.isAnimation == 1;
    }

    public boolean isImageSpeed() {
        return this.isImageSpeed == 1;
    }

    public boolean isPlaceHolder() {
        return this.isPlaceHolder == 1;
    }
}
