package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.ng;
import com.beizi.fusion.qo;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SlideModel extends ASNPJsonResponseModel {
    private final String TYPE_COOLING;

    @ng(key = "direction")
    private StatusParamModel slideDirection;

    @ng(key = "distance")
    private StatusParamModel slideDistance;

    public SlideModel(JSONObject jSONObject) {
        super(jSONObject);
        this.TYPE_COOLING = "Cooling";
    }

    public String getSlideDirection(String str) {
        return this.slideDirection != null ? "Cooling".equalsIgnoreCase(str) ? this.slideDirection.getCool() : this.slideDirection.getNormal() : "UP";
    }

    public int getSlideDistance(String str) {
        if (this.slideDistance != null) {
            return "Cooling".equalsIgnoreCase(str) ? qo.i(this.slideDistance.getCool()) : qo.i(this.slideDistance.getNormal());
        }
        return 0;
    }
}
