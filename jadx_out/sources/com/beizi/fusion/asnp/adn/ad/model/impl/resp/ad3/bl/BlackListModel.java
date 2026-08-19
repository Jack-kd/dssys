package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.bl;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BlackListModel extends ASNPJsonResponseModel {

    @ng(key = "list")
    private List<String> blackList;

    @ng(key = cl.f49059n)
    private String version;

    public BlackListModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public List<String> getBlackList() {
        return this.blackList;
    }

    public String getVersion() {
        return this.version;
    }
}
