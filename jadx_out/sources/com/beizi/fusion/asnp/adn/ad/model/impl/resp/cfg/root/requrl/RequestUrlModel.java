package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.requrl;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class RequestUrlModel extends ASNPJsonResponseModel {

    @ng(key = "adUrl")
    private String adURL;

    @ng(key = "configUrl")
    private String configURL;

    @ng(key = "cacheAdUrl")
    private String preloadAdURL;

    @ng(key = "cacheImageUrl")
    private String preloadImageUrl;

    @ng(key = cl.f49059n)
    private String version;

    public RequestUrlModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getAdURL() {
        return this.adURL;
    }

    public String getConfigURL() {
        return this.configURL;
    }

    public String getPreloadAdURL() {
        return this.preloadAdURL;
    }

    public String getPreloadImageUrl() {
        return this.preloadImageUrl;
    }

    public String getVersion() {
        return this.version;
    }
}
