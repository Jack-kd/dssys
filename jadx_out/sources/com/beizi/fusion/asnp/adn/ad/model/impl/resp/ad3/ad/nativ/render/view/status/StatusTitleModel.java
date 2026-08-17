package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status;

import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StatusTitleModel extends ASNPJsonResponseModel {

    @ng(key = "download")
    private StatusParamModel download;

    @ng(key = PrerollVideoResponse.NORMAL)
    private StatusParamModel normal;

    public StatusTitleModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public StatusParamModel getDownload() {
        return this.download;
    }

    public StatusParamModel getNormal() {
        return this.normal;
    }
}
