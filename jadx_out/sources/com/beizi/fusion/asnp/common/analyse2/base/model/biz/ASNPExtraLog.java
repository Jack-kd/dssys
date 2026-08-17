package com.beizi.fusion.asnp.common.analyse2.base.model.biz;

import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog;
import com.beizi.fusion.k2;
import com.beizi.fusion.ng;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ASNPExtraLog extends AnalyseAdEventLog {

    @ng(key = "click_type")
    private String clickType;

    @ng(key = "creative_id")
    private String creativeId;

    @ng(key = "dsp_id")
    private String dspId;

    @ng(key = "ecpm")
    private String ecpm;

    @ng(key = "floor_price")
    private String floorPrice;

    @ng(key = "material_id")
    private String materialId;

    @ng(key = DeepLinkPresetEvent.UMEventParamOrderId)
    private String orderId;

    @ng(key = "scheme_id")
    private String schemeId;

    public static class ASNPAnalyseAdEventLogWrapper extends AnalyseSimpleLog.AnalyseSimpleLogWrapper implements k2.a {

        @ng(key = "click_type")
        private String clickType;

        @ng(key = "creative_id")
        private String creativeId;

        @ng(key = "dsp_id")
        private String dspId;

        @ng(key = "ecpm")
        private String ecpm;

        @ng(key = "floor_price")
        private String floorPrice;

        @ng(key = "material_id")
        private String materialId;

        @ng(key = DeepLinkPresetEvent.UMEventParamOrderId)
        private String orderId;

        @ng(key = "scheme_id")
        private String schemeId;

        public ASNPAnalyseAdEventLogWrapper(ASNPExtraLog aSNPExtraLog) {
            super(aSNPExtraLog);
            this.dspId = aSNPExtraLog.dspId;
            this.orderId = aSNPExtraLog.orderId;
            this.creativeId = aSNPExtraLog.creativeId;
            this.materialId = aSNPExtraLog.materialId;
            this.schemeId = aSNPExtraLog.schemeId;
            this.clickType = aSNPExtraLog.clickType;
            this.ecpm = aSNPExtraLog.ecpm;
            this.floorPrice = aSNPExtraLog.floorPrice;
        }
    }

    public ASNPExtraLog(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseAdEventLog
    public k2.a c() {
        return new ASNPAnalyseAdEventLogWrapper(this);
    }
}
