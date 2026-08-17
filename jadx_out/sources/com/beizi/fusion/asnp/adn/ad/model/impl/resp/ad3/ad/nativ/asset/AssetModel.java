package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset;

import com.anythink.core.common.f.g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.ImageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.TitleModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.VideoModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AssetModel extends ASNPJsonResponseModel {

    @ng(key = "id")
    private String id;

    @ng(key = "image")
    private ImageModel image;

    @ng(key = g.a.f3271h)
    private TitleModel title;

    @ng(key = "video")
    private VideoModel video;

    public AssetModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getId() {
        return this.id;
    }

    public ImageModel getImage() {
        return this.image;
    }

    public TitleModel getTitle() {
        return this.title;
    }

    public VideoModel getVideo() {
        return this.video;
    }
}
