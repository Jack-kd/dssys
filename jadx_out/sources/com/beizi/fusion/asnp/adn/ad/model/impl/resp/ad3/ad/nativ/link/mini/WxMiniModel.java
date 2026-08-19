package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.mini;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class WxMiniModel extends ASNPJsonResponseModel {

    @ng(key = "wxExtraData")
    private String wxExtraData;

    @ng(key = "wxCanvas")
    private String wxNativeCanvas;

    @ng(key = "wxOriginalId")
    private String wxOriginalId;

    @ng(key = "wxProgramPath")
    private String wxProgramPath;

    public WxMiniModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getWxExtraData() {
        return this.wxExtraData;
    }

    public String getWxNativeCanvas() {
        return this.wxNativeCanvas;
    }

    public String getWxOriginalId() {
        return this.wxOriginalId;
    }

    public String getWxProgramPath() {
        return this.wxProgramPath;
    }
}
