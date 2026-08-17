package com.beizi.fusion.asnp.adn.ad.model.impl.resp.basic;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ADNConfigResponse extends ASNPJsonResponseModel {

    @ng(key = "code")
    private int code;

    @ng(key = "data")
    private ConfigResponseModel data;

    @ng(key = "msg")
    private String msg;

    public ADNConfigResponse(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getCode() {
        return this.code;
    }

    public ConfigResponseModel getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isResponseValid() {
        return (hasParseException() || this.code != 200 || this.data == null) ? false : true;
    }
}
