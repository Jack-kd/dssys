package com.anythink.network.ks;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.api.ATRewardRetryTaskManager;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsRewardVideoAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import com.kwad.sdk.api.model.KSAdInfoData;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: k, reason: collision with root package name */
    private static final String f9894k = "KSATRewardedVideoAdapter";

    /* renamed from: a, reason: collision with root package name */
    long f9895a;

    /* renamed from: b, reason: collision with root package name */
    int f9896b;

    /* renamed from: d, reason: collision with root package name */
    boolean f9898d;

    /* renamed from: e, reason: collision with root package name */
    String f9899e;

    /* renamed from: f, reason: collision with root package name */
    double f9900f;

    /* renamed from: g, reason: collision with root package name */
    KsRewardVideoAd f9901g;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, Object> f9904j;

    /* renamed from: c, reason: collision with root package name */
    boolean f9897c = false;

    /* renamed from: h, reason: collision with root package name */
    boolean f9902h = false;

    /* renamed from: i, reason: collision with root package name */
    boolean f9903i = false;

    public class a implements KsRewardVideoAd.RewardAdInteractionListener {
        public a() {
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onAdClicked() {
            if (((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onExtraRewardVerify(int i2) {
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onPageDismiss() {
            KSATRewardedVideoAdapter kSATRewardedVideoAdapter = KSATRewardedVideoAdapter.this;
            if (kSATRewardedVideoAdapter.f9903i) {
                return;
            }
            kSATRewardedVideoAdapter.f9903i = true;
            if (((CustomRewardVideoAdapter) kSATRewardedVideoAdapter).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onRewardStepVerify(int i2, int i3) {
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(Map<String, Object> map) {
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onVideoPlayEnd() {
            if (((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onVideoPlayError(int i2, int i3) {
            if (((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed(i2 + "", "");
            }
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onVideoPlayStart() {
            KSATRewardedVideoAdapter.this.c();
            try {
                KSATInitManager.getInstance().a(KSATRewardedVideoAdapter.this.getShowId(), new WeakReference(KSATRewardedVideoAdapter.this.f9901g));
            } catch (Throwable unused) {
            }
            if (((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onVideoSkipToEnd(long j2) {
            ((ATBaseAdInternalAdapter) KSATRewardedVideoAdapter.this).mDismissType = 2;
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify() {
            KSATRewardedVideoAdapter.this.c();
            if (((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) KSATRewardedVideoAdapter.this).mImpressionListener.onReward();
            }
        }
    }

    public class b implements MediationInitCallback {
        public b() {
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            KSATRewardedVideoAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            KSATRewardedVideoAdapter.this.d();
        }
    }

    public class c implements KsLoadManager.RewardVideoAdListener {
        public c() {
        }

        @Override // com.kwad.sdk.api.KsLoadManager.RewardVideoAdListener
        public void onError(int i2, String str) {
            KSATRewardedVideoAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.RewardVideoAdListener
        public void onRewardVideoAdLoad(List<KsRewardVideoAd> list) {
            double ecpm;
            KSATRewardedVideoAdapter.this.f9901g = (list == null || list.size() <= 0) ? null : list.get(0);
            KSATRewardedVideoAdapter kSATRewardedVideoAdapter = KSATRewardedVideoAdapter.this;
            if (kSATRewardedVideoAdapter.f9901g == null) {
                kSATRewardedVideoAdapter.notifyATLoadFail("", "KuaiShou: List<KsRewardVideoAd> is empty");
                return;
            }
            kSATRewardedVideoAdapter.b();
            KSATRewardedVideoAdapter.this.f9904j = KSATInitManager.getInstance().a(KSATRewardedVideoAdapter.this.f9901g.getMediaExtraInfo(), KSATRewardedVideoAdapter.this.f9904j);
            KSATRewardedVideoAdapter kSATRewardedVideoAdapter2 = KSATRewardedVideoAdapter.this;
            if (!kSATRewardedVideoAdapter2.f9902h) {
                if (((ATBaseAdInternalAdapter) kSATRewardedVideoAdapter2).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (kSATRewardedVideoAdapter2.mBiddingListener != null) {
                try {
                    ecpm = kSATRewardedVideoAdapter2.f9901g.getECPM();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ecpm = 0.0d;
                }
                if (ecpm <= 0.0d) {
                    KSATRewardedVideoAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(KSATRewardedVideoAdapter.this.f9901g);
                KSATRewardedVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.kwad.sdk.api.KsLoadManager.RewardVideoAdListener
        public void onRewardVideoResult(List<KsRewardVideoAd> list) {
            if (((ATBaseAdInternalAdapter) KSATRewardedVideoAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) KSATRewardedVideoAdapter.this).mLoadListener.onAdDataLoaded();
            }
        }
    }

    public class d implements KsRewardVideoAd.KSAdRewardRetryTaskListener {
        public d() {
        }

        @Override // com.kwad.sdk.api.KsRewardVideoAd.KSAdRewardRetryTaskListener
        public void onAdRewardRetryTaskNotify(KSAdInfoData kSAdInfoData) {
            try {
                ATRewardRetryTaskManager.getInstance().notifyATRewardRetryTask(KSATInfoReversion.convertFromKSAdInfoData(kSAdInfoData));
            } catch (Throwable unused) {
                String unused2 = KSATRewardedVideoAdapter.f9894k;
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return KSATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        KsRewardVideoAd ksRewardVideoAd = this.f9901g;
        if (ksRewardVideoAd != null) {
            ksRewardVideoAd.setRewardAdInteractionListener(null);
            this.f9901g = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9895a = ATInitMediation.getLongFromMap(map, "position_id");
        KSATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, 1);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(3, KSATInterstitialAdapter.class);
        map.put(4, KSATSplashAdapter.class);
        map.put(0, KSATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9904j;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return KSATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        try {
            return String.valueOf(this.f9895a);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return KSATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        KsRewardVideoAd ksRewardVideoAd = this.f9901g;
        return ksRewardVideoAd != null && ksRewardVideoAd.isAdEnable();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (a(map, map2)) {
            KSATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new b());
        } else {
            notifyATLoadFail("", "kuaishou app_id or position_id is empty.");
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        KsRewardVideoAd ksRewardVideoAd = this.f9901g;
        if (ksRewardVideoAd == null || activity == null) {
            return;
        }
        try {
            ksRewardVideoAd.setRewardAdInteractionListener(new a());
            KsVideoPlayConfig ksVideoPlayConfigBuild = new KsVideoPlayConfig.Builder().showLandscape(this.f9896b == 2).skipThirtySecond(this.f9897c).videoSoundEnable(this.f9898d).build();
            this.f9903i = false;
            this.f9901g.showRewardVideoAd(activity, ksVideoPlayConfigBuild);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9902h = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        KsRewardVideoAd ksRewardVideoAd = this.f9901g;
        if (ksRewardVideoAd != null) {
            try {
                ksRewardVideoAd.setRewardAdRetryTaskCallback(new d());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        KsRewardVideoAd ksRewardVideoAd = this.f9901g;
        if (ksRewardVideoAd == null || (mediaExtraInfo = ksRewardVideoAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get(KSATConst.KS_LLS_ID)) == null) {
            return;
        }
        if (this.f9904j == null) {
            this.f9904j = new HashMap();
        }
        this.f9904j.put("third_trans_id", obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        HashMap map = new HashMap();
        map.put("thirdUserId", this.mUserId);
        if (!TextUtils.isEmpty(this.mUserData) && this.mUserData.contains(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME)) {
            this.mUserData = this.mUserData.replace(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME, this.f9895a + "");
        }
        map.put("extraData", this.mUserData);
        KsScene.Builder builderRewardCallbackExtraData = new KsScene.Builder(this.f9895a).adNum(1).screenOrientation(this.f9896b == 2 ? 2 : 1).rewardCallbackExtraData(map);
        if (!TextUtils.isEmpty(this.f9899e)) {
            builderRewardCallbackExtraData.setBidResponseV2(this.f9899e);
        }
        KsAdSDK.getLoadManager().loadRewardVideoAd(builderRewardCallbackExtraData.build(), new c());
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, "position_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2)) {
            return false;
        }
        try {
            this.f9895a = Long.parseLong(stringFromMap2);
        } catch (NumberFormatException unused) {
        }
        if (map.containsKey("orientation")) {
            this.f9896b = ATInitMediation.getIntFromMap(map, "orientation");
        }
        this.f9898d = true;
        if (map.containsKey("video_muted")) {
            this.f9898d = TextUtils.equals("0", ATInitMediation.getStringFromMap(map, "video_muted"));
        }
        if (ATSDKGlobalSetting.isGlobalMute != null) {
            this.f9898d = !r1.booleanValue();
        }
        if (map2.containsKey(KSATConst.REWARDEDVIDEO_SKIP_AFTER_THIRTY_SECOND)) {
            this.f9897c = ATInitMediation.getBooleanFromMap(map2, KSATConst.REWARDEDVIDEO_SKIP_AFTER_THIRTY_SECOND);
        }
        if (map.containsKey("anythink_gsp")) {
            this.f9900f = ATInitMediation.getDoubleFromMap(map, "anythink_gsp");
        }
        if (map.containsKey("payload")) {
            this.f9899e = KSATInitManager.getInstance().getPayloadInfo(ATInitMediation.getStringFromMap(map, "payload"), this.f9900f);
        }
        return true;
    }
}
