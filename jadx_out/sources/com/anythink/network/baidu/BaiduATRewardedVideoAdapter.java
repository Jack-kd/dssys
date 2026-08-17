package com.anythink.network.baidu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.RewardVideoRewardInfo;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BaiduATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: k, reason: collision with root package name */
    private static final String f9386k = "BaiduATRewardedVideoAdapter";

    /* renamed from: a, reason: collision with root package name */
    RewardVideoAd f9387a;

    /* renamed from: b, reason: collision with root package name */
    private String f9388b = "";

    /* renamed from: c, reason: collision with root package name */
    private String f9389c = "";

    /* renamed from: d, reason: collision with root package name */
    private double f9390d = 0.0d;

    /* renamed from: e, reason: collision with root package name */
    boolean f9391e = false;

    /* renamed from: f, reason: collision with root package name */
    boolean f9392f = false;

    /* renamed from: g, reason: collision with root package name */
    boolean f9393g = false;

    /* renamed from: h, reason: collision with root package name */
    private Map<String, Object> f9394h;

    /* renamed from: i, reason: collision with root package name */
    private Map<String, Object> f9395i;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, Object> f9396j;

    public class a implements RewardVideoAd.RewardVideoAdListener {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdClick() {
            if (((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdClose(float f2) {
            if (((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdFailed(String str) {
            String unused = BaiduATRewardedVideoAdapter.f9386k;
            BaiduATRewardedVideoAdapter.this.notifyATLoadFail("", str, new BaiduATBiddingNotice(BaiduATRewardedVideoAdapter.this.f9387a), ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdLoaded() {
            BaiduATRewardedVideoAdapter.this.c();
            BaiduATRewardedVideoAdapter baiduATRewardedVideoAdapter = BaiduATRewardedVideoAdapter.this;
            if (baiduATRewardedVideoAdapter.f9393g) {
                baiduATRewardedVideoAdapter.f9392f = true;
            }
            BaiduATInitManager baiduATInitManager = BaiduATInitManager.getInstance();
            BaiduATRewardedVideoAdapter baiduATRewardedVideoAdapter2 = BaiduATRewardedVideoAdapter.this;
            baiduATInitManager.a(baiduATRewardedVideoAdapter2.f9391e, baiduATRewardedVideoAdapter2.f9387a, ((ATBaseAdInternalAdapter) baiduATRewardedVideoAdapter2).mLoadListener, BaiduATRewardedVideoAdapter.this.mBiddingListener);
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdShow() {
            if (((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdSkip(float f2) {
            ((ATBaseAdInternalAdapter) BaiduATRewardedVideoAdapter.this).mDismissType = 2;
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener
        public void onRewardVerify(boolean z2, Map<String, Object> map) {
            BaiduATRewardedVideoAdapter.this.d();
            String unused = BaiduATRewardedVideoAdapter.f9386k;
            Objects.toString(map);
            if (map != null) {
                if (BaiduATRewardedVideoAdapter.this.f9394h == null) {
                    BaiduATRewardedVideoAdapter.this.f9394h = new HashMap();
                }
                BaiduATRewardedVideoAdapter.this.f9394h.put(ATAdConst.REWARD_EXTRA.REWARD_INFO, map);
            }
            if (((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener != null) {
                if (z2) {
                    ((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener.onReward();
                } else {
                    ((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener.onRewardFailed();
                }
            }
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onVideoDownloadFailed() {
            BaiduATRewardedVideoAdapter.this.notifyATLoadFail("", "BaiduRewardedVideo: onVideoDownloadFailed");
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onVideoDownloadSuccess() {
            BaiduATRewardedVideoAdapter.this.b();
        }

        @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void playCompletion() {
            if (((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BaiduATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }
    }

    public class b implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9398a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9399b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9400c;

        public b(Context context, Map map, Map map2) {
            this.f9398a = context;
            this.f9399b = map;
            this.f9400c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            if (((ATBaseAdInternalAdapter) BaiduATRewardedVideoAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) BaiduATRewardedVideoAdapter.this).mLoadListener.onAdLoadError("", str);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                BaiduATRewardedVideoAdapter.this.a(this.f9398a, this.f9399b, this.f9400c);
            } catch (Throwable th) {
                th.printStackTrace();
                if (((ATBaseAdInternalAdapter) BaiduATRewardedVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BaiduATRewardedVideoAdapter.this).mLoadListener.onAdLoadError("", "Baidu: init error, " + th.getMessage());
                }
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BaiduATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f9387a = null;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(4, BaiduATSplashAdapter.class);
        map.put(3, BaiduATInterstitialAdapter.class);
        map.put(0, BaiduATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9394h;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BaiduATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9388b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BaiduATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        RewardVideoAd rewardVideoAd = this.f9387a;
        if (rewardVideoAd == null) {
            return false;
        }
        if (this.f9393g && this.f9392f) {
            return true;
        }
        return rewardVideoAd.isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map);
        if (TextUtils.isEmpty(this.f9389c) || TextUtils.isEmpty(this.f9388b)) {
            notifyATLoadFail("", " app_id ,ad_place_id is empty.");
        } else {
            Context applicationContext = context.getApplicationContext();
            BaiduATInitManager.getInstance().initSDK(applicationContext, map, new b(applicationContext, map, map2));
        }
    }

    public void setDismissType(int i2) {
        this.mDismissType = i2;
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        this.f9392f = false;
        try {
            Map<String, Object> map = this.f9395i;
            if (map != null) {
                Object obj = map.get(BaiduATConst.BD_REWARD_INFO);
                Objects.toString(obj);
                if (obj instanceof RewardVideoRewardInfo) {
                    this.f9387a.setRewardInfo((RewardVideoRewardInfo) obj);
                }
            }
            this.f9387a.show(activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9391e = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        double d2;
        d();
        if (!this.f9391e) {
            ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
                return;
            }
            return;
        }
        if (this.mBiddingListener != null) {
            RewardVideoAd rewardVideoAd = this.f9387a;
            if (rewardVideoAd == null) {
                notifyATLoadFail("", "Baidu: RewardVideoAd had been destroyed.");
                return;
            }
            String pecpm = rewardVideoAd.getPECPM();
            if (this.f9394h == null) {
                this.f9394h = new HashMap();
            }
            this.f9394h.put(BaiduATConst.EN_P_KEY, pecpm);
            String eCPMLevel = this.f9387a.getECPMLevel();
            if (TextUtils.isEmpty(eCPMLevel)) {
                eCPMLevel = "0";
            }
            try {
                d2 = Double.parseDouble(eCPMLevel);
            } catch (Throwable th) {
                th.printStackTrace();
                d2 = 0.0d;
            }
            if (d2 <= 0.0d) {
                notifyATLoadFail("", "Price is less than or equal to 0. Price: " + d2);
                return;
            }
            ATBiddingResult aTBiddingResultSuccess = ATBiddingResult.success(d2, System.currentTimeMillis() + "", new BaiduATBiddingNotice(this.f9387a), ATAdConst.CURRENCY.RMB_CENT);
            aTBiddingResultSuccess.setExtra(pecpm);
            this.mBiddingListener.onC2SBiddingResultWithCache(aTBiddingResultSuccess, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        RewardVideoAd rewardVideoAd = this.f9387a;
        if (rewardVideoAd != null) {
            this.f9394h = BaiduATInitManager.getInstance().a(rewardVideoAd.getAdDataForKey("request_id"), this.f9394h, this.f9396j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Object adDataForKey;
        RewardVideoAd rewardVideoAd = this.f9387a;
        if (rewardVideoAd == null || (adDataForKey = rewardVideoAd.getAdDataForKey("request_id")) == null) {
            return;
        }
        if (this.f9394h == null) {
            this.f9394h = new HashMap();
        }
        this.f9394h.put("third_trans_id", adDataForKey.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9395i = map2;
        this.f9396j = map;
        this.f9387a = new RewardVideoAd(context.getApplicationContext(), this.f9388b, new a());
        if (this.f9391e && this.f9390d > 0.0d) {
            ATSDK.isNetworkLogDebug();
            this.f9387a.setBidFloor((int) this.f9390d);
        }
        if (!TextUtils.isEmpty(this.mUserId)) {
            this.f9387a.setUserId(this.mUserId);
        }
        if (!TextUtils.isEmpty(this.mUserData)) {
            if (this.mUserData.contains(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME)) {
                this.mUserData = this.mUserData.replace(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME, this.f9388b);
            }
            this.f9387a.setExtraInfo(this.mUserData);
        }
        RequestParameters.Builder builder = new RequestParameters.Builder();
        BaiduATInitManager.getInstance().a(this.f9388b, builder, map, map2);
        this.f9387a.setRequestParameters(builder.build());
        this.f9387a.setAppSid(BaiduATInitManager.getInstance().getApp_id());
        this.f9387a.load();
    }

    private void a(Map<String, Object> map) {
        this.f9389c = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9388b = ATInitMediation.getStringFromMap(map, "ad_place_id");
        this.f9390d = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        this.f9393g = ATInitMediation.getIntFromMap(map, "ad_s_reqf_mode") == 2;
    }
}
