package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.anim;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class RenderAnimModel extends ASNPJsonResponseModel {

    @ng(key = "direction")
    private int direction;

    @ng(key = "duration")
    private long duration;

    public RenderAnimModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getDirection() {
        return this.direction;
    }

    public long getDuration() {
        return this.duration;
    }
}
