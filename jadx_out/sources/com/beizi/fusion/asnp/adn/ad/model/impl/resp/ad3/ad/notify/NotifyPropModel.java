package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.notify;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.anim.RenderAnimModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class NotifyPropModel extends ASNPJsonResponseModel {

    @ng(key = "animate")
    private RenderAnimModel anim;

    @ng(key = "bindInfo")
    private String bindId;

    @ng(key = "delay")
    private int delay;

    @ng(key = "remain")
    private int remain;

    public NotifyPropModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public RenderAnimModel getAnim() {
        return this.anim;
    }

    public String getBindId() {
        return this.bindId;
    }

    public int getDelay() {
        return this.delay;
    }

    public int getRemain() {
        return this.remain;
    }
}
