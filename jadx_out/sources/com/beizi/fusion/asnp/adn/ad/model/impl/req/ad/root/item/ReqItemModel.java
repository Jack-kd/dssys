package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.spec.ReqSpecModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.be;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ReqItemModel extends ASNPJsonRequestModel {

    @ng(key = "dlvy")
    private int dlvy;

    @ng(key = be.f48799b)
    private long exp;

    @ng(key = n.f36450m)
    private JSONObject ext;

    @ng(key = "qty")
    private int qty;

    @ng(key = "spec")
    private ReqSpecModel spec;

    public void setDlvy(int i2) {
        this.dlvy = i2;
    }

    public void setExp(long j2) {
        this.exp = j2;
    }

    public void setExt(JSONObject jSONObject) {
        this.ext = jSONObject;
    }

    public void setQty(int i2) {
        this.qty = i2;
    }

    public void setSpec(ReqSpecModel reqSpecModel) {
        this.spec = reqSpecModel;
    }
}
