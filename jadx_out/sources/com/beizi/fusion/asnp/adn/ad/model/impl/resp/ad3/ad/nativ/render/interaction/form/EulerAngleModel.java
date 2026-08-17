package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.axis.AxisModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class EulerAngleModel extends ASNPJsonResponseModel {

    @ng(key = "xAxis")
    private AxisModel xAxis;

    @ng(key = "yAxis")
    private AxisModel yAxis;

    @ng(key = "zAxis")
    private AxisModel zAxis;

    public EulerAngleModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public AxisModel getXAxis() {
        return this.xAxis;
    }

    public AxisModel getYAxis() {
        return this.yAxis;
    }

    public AxisModel getZAxis() {
        return this.zAxis;
    }
}
