package com.beizi.fusion.asnp.adn.ad.cache.ad.pre.model;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PreCacheAdModel extends ASNPJsonResponseModel {

    @ng(key = "result")
    private List<PreCacheSpaceAdModel> spaceAdModelList;

    public PreCacheAdModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public List a() {
        return this.spaceAdModelList;
    }
}
