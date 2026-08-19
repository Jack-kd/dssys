package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StatusTextModel extends ASNPJsonResponseModel {

    @ng(key = "finals")
    private String finalText;

    @ng(key = PrerollVideoResponse.NORMAL)
    private String normal;

    @ng(key = "select")
    private String selected;

    public StatusTextModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getFinalText() {
        return TextUtils.isEmpty(this.finalText) ? getNormal() : this.finalText;
    }

    public String getNormal() {
        return TextUtils.isEmpty(this.normal) ? "" : this.normal;
    }

    public String getSelected() {
        return TextUtils.isEmpty(this.selected) ? getNormal() : this.selected;
    }
}
