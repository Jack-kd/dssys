package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class LinkModel extends ASNPJsonResponseModel {

    @ng(key = "urlfb")
    private String deeplink;

    @ng(key = "urldw")
    private String downloadURL;

    @ng(key = "dwPrompt")
    private int dwPrompt;

    @ng(key = "interactType")
    private int interact_type;

    @ng(key = "url")
    private String linkURL;

    @ng(key = "urlmk")
    private String marketURL;

    @ng(key = "urlulk")
    private String universalLink;

    @ng(key = "webIntercept")
    private int webIntercept;

    @ng(key = "miniext")
    private String wxExtraData;

    @ng(key = "minicanvas")
    private String wxNativeCanvas;

    @ng(key = "miniid")
    private String wxOriginalId;

    @ng(key = "minipath")
    private String wxProgramPath;

    public LinkModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getDeeplink() {
        return this.deeplink;
    }

    public String getDownloadURL() {
        return this.downloadURL;
    }

    public int getInteractType() {
        return this.interact_type;
    }

    public String getLandingPageURL() {
        return this.linkURL;
    }

    public String getMarketURL() {
        return this.marketURL;
    }

    public String getUniversalLink() {
        return this.universalLink;
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

    public boolean shouldWebIntercept() {
        return this.webIntercept == 1;
    }

    public boolean showDownloadPrompt() {
        return this.dwPrompt == 1;
    }
}
