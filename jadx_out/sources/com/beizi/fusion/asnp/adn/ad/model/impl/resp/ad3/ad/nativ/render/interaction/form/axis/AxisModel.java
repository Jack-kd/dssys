package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.axis;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AxisModel extends ASNPJsonResponseModel {

    @ng(key = "angle")
    private StatusParamModel angle;

    @ng(key = "animation")
    private int animation;

    @ng(key = "direction")
    private StatusParamModel direction;

    public AxisModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public StatusParamModel getAngle() {
        return this.angle;
    }

    public int getAnimation() {
        return this.animation;
    }

    public StatusParamModel getDirection() {
        return this.direction;
    }
}
