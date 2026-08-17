package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.reg;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;
import com.qq.e.comm.managers.setting.GlobalSetting;

/* loaded from: classes2.dex */
public final class ReqRegsModel extends ASNPJsonRequestModel {

    @ng(key = GlobalSetting.CCPA)
    private int CCPA;

    @ng(key = "coppa")
    private int COPPA;

    @ng(key = "gdpr")
    private int GDPR;

    public void setCCPA(int i2) {
        this.CCPA = i2;
    }

    public void setCOPPA(int i2) {
        this.COPPA = i2;
    }

    public void setGDPR(int i2) {
        this.GDPR = i2;
    }
}
