package com.beizi.fusion.asnp.common.analyse2.base.model.biz;

import com.beizi.fusion.k2;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class AnalyseAdEventLog extends AnalyseSimpleLog {

    @ng(exclude = true, key = "amps")
    private AnalyseAdCommon amps;

    @ng(exclude = true, key = "asnp")
    private AnalyseAdCommon asnp;

    public AnalyseAdEventLog(JSONObject jSONObject) {
        super(jSONObject);
    }

    public AnalyseAdCommon b() {
        AnalyseAdCommon analyseAdCommon = this.amps;
        if (analyseAdCommon != null) {
            return analyseAdCommon;
        }
        AnalyseAdCommon analyseAdCommon2 = this.asnp;
        if (analyseAdCommon2 != null) {
            return analyseAdCommon2;
        }
        return null;
    }

    public abstract k2.a c();

    @Override // com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public k2.a a() {
        return c();
    }
}
