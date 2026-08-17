package com.beizi.fusion.asnp.adn.ad.model.impl.local;

import com.anythink.core.e.m;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AppInstallModel extends IBaseLocalModel {

    @ng(key = "install")
    private boolean install;

    @ng(key = "linkId")
    private String linkId;

    @ng(key = m.a.ac)
    private long updateTime;

    public AppInstallModel() {
        super(null);
    }

    public String getLinkId() {
        return this.linkId;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public boolean isInstall() {
        return this.install;
    }

    public void setInstall(boolean z2) {
        this.install = z2;
    }

    public void setLinkId(String str) {
        this.linkId = str;
    }

    public void setUpdateTime(long j2) {
        this.updateTime = j2;
    }

    public AppInstallModel(JSONObject jSONObject) {
        super(jSONObject);
    }
}
