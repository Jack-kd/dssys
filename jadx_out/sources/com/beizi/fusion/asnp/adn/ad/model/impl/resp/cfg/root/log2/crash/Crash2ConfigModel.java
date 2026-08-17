package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.crash;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class Crash2ConfigModel extends ASNPJsonResponseModel {

    @ng(key = "close")
    private int close;

    @ng(key = "url")
    private String url;

    public Crash2ConfigModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public boolean isClose() {
        return this.close == 1;
    }
}
