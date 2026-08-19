package com.anythink.network.sigmob;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.network.sigmob.SigmobATConst;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.rewardVideo.WindRewardAdRequest;
import com.sigmob.windad.rewardVideo.WindRewardInfo;
import com.sigmob.windad.rewardVideo.WindRewardVideoAd;
import com.sigmob.windad.rewardVideo.WindRewardVideoAdListener;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SigmobATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: h, reason: collision with root package name */
    private static final String f10222h = "SigmobATRewardedVideoAdapter";

    /* renamed from: a, reason: collision with root package name */
    private WindRewardAdRequest f10223a;

    /* renamed from: b, reason: collision with root package name */
    private String f10224b = "";

    /* renamed from: c, reason: collision with root package name */
    private String f10225c;

    /* renamed from: d, reason: collision with root package name */
    private double f10226d;

    /* renamed from: e, reason: collision with root package name */
    private WindRewardVideoAd f10227e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f10228f;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, Object> f10229g;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10230a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10231b;

        /* renamed from: com.anythink.network.sigmob.SigmobATRewardedVideoAdapter$a$a, reason: collision with other inner class name */
        public class C0113a implements MediationInitCallback {
            public C0113a() {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                SigmobATRewardedVideoAdapter.this.a("", str);
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                SigmobATRewardedVideoAdapter.this.a();
            }
        }

        public a(Context context, Map map) {
            this.f10230a = context;
            this.f10231b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SigmobATInitManager.getInstance().initSDK(this.f10230a, this.f10231b, new C0113a());
            } catch (Throwable th) {
                SigmobATRewardedVideoAdapter.this.a("", th.getMessage());
            }
        }
    }

    public class b implements WindRewardVideoAdListener {
        public b() {
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdClicked(String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdClosed(String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdLoadError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || windAdError == null) {
                return;
            }
            SigmobATRewardedVideoAdapter.this.a(String.valueOf(windAdError.getErrorCode()), windAdError.toString());
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdLoadSuccess(String str) {
            if (TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b)) {
                if (!SigmobATRewardedVideoAdapter.this.f10228f || SigmobATRewardedVideoAdapter.this.f10227e == null) {
                    if (((ATBaseAdInternalAdapter) SigmobATRewardedVideoAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) SigmobATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    }
                } else {
                    String ecpm = SigmobATRewardedVideoAdapter.this.f10227e.getEcpm();
                    String currency = SigmobATRewardedVideoAdapter.this.f10227e.getCurrency();
                    String str2 = SigmobATRewardedVideoAdapter.this.f10224b;
                    SigmobATRewardedVideoAdapter sigmobATRewardedVideoAdapter = SigmobATRewardedVideoAdapter.this;
                    SigmobATInitManager.onC2SBiddingResultWithCache(ecpm, currency, str2, sigmobATRewardedVideoAdapter.mBiddingListener, sigmobATRewardedVideoAdapter.f10227e, null);
                }
            }
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdPlayEnd(String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdPlayError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed("" + windAdError.getErrorCode(), windAdError.toString());
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdPlayStart(String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdPreLoadFail(String str) {
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdPreLoadSuccess(String str) {
            if (TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b)) {
                if (!SigmobATRewardedVideoAdapter.this.f10228f || SigmobATRewardedVideoAdapter.this.f10227e == null) {
                    if (((ATBaseAdInternalAdapter) SigmobATRewardedVideoAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) SigmobATRewardedVideoAdapter.this).mLoadListener.onAdDataLoaded();
                    }
                } else {
                    String ecpm = SigmobATRewardedVideoAdapter.this.f10227e.getEcpm();
                    String currency = SigmobATRewardedVideoAdapter.this.f10227e.getCurrency();
                    String str2 = SigmobATRewardedVideoAdapter.this.f10224b;
                    SigmobATRewardedVideoAdapter sigmobATRewardedVideoAdapter = SigmobATRewardedVideoAdapter.this;
                    SigmobATInitManager.onC2SBiddingResultWithData(ecpm, currency, str2, sigmobATRewardedVideoAdapter.mBiddingListener, sigmobATRewardedVideoAdapter.f10227e, null);
                }
            }
        }

        @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
        public void onRewardAdRewarded(WindRewardInfo windRewardInfo, String str) {
            if (!TextUtils.equals(str, SigmobATRewardedVideoAdapter.this.f10224b) || ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener == null) {
                return;
            }
            if (windRewardInfo != null) {
                try {
                    if (SigmobATRewardedVideoAdapter.this.f10229g == null) {
                        SigmobATRewardedVideoAdapter.this.f10229g = new HashMap();
                    }
                    HashMap map = new HashMap();
                    map.put(SigmobATConst.REWARD_EXTRA.REWARD_EXTRA_KEY_REWARD_OPTIONS, windRewardInfo.getOptions());
                    SigmobATRewardedVideoAdapter.this.f10229g.put(ATAdConst.REWARD_EXTRA.REWARD_INFO, map);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            ((CustomRewardVideoAdapter) SigmobATRewardedVideoAdapter.this).mImpressionListener.onReward();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return SigmobATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        WindRewardVideoAd windRewardVideoAd = this.f10227e;
        if (windRewardVideoAd != null) {
            windRewardVideoAd.destroy();
            this.f10227e = null;
        }
        this.f10223a = null;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) throws SecurityException {
        this.f10224b = ATInitMediation.getStringFromMap(map, "placement_id");
        SigmobATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, SigmobATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f10229g;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return SigmobATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10224b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return SigmobATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WindRewardVideoAd windRewardVideoAd = this.f10227e;
        if (windRewardVideoAd != null) {
            return windRewardVideoAd.isReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
        this.f10224b = ATInitMediation.getStringFromMap(map, "placement_id");
        this.f10225c = ATInitMediation.getStringFromMap(map, "payload");
        this.f10226d = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2) || TextUtils.isEmpty(this.f10224b)) {
            a("", "app_id、app_key、placement_id could not be null.");
        } else {
            postOnMainThread(new a(context, map));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        if (this.f10227e == null || activity == null) {
            return;
        }
        try {
            if (isAdReady()) {
                if (this.f10228f) {
                    WindRewardVideoAd windRewardVideoAd = this.f10227e;
                    windRewardVideoAd.setBidEcpm(SigmobATInitManager.getEcpmInt(windRewardVideoAd));
                }
                this.f10227e.show(new HashMap<>(1));
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10228f = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        HashMap map;
        WindRewardVideoAd windRewardVideoAd;
        SigmobATInitManager.getInstance().setShakeStatus();
        if (TextUtils.isEmpty(this.mUserData)) {
            map = null;
        } else {
            map = new HashMap(2);
            if (!TextUtils.isEmpty(this.mUserData) && this.mUserData.contains(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME)) {
                this.mUserData = this.mUserData.replace(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME, this.f10224b);
            }
            map.put(ATAdConst.KEY.USER_CUSTOM_DATA, this.mUserData);
        }
        this.f10223a = new WindRewardAdRequest(this.f10224b, this.mUserId, map);
        WindRewardVideoAd windRewardVideoAd2 = new WindRewardVideoAd(this.f10223a);
        this.f10227e = windRewardVideoAd2;
        windRewardVideoAd2.setWindRewardVideoAdListener(new b());
        if (this.f10228f && (windRewardVideoAd = this.f10227e) != null) {
            windRewardVideoAd.setCurrency("USD");
            double d2 = this.f10226d;
            if (d2 > 0.0d) {
                this.f10227e.setBidFloor(((int) d2) * 100);
            }
            this.f10227e.loadAd();
            return;
        }
        if (!TextUtils.isEmpty(this.f10225c)) {
            this.f10227e.loadAd(this.f10225c);
        } else {
            this.f10227e.loadAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        SigmobATInitManager.onAdLoadError(str, str2, this.f10228f, this.mBiddingListener, this.mLoadListener);
    }
}
