package com.beizi.fusion.asnp.adn.ad.model.impl.resp.basic;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ADNAdResponse extends ASNPJsonResponseModel {

    @ng(key = "code")
    private int code;

    @ng(key = "data")
    private AdResponseModel data3;

    @ng(key = "msg")
    private String msg;

    public ADNAdResponse(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getCode() {
        return this.code;
    }

    public AdResponseModel getData() {
        return this.data3;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isResponseValid() {
        return (hasParseException() || this.code != 200 || this.data3 == null) ? false : true;
    }
}
