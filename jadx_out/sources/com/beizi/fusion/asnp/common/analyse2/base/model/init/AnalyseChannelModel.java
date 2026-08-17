package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseChannelModel extends AnalyseBasicReceiveLog {

    @ng(key = cl.f49059n)
    private String code;

    @ng(key = "channel")
    private String name;

    public AnalyseChannelModel(JSONObject jSONObject) {
        super(jSONObject);
    }
}
