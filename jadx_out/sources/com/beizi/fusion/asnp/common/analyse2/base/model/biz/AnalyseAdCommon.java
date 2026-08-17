package com.beizi.fusion.asnp.common.analyse2.base.model.biz;

import android.text.TextUtils;
import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ib;
import com.beizi.fusion.k2;
import com.beizi.fusion.ng;
import com.beizi.fusion.pg;
import com.beizi.fusion.qn;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseAdCommon extends AnalyseBasicReceiveLog {

    @ng(key = "cache_session_id")
    private String cacheSessionID;

    @ng(key = "ad_type")
    private String mAdType;

    @ng(key = DeepLinkPresetEvent.UMEventParamCurrency)
    private String mCurrency;

    @ng(key = "custom_data")
    private String mCustomData;

    @ng(key = "hex_id")
    private String mHex;

    @ng(key = "quantity")
    private String mQuantity;

    @ng(key = "session_id")
    private String mSessionID;

    @ng(key = "space_id")
    private String mSpaceID;

    @ng(key = "time_out")
    private String mTimeout;

    public static class AnalyseSessionCommonLogWrapper extends ib implements k2.b {

        @ng(key = "event_list")
        private List<k2.a> adEventLogs;

        @ng(key = "cache_session_id")
        private String cacheSessionID;

        @ng(key = "ad_type")
        private String mAdType;

        @ng(key = DeepLinkPresetEvent.UMEventParamCurrency)
        private String mCurrency;

        @ng(key = "custom_data")
        private String mCustomData;

        @ng(key = "hex_id")
        private String mHex;

        @ng(key = "quantity")
        private String mQuantity;

        @ng(key = "session_id")
        private String mSessionID;

        @ng(key = "space_id")
        private String mSpaceID;

        @ng(key = "time_out")
        private String mTimeout;

        @Override // com.beizi.fusion.k2.b
        public void b(List list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((AnalyseAdEventLog) it.next()).a());
            }
            this.adEventLogs = arrayList;
        }

        private AnalyseSessionCommonLogWrapper(AnalyseAdCommon analyseAdCommon) {
            JSONArray jSONArrayB;
            this.mSpaceID = analyseAdCommon.mSpaceID;
            this.mSessionID = analyseAdCommon.mSessionID;
            this.mAdType = analyseAdCommon.mAdType;
            this.mCurrency = analyseAdCommon.mCurrency;
            this.mCustomData = analyseAdCommon.mCustomData;
            this.mTimeout = analyseAdCommon.mTimeout;
            this.mQuantity = analyseAdCommon.mQuantity;
            this.cacheSessionID = analyseAdCommon.cacheSessionID;
            String str = analyseAdCommon.mHex;
            this.mHex = str;
            if (TextUtils.isEmpty(str)) {
                this.mHex = qn.a(this.mSessionID) + "";
            }
            if (TextUtils.isEmpty(this.mCurrency) || (jSONArrayB = pg.b(this.mCurrency)) == null || jSONArrayB.length() <= 0) {
                return;
            }
            this.mCurrency = pg.a(jSONArrayB, 0);
        }
    }

    public AnalyseAdCommon(JSONObject jSONObject) {
        super(jSONObject);
    }

    public k2.b a() {
        return new AnalyseSessionCommonLogWrapper();
    }

    public String b() {
        return this.mSessionID;
    }
}
