package com.octopus.ad.topon;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.octopus.ad.InterstitialAd;
import com.octopus.ad.InterstitialAdListener;
import com.octopus.ad.RewardItem;
import com.octopus.ad.RewardVideoAd;
import com.octopus.ad.RewardVideoAdListener;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public class OctopusATRewardVideoAdapter extends CustomRewardVideoAdapter {
    private InterstitialAd mInterstitialAd;
    private RewardVideoAd mRewardVideoAd;
    private final String TAG = getClass().getSimpleName();
    private final int TYPE_INTER = 2;
    private final int TYPE_REWARD = 3;
    private String mSlotId = "";
    private int floorPrice = 0;
    private int mType = 3;

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(Context context, Map<String, Object> map) {
        if (context == null) {
            return;
        }
        this.mRewardVideoAd = new RewardVideoAd(context, this.mSlotId, new RewardVideoAdListener() { // from class: com.octopus.ad.topon.OctopusATRewardVideoAdapter.2
            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoAdClicked() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
                }
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoAdClosed() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
                }
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoAdComplete() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
                }
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoAdFailedToLoad(int i2) {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onRewardVideoAdFailedToLoad errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATRewardVideoAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoAdLoaded() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
                OctopusATRewardVideoAdapter octopusATRewardVideoAdapter = OctopusATRewardVideoAdapter.this;
                if (octopusATRewardVideoAdapter.mBiddingListener != null) {
                    double price = octopusATRewardVideoAdapter.mRewardVideoAd.getPrice();
                    if (price < OctopusATRewardVideoAdapter.this.floorPrice) {
                        String unused2 = OctopusATRewardVideoAdapter.this.TAG;
                        int unused3 = OctopusATRewardVideoAdapter.this.floorPrice;
                        OctopusATRewardVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("floor price"), null);
                        OctopusATRewardVideoAdapter.this.mRewardVideoAd.sendLossNotice(OctopusATRewardVideoAdapter.this.floorPrice, "1002", "CSJ");
                        return;
                    }
                    OctopusATRewardVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATRewardVideoAdapter.this.mRewardVideoAd), ATAdConst.CURRENCY.RMB_CENT), null);
                }
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoAdShown() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
                }
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewardVideoCached(boolean z2) {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
            }

            @Override // com.octopus.ad.RewardVideoAdListener
            public void onRewarded(RewardItem rewardItem) {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onReward();
                }
            }
        });
        if (map != null && map.containsKey("user_id")) {
            this.mRewardVideoAd.setUserId(String.valueOf(map.get("user_id")));
        }
        if (map != null && map.containsKey(ATAdConst.KEY.USER_CUSTOM_DATA)) {
            this.mRewardVideoAd.setExtraData(String.valueOf(map.get(ATAdConst.KEY.USER_CUSTOM_DATA)));
        }
        this.mRewardVideoAd.openAdInNativeBrowser(true);
        this.mRewardVideoAd.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoadInter(Context context) {
        if (context == null) {
            return;
        }
        InterstitialAd interstitialAd = new InterstitialAd(context, this.mSlotId, new InterstitialAdListener() { // from class: com.octopus.ad.topon.OctopusATRewardVideoAdapter.3
            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdCacheLoaded(boolean z2) {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdClicked() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdClosed() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onReward();
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdFailedToLoad(int i2) {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onAdFailedToLoad errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATRewardVideoAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdLoaded() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
                OctopusATRewardVideoAdapter octopusATRewardVideoAdapter = OctopusATRewardVideoAdapter.this;
                if (octopusATRewardVideoAdapter.mBiddingListener != null) {
                    double price = octopusATRewardVideoAdapter.mInterstitialAd.getPrice();
                    if (price < OctopusATRewardVideoAdapter.this.floorPrice) {
                        String unused2 = OctopusATRewardVideoAdapter.this.TAG;
                        int unused3 = OctopusATRewardVideoAdapter.this.floorPrice;
                        OctopusATRewardVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("floor price"), null);
                        OctopusATRewardVideoAdapter.this.mInterstitialAd.sendLossNotice(OctopusATRewardVideoAdapter.this.floorPrice, "1002", "CSJ");
                        return;
                    }
                    OctopusATRewardVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATRewardVideoAdapter.this.mInterstitialAd), ATAdConst.CURRENCY.RMB_CENT), null);
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdShown() {
                String unused = OctopusATRewardVideoAdapter.this.TAG;
                if (((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) OctopusATRewardVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
                }
            }
        });
        this.mInterstitialAd = interstitialAd;
        interstitialAd.openAdInNativeBrowser(true);
        this.mInterstitialAd.loadAd();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
        if (rewardVideoAd != null) {
            rewardVideoAd.destroy();
            this.mRewardVideoAd = null;
        }
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.mInterstitialAd = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return OctopusATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.mSlotId;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return OctopusATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        InterstitialAd interstitialAd;
        int i2 = this.mType;
        if (i2 != 3) {
            return i2 == 2 && (interstitialAd = this.mInterstitialAd) != null && interstitialAd.isLoaded();
        }
        RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
        return rewardVideoAd != null && rewardVideoAd.isLoaded();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        try {
            String str = (String) map.get("floor_price");
            if (!TextUtils.isEmpty(str)) {
                this.floorPrice = Integer.parseInt(str);
            }
            String str2 = (String) map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                this.mType = Integer.parseInt(str2);
            }
        } catch (Exception unused) {
            this.floorPrice = 0;
            this.mType = 3;
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATRewardVideoAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str3) {
                    if (((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener.onAdLoadError("80000", str3);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATRewardVideoAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str3), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    if (OctopusATRewardVideoAdapter.this.mType == 3) {
                        OctopusATRewardVideoAdapter.this.startLoad(context, map2);
                    } else if (OctopusATRewardVideoAdapter.this.mType == 2) {
                        OctopusATRewardVideoAdapter.this.startLoadInter(context);
                    } else {
                        ((ATBaseAdInternalAdapter) OctopusATRewardVideoAdapter.this).mLoadListener.onAdLoadError("80000", "type not support");
                    }
                }
            });
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("80000", "SlotId is empty!");
        }
        ATBiddingListener aTBiddingListener = this.mBiddingListener;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("SlotId is empty!"), null);
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        InterstitialAd interstitialAd;
        RewardVideoAd rewardVideoAd;
        int i2 = this.mType;
        if (i2 == 3) {
            if (activity == null || (rewardVideoAd = this.mRewardVideoAd) == null || !rewardVideoAd.isLoaded()) {
                return;
            }
            this.mRewardVideoAd.show(activity);
            return;
        }
        if (i2 != 2 || activity == null || (interstitialAd = this.mInterstitialAd) == null || !interstitialAd.isLoaded()) {
            return;
        }
        this.mInterstitialAd.show(activity);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        loadCustomNetworkAd(context.getApplicationContext(), map, map2);
        return true;
    }
}
