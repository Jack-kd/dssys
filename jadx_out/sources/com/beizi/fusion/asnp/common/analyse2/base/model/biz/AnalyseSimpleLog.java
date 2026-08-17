package com.beizi.fusion.asnp.common.analyse2.base.model.biz;

import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ib;
import com.beizi.fusion.k2;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseSimpleLog extends AnalyseBasicReceiveLog {

    @ng(key = "error_code")
    private String error_code;

    @ng(key = "error_info")
    private String error_info;

    @ng(key = "beta_hits")
    private List<String> mBetaHits;

    @ng(key = "cost_time")
    private String mCostTime;

    @ng(key = "event_code")
    private String mEventCode;

    @ng(key = "event_id")
    private String mEventID;

    @ng(key = "event_time")
    private String mEventTime;

    @ng(key = "sample")
    private String mSample;

    public static class AnalyseSimpleLogWrapper extends ib implements k2.c {

        @ng(key = "error_code")
        private String error_code;

        @ng(key = "error_info")
        private String error_info;

        @ng(key = "beta_hits")
        private List<String> mBetaHits;

        @ng(key = "cost_time")
        private String mCostTime;

        @ng(key = "event_code")
        private String mEventCode;

        @ng(key = "event_id")
        private String mEventID;

        @ng(key = "event_time")
        private String mEventTime;

        @ng(key = "sample")
        private String mSample;

        public AnalyseSimpleLogWrapper(AnalyseSimpleLog analyseSimpleLog) {
            this.mEventID = analyseSimpleLog.mEventID;
            this.mEventCode = analyseSimpleLog.mEventCode;
            this.mEventTime = analyseSimpleLog.mEventTime;
            this.mCostTime = analyseSimpleLog.mCostTime;
            this.error_code = analyseSimpleLog.error_code;
            this.error_info = analyseSimpleLog.error_info;
            this.mSample = analyseSimpleLog.mSample;
            this.mBetaHits = analyseSimpleLog.mBetaHits;
        }
    }

    public AnalyseSimpleLog(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getEventCode() {
        return this.mEventCode;
    }

    public void a(String str) {
        this.mSample = str;
    }

    public k2.c a() {
        return new AnalyseSimpleLogWrapper(this);
    }
}
