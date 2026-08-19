package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.umeng.ccg.a;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PrimarySkipCtrlModel extends ASNPJsonResponseModel {

    @ng(key = a.f49772z)
    private int action;

    @ng(key = "delay")
    private int delay;

    @ng(key = "probability")
    private int probability;

    public PrimarySkipCtrlModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getAction() {
        return this.action;
    }

    public int getDelay() {
        return this.delay;
    }

    public int getProbability() {
        return this.probability;
    }
}
