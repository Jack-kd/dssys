package com.meishu.sdk.platform.sigmob.custom.reward;

import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.custom.reward.MsCustomRewardAdapter;
import com.meishu.sdk.platform.sigmob.custom.SigmobCustomInitManager;
import com.sigmob.windad.WindAdBiddingLossReason;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.rewardVideo.WindRewardAdRequest;
import com.sigmob.windad.rewardVideo.WindRewardInfo;
import com.sigmob.windad.rewardVideo.WindRewardVideoAd;
import com.sigmob.windad.rewardVideo.WindRewardVideoAdListener;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class SigmobCustomRewardAdapter extends MsCustomRewardAdapter {
    private SigmobCustomRewardAd sigmobCustomRewardAd;
    private WindRewardVideoAd windRewardVideoAd;

    public SigmobCustomRewardAdapter(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        WindRewardVideoAd windRewardVideoAd = new WindRewardVideoAd(new WindRewardAdRequest(str, "", null));
        this.windRewardVideoAd = windRewardVideoAd;
        this.sigmobCustomRewardAd = new SigmobCustomRewardAd(this, windRewardVideoAd);
        this.windRewardVideoAd.setWindRewardVideoAdListener(new WindRewardVideoAdListener() { // from class: com.meishu.sdk.platform.sigmob.custom.reward.SigmobCustomRewardAdapter.2
            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdClicked(String str2) {
                if (SigmobCustomRewardAdapter.this.sigmobCustomRewardAd != null) {
                    SigmobCustomRewardAdapter sigmobCustomRewardAdapter = SigmobCustomRewardAdapter.this;
                    sigmobCustomRewardAdapter.onAdClick(sigmobCustomRewardAdapter.sigmobCustomRewardAd);
                }
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdClosed(String str2) {
                if (SigmobCustomRewardAdapter.this.sigmobCustomRewardAd != null) {
                    SigmobCustomRewardAdapter sigmobCustomRewardAdapter = SigmobCustomRewardAdapter.this;
                    sigmobCustomRewardAdapter.onAdClosed(sigmobCustomRewardAdapter.sigmobCustomRewardAd);
                }
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdLoadError(WindAdError windAdError, String str2) {
                SigmobCustomRewardAdapter.this.onError(windAdError.getErrorCode(), windAdError.getMessage());
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdLoadSuccess(String str2) {
                if (SigmobCustomRewardAdapter.this.windRewardVideoAd != null) {
                    String ecpm = SigmobCustomRewardAdapter.this.windRewardVideoAd.getEcpm();
                    if (SigmobCustomRewardAdapter.this.getSdkAdInfo() != null) {
                        SigmobCustomRewardAdapter.this.getSdkAdInfo().setEcpm(ecpm);
                    }
                }
                if (SigmobCustomRewardAdapter.this.sigmobCustomRewardAd != null) {
                    SigmobCustomRewardAdapter sigmobCustomRewardAdapter = SigmobCustomRewardAdapter.this;
                    sigmobCustomRewardAdapter.onRenderSuccess(sigmobCustomRewardAdapter.sigmobCustomRewardAd);
                }
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdPlayEnd(String str2) {
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdPlayError(WindAdError windAdError, String str2) {
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdPlayStart(String str2) {
                if (SigmobCustomRewardAdapter.this.sigmobCustomRewardAd != null) {
                    SigmobCustomRewardAdapter sigmobCustomRewardAdapter = SigmobCustomRewardAdapter.this;
                    sigmobCustomRewardAdapter.onAdExposure(sigmobCustomRewardAdapter.sigmobCustomRewardAd);
                }
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdPreLoadFail(String str2) {
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdPreLoadSuccess(String str2) {
            }

            @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
            public void onRewardAdRewarded(WindRewardInfo windRewardInfo, String str2) {
                if (SigmobCustomRewardAdapter.this.sigmobCustomRewardAd != null) {
                    SigmobCustomRewardAdapter sigmobCustomRewardAdapter = SigmobCustomRewardAdapter.this;
                    sigmobCustomRewardAdapter.onReward(sigmobCustomRewardAdapter.sigmobCustomRewardAd, null);
                }
            }
        });
        this.windRewardVideoAd.loadAd();
    }

    @Override // com.meishu.sdk.platform.custom.reward.MsCustomRewardAdapter
    public void loadCustomAd(String str, String str2, final String str3, String str4) {
        SigmobCustomInitManager.getInstance().initSdk(this.context, str, str2, new SigmobCustomInitManager.InitCallback() { // from class: com.meishu.sdk.platform.sigmob.custom.reward.SigmobCustomRewardAdapter.1
            @Override // com.meishu.sdk.platform.sigmob.custom.SigmobCustomInitManager.InitCallback
            public void onError(int i2, String str5) {
            }

            @Override // com.meishu.sdk.platform.sigmob.custom.SigmobCustomInitManager.InitCallback
            public void onSuccess() {
                SigmobCustomRewardAdapter.this.loadAdWithCallback(str3);
            }
        });
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        try {
            if (this.windRewardVideoAd != null) {
                if (z2) {
                    HashMap map = new HashMap();
                    map.put(WindAds.AUCTION_PRICE, Integer.valueOf(Integer.parseInt(this.windRewardVideoAd.getEcpm())));
                    map.put(WindAds.HIGHEST_LOSS_PRICE, Integer.valueOf(u0.a(Integer.parseInt(this.windRewardVideoAd.getEcpm()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
                    map.put(WindAds.CURRENCY, "CNY");
                    this.windRewardVideoAd.sendWinNotificationWithInfo(map);
                    return;
                }
                HashMap map2 = new HashMap();
                map2.put(WindAds.AUCTION_PRICE, Integer.valueOf(i2));
                map2.put(WindAds.CURRENCY, "CNY");
                map2.put(WindAds.LOSS_REASON, Integer.valueOf(WindAdBiddingLossReason.LOSS_REASON_LOW_PRICE.getCode()));
                this.windRewardVideoAd.sendLossNotificationWithInfo(map2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
