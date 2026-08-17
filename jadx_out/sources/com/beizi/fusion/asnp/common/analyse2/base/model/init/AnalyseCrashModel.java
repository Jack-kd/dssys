package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseCrashModel extends AnalyseBasicReceiveLog {

    @ng(key = "close")
    private int close;

    @ng(key = "url")
    private String url;

    public AnalyseCrashModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getUrl() {
        return this.url;
    }
}
