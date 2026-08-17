package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.creative;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class CreativeModel extends ASNPJsonResponseModel {

    @ng(key = "cid")
    private String creativeId;

    @ng(key = "mid")
    private String materialID;

    @ng(key = "mime")
    private String mime;

    public CreativeModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getCreativeId() {
        return this.creativeId;
    }

    public String getMaterialID() {
        return this.materialID;
    }

    public String getMime() {
        return this.mime;
    }
}
