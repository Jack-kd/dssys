package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.install.ReqAppInstallModel;
import com.beizi.fusion.ng;
import java.util.List;

/* loaded from: classes2.dex */
public class ReqContextExtModel extends ASNPJsonRequestModel {

    @ng(key = "appInstall")
    private List<ReqAppInstallModel> appInstall;

    @ng(key = "blackListVersion")
    private String blackListVersion;

    public void setAppInstall(List<ReqAppInstallModel> list) {
        this.appInstall = list;
    }

    public void setBlackListVersion(String str) {
        this.blackListVersion = str;
    }
}
