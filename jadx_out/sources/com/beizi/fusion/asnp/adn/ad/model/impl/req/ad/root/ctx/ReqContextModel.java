package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.app.ReqAppModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.ReqDeviceModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.ReqContextExtModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.reg.ReqRegsModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.user.ReqUserModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.be;

/* loaded from: classes2.dex */
public final class ReqContextModel extends ASNPJsonRequestModel {

    @ng(key = "app")
    private ReqAppModel app;

    @ng(key = "device")
    private ReqDeviceModel device;

    @ng(key = n.f36450m)
    private ReqContextExtModel extModel;

    @ng(key = "regs")
    private ReqRegsModel regs;

    @ng(key = be.f48810m)
    private ReqUserModel user;

    public void setApp(ReqAppModel reqAppModel) {
        this.app = reqAppModel;
    }

    public void setDevice(ReqDeviceModel reqDeviceModel) {
        this.device = reqDeviceModel;
    }

    public void setExtModel(ReqContextExtModel reqContextExtModel) {
        this.extModel = reqContextExtModel;
    }

    public void setRegs(ReqRegsModel reqRegsModel) {
        this.regs = reqRegsModel;
    }

    public void setUser(ReqUserModel reqUserModel) {
        this.user = reqUserModel;
    }
}
