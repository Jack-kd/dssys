package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ImageModel extends ASNPJsonResponseModel {

    @ng(key = "h")
    private int imageHeight;

    @ng(key = "w")
    private int imageWidth;

    @ng(key = "placeHolder")
    private String placeHolder;

    @ng(key = "type")
    private int type;

    @ng(key = "url")
    private String url;

    public ImageModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getImageHeight() {
        return this.imageHeight;
    }

    public int getImageWidth() {
        return this.imageWidth;
    }

    public String getPlaceHolder() {
        return this.placeHolder;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }
}
