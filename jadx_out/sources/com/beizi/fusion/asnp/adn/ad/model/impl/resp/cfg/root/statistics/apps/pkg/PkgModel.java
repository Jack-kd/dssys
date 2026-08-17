package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.apps.pkg;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PkgModel extends ASNPJsonResponseModel {

    @ng(key = "link")
    private String link;

    @ng(key = "linkId")
    private String linkID;

    public PkgModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getLink() {
        return this.link;
    }

    public String getLinkID() {
        return this.linkID;
    }
}
