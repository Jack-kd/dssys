package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad;

import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid.BiddingModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.creative.CreativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.event.EventModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.notify.NotifyPropModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.RewardPropModel;
import com.beizi.fusion.ng;
import com.beizi.fusion.pg;
import com.beizi.fusion.th;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.be;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AdItemModel extends ASNPJsonResponseModel {
    public static final String DEFAULT_EVENT_TAG = "DEFAULT_EVENT";
    private static final String JSON_KEY_EVENT = "event";
    private String adnTraceTag;

    @ng(key = "bid")
    private BiddingModel3 bid;

    @ng(key = "bidId")
    private String bidId;

    @ng(key = "bindId")
    private String bindId;

    @ng(key = PointParamKey.CATEGORY)
    private String category;

    @ng(key = "childAds")
    private List<AdItemModel> childAds;

    @ng(key = "creative")
    private CreativeModel creativeModel;

    @ng(key = "cur")
    private String cur;

    @ng(key = "dspId")
    private String dspId;

    @ng(key = "event")
    private List<EventModel> eventModels;

    @ng(key = be.f48799b)
    private long exp;

    @ng(key = "native")
    private NativeModel nativeModel;

    @ng(key = "notify")
    private NotifyPropModel notify;

    @ng(key = "orderId")
    private String orderId;

    @ng(key = "parseTime")
    private long parseTime;

    @ng(key = "renderType")
    private int renderType;

    @ng(key = PointCategory.REPORT)
    private ReportModel3 report;

    @ng(key = "reqId")
    private String reqId;

    @ng(key = "rw")
    private RewardPropModel rewardPropModel;

    public static class AdItemModelWrapper extends AdItemModel {
        public AdItemModelWrapper(JSONObject jSONObject) {
            super(jSONObject);
        }

        public void recoverMonitor(List<EventModel> list) {
            ((AdItemModel) this).eventModels = list;
        }

        public void updateWrapperBasicInfo(String str, String str2) {
            ((AdItemModel) this).bindId = str;
            ((AdItemModel) this).category = str2;
        }

        public void updateWrapperNative(NativeModel nativeModel) {
            ((AdItemModel) this).nativeModel = nativeModel;
        }

        public void updateWrapperNotify(NotifyPropModel notifyPropModel) {
            ((AdItemModel) this).notify = notifyPropModel;
        }
    }

    public AdItemModel(JSONObject jSONObject) {
        super(jSONObject);
        this.parseTime = 0L;
        this.parseTime = System.currentTimeMillis();
    }

    private String generateAdnTraceTag() {
        JSONArray jSONArrayA;
        JSONObject jSONObject = this.mJsonObject;
        return (jSONObject == null || (jSONArrayA = pg.a(jSONObject, "event")) == null) ? th.a(DEFAULT_EVENT_TAG) : th.a(jSONArrayA.toString());
    }

    public String getAdnTraceTag() {
        if (TextUtils.isEmpty(this.adnTraceTag)) {
            this.adnTraceTag = generateAdnTraceTag();
        }
        return this.adnTraceTag;
    }

    public String getBidId() {
        return this.bidId;
    }

    public BiddingModel3 getBiddingModel() {
        return this.bid;
    }

    public String getBindId() {
        return this.bindId;
    }

    public String getCategory() {
        return this.category;
    }

    public List<AdItemModel> getChildAds() {
        return this.childAds;
    }

    public CreativeModel getCreativeModel() {
        return this.creativeModel;
    }

    public String getCur() {
        return this.cur;
    }

    public String getDspId() {
        return this.dspId;
    }

    public List<EventModel> getEventModels() {
        return this.eventModels;
    }

    public long getExpired() {
        return this.exp + this.parseTime;
    }

    public NativeModel getNativeModel() {
        return this.nativeModel;
    }

    public NotifyPropModel getNotifyProp() {
        return this.notify;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public int getRenderType() {
        return this.renderType;
    }

    public ReportModel3 getReport() {
        return this.report;
    }

    public String getReqId() {
        return this.reqId;
    }

    public RewardPropModel getRewardPropModel() {
        return this.rewardPropModel;
    }

    public boolean isIndependentAd() {
        NativeModel nativeModel = this.nativeModel;
        return (nativeModel == null || nativeModel.getAsset() == null || this.nativeModel.getAsset().isEmpty()) ? false : true;
    }
}
