package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.install;

import com.anythink.core.e.m;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;

/* loaded from: classes2.dex */
public class ReqAppInstallModel extends ASNPJsonRequestModel {

    @ng(key = "install")
    private boolean install;

    @ng(key = "linkId")
    private String linkId;

    @ng(key = m.a.ac)
    private long updateTime;

    public void setInstall(boolean z2) {
        this.install = z2;
    }

    public void setLinkId(String str) {
        this.linkId = str;
    }

    public void setUpdateTime(long j2) {
        this.updateTime = j2;
    }
}
