package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.event;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class Analyse2EventModel extends ASNPJsonResponseModel {

    @ng(key = "codes")
    private List<String> codes;

    @ng(key = "count")
    private int count;

    @ng(key = "level")
    private List<String> exclude;

    @ng(key = "sample")
    private int sample;

    @ng(key = "time")
    private String time;

    @ng(key = "uploadUrl")
    private String url;

    public Analyse2EventModel(JSONObject jSONObject) {
        super(jSONObject);
    }
}
