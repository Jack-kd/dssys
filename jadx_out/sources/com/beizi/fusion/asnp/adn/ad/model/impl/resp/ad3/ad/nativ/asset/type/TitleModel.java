package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type;

import com.baidu.mobads.sdk.internal.a;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TitleModel extends ASNPJsonResponseModel {

    @ng(key = "len")
    private int length;

    @ng(key = a.f10878b)
    private String text;

    public TitleModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getLength() {
        return this.length;
    }

    public String getText() {
        return this.text;
    }
}
