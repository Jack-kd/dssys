package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseSDKModel extends AnalyseBasicReceiveLog {

    @ng(key = cl.f49059n)
    private String sdkVersion;

    public AnalyseSDKModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String a() {
        return this.sdkVersion;
    }
}
