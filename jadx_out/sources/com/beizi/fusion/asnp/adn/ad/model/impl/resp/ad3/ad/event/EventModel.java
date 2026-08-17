package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.event;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class EventModel extends ASNPJsonResponseModel {

    @ng(key = "method")
    private int method;

    @ng(key = "type")
    private int type;

    @ng(key = "url")
    private String url;

    public EventModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getMethod() {
        return this.method;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }
}
