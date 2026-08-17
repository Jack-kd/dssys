package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.spec;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.spec.ext.ReqSpecExtModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;

/* loaded from: classes2.dex */
public final class ReqSpecModel extends ASNPJsonRequestModel {

    @ng(key = n.f36450m)
    private ReqSpecExtModel ext;

    @ng(key = "sdk")
    private String sdk;

    @ng(key = "sdkver")
    private String sdkVersion;

    @ng(key = "strategyMD5")
    private String strategyMD5;

    @ng(key = "tagid")
    private String tagID;

    public void setExt(ReqSpecExtModel reqSpecExtModel) {
        this.ext = reqSpecExtModel;
    }

    public void setSdk(String str) {
        this.sdk = str;
    }

    public void setSdkVersion(String str) {
        this.sdkVersion = str;
    }

    public void setStrategyMD5(String str) {
        this.strategyMD5 = str;
    }

    public void setTagID(String str) {
        this.tagID = str;
    }
}
