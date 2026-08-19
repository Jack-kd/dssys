package com.anythink.supplement.a;

import android.app.Activity;
import android.content.Context;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.api.ATInterstitial;
import com.anythink.interstitial.api.ATInterstitialListener;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import java.util.Map;

/* loaded from: classes2.dex */
public class SRewardAdapter extends CustomRewardVideoAdapter {
    private static final String TAG = "SRewardAdapter";
    ATInterstitial mInterstitialAd;
    private String slotId = "";
    private boolean isBidding = false;

    private void callLoadError(int i2, String str) {
        if (this.isBidding) {
            ATBiddingListener aTBiddingListener = this.mBiddingListener;
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                return;
            }
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(String.valueOf(i2), str);
        }
    }

    private void startLoad(final Context context) {
        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.anythink.supplement.a.SRewardAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                SRewardAdapter.this.mInterstitialAd = new ATInterstitial(context, SRewardAdapter.this.slotId);
                SRewardAdapter.this.mInterstitialAd.setAdListener(new ATInterstitialListener() { // from class: com.anythink.supplement.a.SRewardAdapter.1.1
                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdClicked(ATAdInfo aTAdInfo) {
                        if (((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener != null) {
                            ((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
                        }
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdClose(ATAdInfo aTAdInfo) {
                        if (((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener != null) {
                            ((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
                        }
                        if (((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener != null) {
                            ((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener.onReward();
                        }
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdLoadFail(AdError adError) {
                        if (((ATBaseAdInternalAdapter) SRewardAdapter.this).mLoadListener != null) {
                            ((ATBaseAdInternalAdapter) SRewardAdapter.this).mLoadListener.onAdLoadError(adError.getCode() + "", "" + adError.getFullErrorInfo());
                        }
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdLoaded() {
                        try {
                            if (!SRewardAdapter.this.isBidding) {
                                if (((ATBaseAdInternalAdapter) SRewardAdapter.this).mLoadListener != null) {
                                    ((ATBaseAdInternalAdapter) SRewardAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                                    return;
                                }
                                return;
                            }
                            SRewardAdapter sRewardAdapter = SRewardAdapter.this;
                            if (sRewardAdapter.mBiddingListener != null) {
                                double ecpm = sRewardAdapter.mInterstitialAd.checkAdStatus().getATTopAdInfo().getEcpm();
                                SRewardAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", null, ATAdConst.CURRENCY.RMB), null);
                            }
                        } catch (Throwable unused) {
                        }
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdShow(ATAdInfo aTAdInfo) {
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdVideoEnd(ATAdInfo aTAdInfo) {
                        if (((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener != null) {
                            ((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
                        }
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdVideoError(AdError adError) {
                        if (((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener != null) {
                            ((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed(adError.getCode(), adError.getFullErrorInfo());
                        }
                    }

                    @Override // com.anythink.interstitial.api.ATInterstitialListener
                    public void onInterstitialAdVideoStart(ATAdInfo aTAdInfo) {
                        if (((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener != null) {
                            ((CustomRewardVideoAdapter) SRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
                        }
                    }
                });
                SRewardAdapter.this.mInterstitialAd.load();
            }
        });
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.mInterstitialAd = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "S";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.slotId;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return "1.0.0";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        ATInterstitial aTInterstitial = this.mInterstitialAd;
        return aTInterstitial != null && aTInterstitial.isAdReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (!map.containsKey("slot_id")) {
            callLoadError(6291457, "应用id或广告位id为空，请检查聚合后台下发配置!");
        } else {
            this.slotId = (String) map.get("slot_id");
            startLoad(context);
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(final Activity activity) {
        ThreadUtils.runOnUIThreadByThreadPool(new Runnable() { // from class: com.anythink.supplement.a.SRewardAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                Activity activity2;
                ATInterstitial aTInterstitial = SRewardAdapter.this.mInterstitialAd;
                if (aTInterstitial == null || (activity2 = activity) == null) {
                    return;
                }
                aTInterstitial.show(activity2);
            }
        });
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.isBidding = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
