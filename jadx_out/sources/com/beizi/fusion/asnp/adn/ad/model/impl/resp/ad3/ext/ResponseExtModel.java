package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ext;

import com.anythink.core.e.m;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.bl.BlackListModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ResponseExtModel extends ASNPJsonResponseModel {

    @ng(key = "blackInfo")
    private BlackListModel blackList;

    @ng(key = "switchBack")
    private int switchBack;

    @ng(key = "updateCfg")
    private boolean updateConfig;

    @ng(key = m.a.ac)
    private long updateTime;

    public ResponseExtModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public BlackListModel getBlackList() {
        return this.blackList;
    }

    public int getSwitchBack() {
        return this.switchBack;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public boolean isUpdateConfig() {
        return this.updateConfig;
    }
}
