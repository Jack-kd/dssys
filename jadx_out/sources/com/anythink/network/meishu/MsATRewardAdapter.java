package com.anythink.network.meishu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.meishu.sdk.core.ad.MsAdSlot;
import com.meishu.sdk.core.ad.reward.RewardAdEventListener;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.utils.AdErrorInfo;
import com.meishu.sdk.core.utils.ResultBean;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class MsATRewardAdapter extends CustomRewardVideoAdapter {
    public static final String TAG = "MsATRewardAdapter";

    /* renamed from: a, reason: collision with root package name */
    private RewardVideoLoader f9990a;

    /* renamed from: b, reason: collision with root package name */
    private RewardVideoAd f9991b;

    /* renamed from: c, reason: collision with root package name */
    private String f9992c;

    /* renamed from: d, reason: collision with root package name */
    private int f9993d = 0;

    /* renamed from: e, reason: collision with root package name */
    boolean f9994e = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9995a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9996b;

        public a(Context context, Map map) {
            this.f9995a = context;
            this.f9996b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MsATRewardAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MsATRewardAdapter.this.a(this.f9995a, (Map<String, Object>) this.f9996b);
        }
    }

    public class b implements RewardAdEventListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdError(AdErrorInfo adErrorInfo) {
            String str = MsATRewardAdapter.TAG;
            Objects.toString(adErrorInfo);
            MsATRewardAdapter.this.notifyATLoadFail(String.valueOf(adErrorInfo.getCode()), adErrorInfo.getMessage());
        }

        @Override // com.meishu.sdk.core.ad.reward.RewardAdEventListener
        public void onReward(Map<String, Object> map) {
            String str = MsATRewardAdapter.TAG;
            Objects.toString(map);
            if (((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
            if (((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener.onReward();
            }
        }

        @Override // com.meishu.sdk.core.ad.reward.RewardAdEventListener
        public void onVideoCached(RewardVideoAd rewardVideoAd) {
            String str = MsATRewardAdapter.TAG;
            Objects.toString(rewardVideoAd);
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdReady(RewardVideoAd rewardVideoAd) {
            ResultBean data;
            String str = MsATRewardAdapter.TAG;
            Objects.toString(rewardVideoAd);
            if (rewardVideoAd == null) {
                MsATRewardAdapter.this.notifyATLoadFail("", "ms: onAdReady rewardVideoAd is empty");
                return;
            }
            MsATRewardAdapter.this.f9991b = rewardVideoAd;
            MsATRewardAdapter msATRewardAdapter = MsATRewardAdapter.this;
            if (!msATRewardAdapter.f9994e) {
                if (((ATBaseAdInternalAdapter) msATRewardAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MsATRewardAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (msATRewardAdapter.mBiddingListener != null) {
                try {
                    data = msATRewardAdapter.f9991b.getData();
                } catch (Exception unused) {
                }
                double d2 = data != null ? Double.parseDouble(data.getEcpm()) : 0.0d;
                if (d2 <= 0.0d) {
                    MsATRewardAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                MsATBiddingNotice msATBiddingNotice = new MsATBiddingNotice(MsATRewardAdapter.this.f9991b);
                MsATRewardAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", msATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    public class c implements InteractionListener {
        public c() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String str = MsATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String str = MsATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String str = MsATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) MsATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return MsATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        RewardVideoLoader rewardVideoLoader = this.f9990a;
        if (rewardVideoLoader != null) {
            rewardVideoLoader.destroy();
            this.f9990a = null;
        }
        RewardVideoAd rewardVideoAd = this.f9991b;
        if (rewardVideoAd != null) {
            rewardVideoAd.setInteractionListener(null);
            this.f9991b.destroy();
            this.f9991b = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(4, MsATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return MsATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9992c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return MsATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        RewardVideoAd rewardVideoAd = this.f9991b;
        return rewardVideoAd != null && rewardVideoAd.isAdValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9992c = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9993d = ATInitMediation.getIntFromMap(map, "video_muted", 0);
        Boolean bool = ATSDKGlobalSetting.isGlobalMute;
        if (bool != null) {
            this.f9993d = bool.booleanValue() ? 1 : 0;
        }
        if (TextUtils.isEmpty(this.f9992c) || context == null) {
            notifyATLoadFail("", "ms: unit_id or context is empty");
        } else if (!this.f9994e) {
            notifyATLoadFail("", "ms request must be bidding");
        } else {
            Context applicationContext = context.getApplicationContext();
            MsATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f9991b);
            RewardVideoAd rewardVideoAd = this.f9991b;
            if (rewardVideoAd != null && rewardVideoAd.isAdValid()) {
                this.f9991b.setInteractionListener(new c());
                this.f9991b.showAd(activity);
            } else {
                CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
                if (customRewardedVideoEventListener != null) {
                    customRewardedVideoEventListener.onRewardedVideoAdPlayFailed("", "rewardedAd is null or is not ready");
                }
            }
        } catch (Throwable th) {
            CustomRewardedVideoEventListener customRewardedVideoEventListener2 = this.mImpressionListener;
            if (customRewardedVideoEventListener2 != null) {
                customRewardedVideoEventListener2.onRewardedVideoAdPlayFailed("", "rewardedAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9994e = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            MsAdSlot.Builder channel = new MsAdSlot.Builder().setPid(this.f9992c).setChannel(MsATInitManager.CHANNEL);
            boolean z2 = true;
            if (this.f9993d != 1) {
                z2 = false;
            }
            RewardVideoLoader rewardVideoLoader = new RewardVideoLoader(context, channel.setVideoMute(z2).build(), new b());
            this.f9990a = rewardVideoLoader;
            rewardVideoLoader.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "ms startLoadAd exception:" + th.getMessage());
        }
    }
}
