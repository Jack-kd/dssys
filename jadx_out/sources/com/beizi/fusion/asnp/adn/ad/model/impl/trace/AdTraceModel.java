package com.beizi.fusion.asnp.adn.ad.model.impl.trace;

import android.net.Uri;
import com.beizi.fusion.AbstractC1147s;
import com.beizi.fusion.C1150v;
import com.beizi.fusion.EnumC1130d;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid.BiddingModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.creative.CreativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.CSensorModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.TSensorModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.da;
import com.beizi.fusion.g3;
import com.beizi.fusion.lf;
import com.beizi.fusion.n1;
import com.beizi.fusion.qn;
import com.beizi.fusion.vb;
import com.beizi.fusion.ze;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class AdTraceModel implements vb {
    private boolean byCacheAd;
    private CSensorModel cSensorModel;
    private boolean callbackExposure;
    private boolean callbackShown;
    private String dspID;
    private final EnumC1130d mAdType;
    private String mBidResult;
    private String mCacheSession;
    private int mClickMonitorDelay;
    private String mComplain;
    private String mCreateID;
    private String mCurrency;
    private n1 mError;
    private String mInteractiveID;
    private int mInteractiveType;
    private String mMaterialID;
    private final long mMaxTimeout;
    private String mOrderID;
    private long mRecordExposureTime;
    private long mRecordShownTime;
    private final int mRequestCount;
    private long mRequestStartTs;
    private String mRequestTracSerialID;
    private String mSchemeID;
    private final String mSpaceID;
    private String mStrategyMD5;
    private String mWinPrice;
    private double price;
    private lf recorder;
    private List<ze> sensorRecorderList;
    private Map<String, Object> switch4VInfo;
    private TSensorModel tSensorModel;
    private long videoDuration;
    private String videoExtCustomData;
    private String videoExtUserID;

    public AdTraceModel(da daVar) {
        this.mRequestStartTs = -1L;
        this.mRecordShownTime = 0L;
        this.mRecordExposureTime = 0L;
        this.callbackExposure = false;
        this.callbackShown = false;
        this.mInteractiveType = -1;
        this.sensorRecorderList = new ArrayList();
        this.switch4VInfo = new HashMap();
        this.mAdType = daVar.b();
        this.mSpaceID = daVar.g();
        this.mRequestCount = daVar.a();
        this.mMaxTimeout = daVar.h();
        this.mRequestTracSerialID = qn.a();
        Map mapC = daVar.c();
        if (mapC != null) {
            this.videoExtUserID = AbstractC1147s.a(mapC, "rwUserId");
            this.videoExtCustomData = Uri.encode(g3.c(AbstractC1147s.a(mapC, "rwCustomData")));
        }
    }

    public static /* synthetic */ int a(ze zeVar, ze zeVar2) {
        long jB = zeVar.b();
        long jB2 = zeVar2.b();
        if (jB == 0 && jB2 == 0) {
            return 0;
        }
        if (jB == 0) {
            return 1;
        }
        if (jB2 == 0) {
            return -1;
        }
        return Long.compare(jB, jB2);
    }

    private void parseBidInfo(AdItemModel adItemModel) {
        if (adItemModel != null) {
            BiddingModel3 biddingModel = adItemModel.getBiddingModel();
            if (biddingModel != null) {
                this.price = biddingModel.getPrice();
            }
            this.dspID = adItemModel.getDspId();
            this.mCacheSession = adItemModel.getReqId();
            this.mOrderID = adItemModel.getOrderId();
            CreativeModel creativeModel = adItemModel.getCreativeModel();
            if (creativeModel != null) {
                this.mCreateID = creativeModel.getCreativeId();
                this.mMaterialID = creativeModel.getMaterialID();
            }
            NativeModel nativeModel = adItemModel.getNativeModel();
            if (nativeModel != null) {
                this.mSchemeID = nativeModel.getRenderId();
                this.mInteractiveID = nativeModel.getInteractionId();
            }
        }
    }

    public synchronized void addSensorRecorder(ze zeVar) {
        this.sensorRecorderList.add(zeVar);
    }

    public void bindBidModelInfo(AdItemModel adItemModel) {
        parseBidInfo(adItemModel);
    }

    public void bindInitConfigInfo(C1150v c1150v) {
        String string;
        List<String> listI = c1150v.i();
        if (listI != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            for (String str : listI) {
                sb.append("\"");
                sb.append(str);
                sb.append("\"");
                sb.append(",");
            }
            sb.replace(sb.length() - 1, sb.length(), "]");
            string = sb.toString();
        } else {
            string = "[\"CNY\"]";
        }
        this.mCurrency = string;
    }

    public EnumC1130d getAdType() {
        return this.mAdType;
    }

    public String getBidResult() {
        return this.mBidResult;
    }

    public int getByCacheAd() {
        return this.byCacheAd ? 1 : 0;
    }

    public CSensorModel getCSensorModel() {
        return this.cSensorModel;
    }

    public String getCacheRequestTraceSessionID() {
        return this.mCacheSession;
    }

    public int getClickMonitorDelay() {
        return this.mClickMonitorDelay;
    }

    public String getComplain() {
        return this.mComplain;
    }

    public String getCreateID() {
        return this.mCreateID;
    }

    public String getCurrency() {
        return this.mCurrency;
    }

    public long getCurrentTripTime() {
        if (this.mRequestStartTs != -1) {
            return System.currentTimeMillis() - this.mRequestStartTs;
        }
        return -1L;
    }

    public String getDspID() {
        return this.dspID;
    }

    public int getErrorCode() {
        n1 n1Var = this.mError;
        if (n1Var != null) {
            return n1Var.b();
        }
        return -1;
    }

    public String getErrorMessage() {
        n1 n1Var = this.mError;
        return n1Var != null ? n1Var.c() : "";
    }

    public long getExposureTimestamp() {
        return this.mRecordExposureTime;
    }

    public String getInteractionID() {
        return this.mInteractiveID;
    }

    public int getInteractiveType() {
        return this.mInteractiveType;
    }

    public String getMaterialID() {
        return this.mMaterialID;
    }

    public long getMaxTimeout() {
        return this.mMaxTimeout;
    }

    public String getOrderID() {
        return this.mOrderID;
    }

    public double getPrice() {
        return this.price;
    }

    public int getRequestCount() {
        return this.mRequestCount;
    }

    public String getRequestTracSessionID() {
        return this.mRequestTracSerialID;
    }

    public String getSchemeID() {
        return this.mSchemeID;
    }

    public synchronized ze.c getSensorRecord() {
        List<ze> list = this.sensorRecorderList;
        if (list != null && !list.isEmpty()) {
            Collections.sort(this.sensorRecorderList, new Comparator() { // from class: w.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return AdTraceModel.a((ze) obj, (ze) obj2);
                }
            });
            ze zeVar = this.sensorRecorderList.get(0);
            if (zeVar != null) {
                return zeVar.a();
            }
        }
        return null;
    }

    public long getShownTimestamp() {
        return this.mRecordShownTime;
    }

    public String getSpaceID() {
        return this.mSpaceID;
    }

    public String getStrategyMD5() {
        return this.mStrategyMD5;
    }

    public Map<String, Object> getSwitch4VInfo() {
        return this.switch4VInfo;
    }

    public TSensorModel getTSensorModel() {
        return this.tSensorModel;
    }

    public long getVideoDuration() {
        return this.videoDuration;
    }

    public String getVideoExtCustomData() {
        return this.videoExtCustomData;
    }

    public String getVideoExtUserID() {
        return this.videoExtUserID;
    }

    public lf.b getViewRecorder() {
        lf lfVar = this.recorder;
        if (lfVar != null) {
            return lfVar.a();
        }
        return null;
    }

    public String getWinPrice() {
        return this.mWinPrice;
    }

    public boolean isCallbackExposure() {
        return this.callbackExposure;
    }

    public boolean isCallbackShown() {
        return this.callbackShown;
    }

    public void recordExposureTimestamp() {
        if (this.mRecordExposureTime == 0) {
            this.mRecordExposureTime = System.currentTimeMillis();
        }
    }

    public void recordShownTimestamp() {
        if (this.mRecordShownTime == 0) {
            this.mRecordShownTime = System.currentTimeMillis();
        }
    }

    public void setBidResult(String str) {
        this.mBidResult = str;
    }

    public void setByCacheAd(boolean z2) {
        this.byCacheAd = z2;
    }

    public void setCSensorModel(CSensorModel cSensorModel) {
        this.cSensorModel = cSensorModel;
    }

    public void setCallbackExposure() {
        this.callbackExposure = true;
    }

    public void setCallbackShown() {
        this.callbackShown = true;
    }

    public void setClickDelay(int i2) {
        this.mClickMonitorDelay = i2;
    }

    public void setComplain(String str) {
        this.mComplain = str;
    }

    public void setInteractiveType(int i2) {
        this.mInteractiveType = i2;
    }

    public void setRecorder(lf lfVar) {
        this.recorder = lfVar;
    }

    public void setRequestFailInfo(n1 n1Var) {
        this.mError = n1Var;
    }

    public void setRequestStartTs(long j2) {
        this.mRequestStartTs = j2;
    }

    public void setStrategyMD5(String str) {
        this.mStrategyMD5 = str;
    }

    public void setSwitch4VInfo(int i2) {
        this.switch4VInfo.put("rollback4v", Integer.valueOf(i2));
    }

    public void setTSensorModel(TSensorModel tSensorModel) {
        this.tSensorModel = tSensorModel;
    }

    public void setVideoDuration(long j2) {
        this.videoDuration = j2;
    }

    public void setWinPrice(String str) {
        this.mWinPrice = str;
    }

    public void updateS2SRequestSerialID(String str) {
        this.mRequestTracSerialID = str;
    }

    /* renamed from: deepCopy, reason: merged with bridge method [inline-methods] */
    public AdTraceModel m42deepCopy() {
        return new AdTraceModel(this);
    }

    private AdTraceModel(AdTraceModel adTraceModel) {
        this.mRequestStartTs = -1L;
        this.mRecordShownTime = 0L;
        this.mRecordExposureTime = 0L;
        this.callbackExposure = false;
        this.callbackShown = false;
        this.mInteractiveType = -1;
        this.sensorRecorderList = new ArrayList();
        this.switch4VInfo = new HashMap();
        this.mAdType = adTraceModel.mAdType;
        this.mMaxTimeout = adTraceModel.mMaxTimeout;
        this.mRequestCount = adTraceModel.mRequestCount;
        this.mSpaceID = adTraceModel.mSpaceID;
        this.mRequestStartTs = adTraceModel.mRequestStartTs;
        this.mRequestTracSerialID = adTraceModel.mRequestTracSerialID;
        this.mRecordShownTime = adTraceModel.mRecordShownTime;
        this.mRecordExposureTime = adTraceModel.mRecordExposureTime;
        this.callbackExposure = adTraceModel.callbackExposure;
        this.callbackShown = adTraceModel.callbackShown;
        this.mMaterialID = adTraceModel.mMaterialID;
        this.mCurrency = adTraceModel.mCurrency;
        this.mComplain = adTraceModel.mComplain;
        this.mCreateID = adTraceModel.mCreateID;
        this.mOrderID = adTraceModel.mOrderID;
        this.mError = adTraceModel.mError;
        this.price = adTraceModel.price;
        this.dspID = adTraceModel.dspID;
        this.mInteractiveType = adTraceModel.mInteractiveType;
        this.mSchemeID = adTraceModel.mSchemeID;
        this.mWinPrice = adTraceModel.mWinPrice;
        this.mBidResult = adTraceModel.mBidResult;
        this.recorder = adTraceModel.recorder;
        this.sensorRecorderList = adTraceModel.sensorRecorderList;
        this.mClickMonitorDelay = adTraceModel.mClickMonitorDelay;
        this.mCacheSession = adTraceModel.mCacheSession;
        this.mStrategyMD5 = adTraceModel.mStrategyMD5;
        this.mInteractiveID = adTraceModel.mInteractiveID;
        this.tSensorModel = adTraceModel.tSensorModel;
        this.cSensorModel = adTraceModel.cSensorModel;
        this.videoExtCustomData = adTraceModel.videoExtCustomData;
        this.videoExtUserID = adTraceModel.videoExtUserID;
        this.byCacheAd = adTraceModel.byCacheAd;
        this.videoDuration = adTraceModel.videoDuration;
        this.switch4VInfo = adTraceModel.switch4VInfo;
    }
}
