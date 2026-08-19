package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseEventModel extends AnalyseBasicReceiveLog {

    @ng(key = "count")
    private int count;

    @ng(key = "level")
    private List<String> exclude;

    @ng(key = "codes")
    private List<String> handleCodes;

    @ng(key = "sample")
    private int sample;

    @ng(key = "time")
    private String time;

    @ng(key = "uploadUrl")
    private String uploadUrl;

    public AnalyseEventModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public List a() {
        return this.exclude;
    }

    public List b() {
        return this.handleCodes;
    }

    public int c() {
        return this.sample;
    }

    public String d() {
        return this.time;
    }

    public String e() {
        return this.uploadUrl;
    }

    public int getCount() {
        return this.count;
    }
}
