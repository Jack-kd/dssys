package com.beizi.fusion.asnp.common.analyse2.base.model.biz;

import com.anythink.core.api.NoticeUtils;
import com.anythink.core.common.k;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AMPSExtraAdInfoLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog;
import com.beizi.fusion.k2;
import com.beizi.fusion.ng;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AMPSExtraLog extends AnalyseAdEventLog {

    @ng(key = "ad_info")
    private List<AMPSExtraAdInfoLog> adInfoList;

    @ng(key = "ad_view_request_id")
    private String adViewRequestID;

    @ng(key = "browse_time")
    private String browseTime;

    @ng(key = "s_custom_data")
    private String customData;

    @ng(key = "ecpm")
    private String ecpm;

    @ng(key = "entry_price")
    private String entryPrice;

    @ng(key = "floor_price")
    private String floorPrice;

    @ng(key = "first_order_price")
    private String fop;

    @ng(key = "is_peak")
    private String isPeak;

    @ng(key = "bid_seat_id")
    private String mBidSeatID;

    @ng(key = "bid_space_id")
    private String mBidSpaceID;

    @ng(key = k.f5366K)
    private String mBidType;

    @ng(key = "s_app_id")
    private String mChannelAppID;

    @ng(key = "s_space_id")
    private String mChannelSpaceID;

    @ng(key = "is_hit_auction")
    private String mHitAuction;

    @ng(key = "is_last_look")
    private String mLastLook;

    @ng(key = "load_type")
    private String mLoadType;

    @ng(key = NoticeUtils.LOSS_REASON)
    private String mLossReason;

    @ng(key = "minor")
    private String mMinor;

    @ng(key = "notice_price")
    private String mNoticePrice;

    @ng(key = "real_price")
    private String mRealPrice;

    @ng(key = "seat_id")
    private String mSeatID;

    @ng(key = "s_time_out")
    private String mTimeout;

    @ng(key = "peak_space_id")
    private String peakSpaceID;

    @ng(key = "request_uuid")
    private String requestUUID;

    @ng(key = "second_order_price")
    private String sop;

    public static class AMPSAnalyseAdEventLogWrapper extends AnalyseSimpleLog.AnalyseSimpleLogWrapper implements k2.a {

        @ng(key = "ad_info")
        private List<AMPSExtraAdInfoLog.AMPSExtraAdInfoLogWrapper> adInfoList;

        @ng(key = "ad_view_request_id")
        private String adViewRequestID;

        @ng(key = "browse_time")
        private String browseTime;

        @ng(key = "s_custom_data")
        private String customData;

        @ng(key = "ecpm")
        private String ecpm;

        @ng(key = "entry_price")
        private String entryPrice;

        @ng(key = "floor_price")
        private String floorPrice;

        @ng(key = "first_order_price")
        private String fop;

        @ng(key = "is_peak")
        private String isPeak;

        @ng(key = "bid_seat_id")
        private String mBidSeatID;

        @ng(key = "bid_space_id")
        private String mBidSpaceID;

        @ng(key = k.f5366K)
        private String mBidType;

        @ng(key = "s_app_id")
        private String mChannelAppID;

        @ng(key = "s_space_id")
        private String mChannelSpaceID;

        @ng(key = "is_hit_auction")
        private String mHitAuction;

        @ng(key = "is_last_look")
        private String mLastLook;

        @ng(key = "load_type")
        private String mLoadType;

        @ng(key = NoticeUtils.LOSS_REASON)
        private String mLossReason;

        @ng(key = "minor")
        private String mMinor;

        @ng(key = "notice_price")
        private String mNoticePrice;

        @ng(key = "real_price")
        private String mRealPrice;

        @ng(key = "seat_id")
        private String mSeatID;

        @ng(key = "s_time_out")
        private String mTimeout;

        @ng(key = "peak_space_id")
        private String peakSpaceID;

        @ng(key = "request_uuid")
        private String requestUUID;

        @ng(key = "second_order_price")
        private String sop;

        public AMPSAnalyseAdEventLogWrapper(AMPSExtraLog aMPSExtraLog) {
            super(aMPSExtraLog);
            this.mChannelAppID = aMPSExtraLog.mChannelAppID;
            this.mChannelSpaceID = aMPSExtraLog.mChannelSpaceID;
            this.mSeatID = aMPSExtraLog.mSeatID;
            this.mTimeout = aMPSExtraLog.mTimeout;
            this.mBidType = aMPSExtraLog.mBidType;
            this.mLoadType = aMPSExtraLog.mLoadType;
            this.mHitAuction = aMPSExtraLog.mHitAuction;
            this.mLastLook = aMPSExtraLog.mLastLook;
            this.mNoticePrice = aMPSExtraLog.mNoticePrice;
            this.mLossReason = aMPSExtraLog.mLossReason;
            this.mRealPrice = aMPSExtraLog.mRealPrice;
            this.mBidSeatID = aMPSExtraLog.mBidSeatID;
            this.mBidSpaceID = aMPSExtraLog.mBidSpaceID;
            this.mMinor = aMPSExtraLog.mMinor;
            this.ecpm = aMPSExtraLog.ecpm;
            this.fop = aMPSExtraLog.fop;
            this.sop = aMPSExtraLog.sop;
            this.floorPrice = aMPSExtraLog.floorPrice;
            this.customData = aMPSExtraLog.customData;
            this.isPeak = aMPSExtraLog.isPeak;
            this.peakSpaceID = aMPSExtraLog.peakSpaceID;
            this.browseTime = aMPSExtraLog.browseTime;
            this.entryPrice = aMPSExtraLog.entryPrice;
            this.requestUUID = aMPSExtraLog.requestUUID;
            this.adViewRequestID = aMPSExtraLog.adViewRequestID;
            if (aMPSExtraLog.adInfoList != null) {
                ArrayList arrayList = new ArrayList();
                Iterator it = aMPSExtraLog.adInfoList.iterator();
                while (it.hasNext()) {
                    arrayList.add(((AMPSExtraAdInfoLog) it.next()).a());
                }
                this.adInfoList = arrayList;
            }
        }
    }

    public AMPSExtraLog(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseAdEventLog
    public k2.a c() {
        return new AMPSAnalyseAdEventLogWrapper(this);
    }
}
