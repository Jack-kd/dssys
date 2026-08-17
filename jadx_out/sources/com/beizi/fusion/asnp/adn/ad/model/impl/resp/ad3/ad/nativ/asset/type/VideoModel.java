package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class VideoModel extends ASNPJsonResponseModel {

    @ng(key = "adm")
    private String adm;

    @ng(key = "curl")
    private String curl;

    @ng(key = "videoDuration")
    private int duration;

    @ng(key = "url")
    private String url;

    @ng(key = "videoCover")
    private String videoCover;

    @ng(key = "h")
    private int videoHeight;

    @ng(key = "w")
    private int videoWidth;

    public VideoModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getAdm() {
        return this.adm;
    }

    public String getCurl() {
        return this.curl;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVideoCover() {
        return this.videoCover;
    }

    public int getVideoHeight() {
        return this.videoHeight;
    }

    public int getVideoWidth() {
        return this.videoWidth;
    }
}
