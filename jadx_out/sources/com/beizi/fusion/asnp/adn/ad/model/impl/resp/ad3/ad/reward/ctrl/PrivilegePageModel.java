package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.ccg.a;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PrivilegePageModel extends ASNPJsonResponseModel {

    @ng(key = a.f49772z)
    private int action;

    @ng(key = "probability")
    private int probability;

    @ng(key = "remain")
    private int remain;

    public PrivilegePageModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAction() {
        return this.action;
    }

    public int getProbability() {
        return this.probability;
    }

    public int getRemain() {
        return this.remain;
    }
}
