package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.app;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;

/* loaded from: classes2.dex */
public final class ReqAppModel extends ASNPJsonRequestModel {

    @ng(key = "appId")
    private String appId;

    @ng(key = "bundle")
    private String bundle;

    @ng(key = "install")
    private long install;

    @ng(key = "name")
    private String name;

    @ng(key = n.f36454q)
    private long update;

    @ng(key = "ver")
    private String ver;

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setBundle(String str) {
        this.bundle = str;
    }

    public void setInstall(long j2) {
        this.install = j2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUpdate(long j2) {
        this.update = j2;
    }

    public void setVer(String str) {
        this.ver = str;
    }
}
