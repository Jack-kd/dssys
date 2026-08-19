package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ShakeModel extends ASNPJsonResponseModel {

    @ng(key = "angle")
    private StatusParamModel angle;

    @ng(key = "axial")
    private StatusParamModel axial;

    @ng(key = "count")
    private StatusParamModel count;

    @ng(key = "endAmplitude")
    private StatusParamModel endAmplitude;

    @ng(key = "startAmplitude")
    private StatusParamModel startAmplitude;

    public ShakeModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public StatusParamModel getAxial() {
        return this.axial;
    }

    public StatusParamModel getCount() {
        return this.count;
    }

    public StatusParamModel getEndAmplitude() {
        return this.endAmplitude;
    }

    public StatusParamModel getRegulatoryAngle() {
        return this.angle;
    }

    public StatusParamModel getStartAmplitude() {
        return this.startAmplitude;
    }
}
