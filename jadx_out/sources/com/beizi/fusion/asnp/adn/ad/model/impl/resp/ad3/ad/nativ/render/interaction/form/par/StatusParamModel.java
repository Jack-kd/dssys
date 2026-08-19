package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StatusParamModel extends ASNPJsonResponseModel {

    @ng(key = "cool")
    private String cool;

    @ng(key = PrerollVideoResponse.NORMAL)
    private String normal;

    @ng(key = "passivation")
    private String passivation;

    public StatusParamModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getCool() {
        return TextUtils.isEmpty(this.cool) ? getNormal() : this.cool;
    }

    public String getNormal() {
        return TextUtils.isEmpty(this.normal) ? "" : this.normal;
    }

    public String getPassivation() {
        return TextUtils.isEmpty(this.passivation) ? getNormal() : this.passivation;
    }
}
