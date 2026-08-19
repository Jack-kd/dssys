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
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.rewardvideo.api.ATRewardVideoAd;
import com.anythink.rewardvideo.api.ATRewardVideoListener;
import java.util.Map;

/* loaded from: classes2.dex */
public class SInterstitialAdapter extends CustomInterstitialAdapter {
    private static final String TAG = "SInterstitialAdapter";
    ATRewardVideoAd mRewardVideoAd;
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
        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.anythink.supplement.a.SInterstitialAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                SInterstitialAdapter sInterstitialAdapter = SInterstitialAdapter.this;
                sInterstitialAdapter.mRewardVideoAd = new ATRewardVideoAd(context, sInterstitialAdapter.slotId);
                SInterstitialAdapter.this.mRewardVideoAd.setAdListener(new ATRewardVideoListener() { // from class: com.anythink.supplement.a.SInterstitialAdapter.1.1
                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onReward(ATAdInfo aTAdInfo) {
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdClosed(ATAdInfo aTAdInfo) {
                        if (((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener != null) {
                            ((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
                        }
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdFailed(AdError adError) {
                        if (((ATBaseAdInternalAdapter) SInterstitialAdapter.this).mLoadListener != null) {
                            ((ATBaseAdInternalAdapter) SInterstitialAdapter.this).mLoadListener.onAdLoadError(adError.getCode() + "", "" + adError.getFullErrorInfo());
                        }
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdLoaded() {
                        try {
                            if (!SInterstitialAdapter.this.isBidding) {
                                if (((ATBaseAdInternalAdapter) SInterstitialAdapter.this).mLoadListener != null) {
                                    ((ATBaseAdInternalAdapter) SInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                                    return;
                                }
                                return;
                            }
                            SInterstitialAdapter sInterstitialAdapter2 = SInterstitialAdapter.this;
                            if (sInterstitialAdapter2.mBiddingListener != null) {
                                double ecpm = sInterstitialAdapter2.mRewardVideoAd.checkAdStatus().getATTopAdInfo().getEcpm();
                                SInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", null, ATAdConst.CURRENCY.RMB), null);
                            }
                        } catch (Throwable unused) {
                        }
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdPlayClicked(ATAdInfo aTAdInfo) {
                        if (((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener != null) {
                            ((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
                        }
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdPlayEnd(ATAdInfo aTAdInfo) {
                        if (((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener != null) {
                            ((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
                        }
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdPlayFailed(AdError adError, ATAdInfo aTAdInfo) {
                        if (((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener != null) {
                            ((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError(adError.getCode(), adError.getFullErrorInfo());
                        }
                    }

                    @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
                    public void onRewardedVideoAdPlayStart(ATAdInfo aTAdInfo) {
                        if (((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener != null) {
                            ((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                            ((CustomInterstitialAdapter) SInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
                        }
                    }
                });
                SInterstitialAdapter.this.mRewardVideoAd.load();
            }
        });
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.mRewardVideoAd = null;
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
        ATRewardVideoAd aTRewardVideoAd = this.mRewardVideoAd;
        return aTRewardVideoAd != null && aTRewardVideoAd.isAdReady();
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

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(final Activity activity) {
        ThreadUtils.runOnUIThreadByThreadPool(new Runnable() { // from class: com.anythink.supplement.a.SInterstitialAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                Activity activity2;
                ATRewardVideoAd aTRewardVideoAd = SInterstitialAdapter.this.mRewardVideoAd;
                if (aTRewardVideoAd == null || (activity2 = activity) == null) {
                    return;
                }
                aTRewardVideoAd.show(activity2);
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
