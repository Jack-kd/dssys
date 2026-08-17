package com.meishu.sdk.platform.huawei.reward;

import com.huawei.hms.ads.AdParam;
import com.huawei.hms.ads.BiddingInfo;
import com.huawei.hms.ads.BiddingParam;
import com.huawei.hms.ads.ReportUrlListener;
import com.huawei.hms.ads.reward.RewardAd;
import com.huawei.hms.ads.reward.RewardAdLoadListener;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.reward.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.huawei.HWPlatformError;
import com.sigmob.windad.WindAds;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class HWRewardVideoAdWrapper extends BasePlatformLoader<RewardVideoLoader, a> {
    private static final String TAG = "HWRewardVideoAdWrapper";
    private boolean isBidding;
    private RewardAd rewardAd;

    public HWRewardVideoAdWrapper(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
        this.isBidding = true;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((RewardVideoLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        this.rewardAd = new RewardAd(((RewardVideoLoader) this.adLoader).getContext(), this.sdkAdInfo.getPid());
        AdParam.Builder builder = new AdParam.Builder();
        if (this.isBidding) {
            try {
                builder.addBiddingParamMap(getSdkAdInfo().getPid(), new BiddingParam.Builder().setBidFloor(Float.valueOf(getSdkAdInfo().getPrice() / 100.0f)).setBidFloorCur("CNY").build());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            builder.setTMax(3000);
        }
        this.rewardAd.loadAd(builder.build(), new RewardAdLoadListener() { // from class: com.meishu.sdk.platform.huawei.reward.HWRewardVideoAdWrapper.1
            public void onRewardAdFailedToLoad(int i2) {
                new HWPlatformError("加载出错", i2, HWRewardVideoAdWrapper.this.getSdkAdInfo()).post(HWRewardVideoAdWrapper.this.loadListener);
            }

            public void onRewardedLoaded() {
                try {
                    if (HWRewardVideoAdWrapper.this.getSdkAdInfo() != null) {
                        HWRewardVideoAdWrapper.this.getSdkAdInfo().setEcpm(String.valueOf((int) (HWRewardVideoAdWrapper.this.rewardAd.getBiddingInfo().getPrice().floatValue() * 100.0f)));
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                HWRewardVideoAdWrapper hWRewardVideoAdWrapper = HWRewardVideoAdWrapper.this;
                HWRewardVideoAd hWRewardVideoAd = new HWRewardVideoAd(hWRewardVideoAdWrapper, hWRewardVideoAdWrapper.rewardAd);
                if (HWRewardVideoAdWrapper.this.getLoaderListener() != null) {
                    HWRewardVideoAdWrapper.this.getLoaderListener().onAdLoaded(hWRewardVideoAd);
                    HWRewardVideoAdWrapper.this.getLoaderListener().onAdReady(hWRewardVideoAd);
                }
            }
        });
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        BiddingInfo biddingInfo;
        try {
            RewardAd rewardAd = this.rewardAd;
            if (rewardAd == null || (biddingInfo = rewardAd.getBiddingInfo()) == null) {
                return;
            }
            if (z2) {
                HashMap map = new HashMap();
                map.put("SECOND_PRICE", Float.valueOf((u0.a((int) (biddingInfo.getPrice().floatValue() * 100.0f), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice()) * 1.0f) / 100.0f));
                map.put("AUCTION_CURRENCY", "CNY");
                this.rewardAd.sendBiddingSuccess(map, new ReportUrlListener() { // from class: com.meishu.sdk.platform.huawei.reward.HWRewardVideoAdWrapper.2
                    public void reportFailed(String str, int i3) {
                    }

                    public void reportSuccess() {
                    }
                });
                return;
            }
            HashMap map2 = new HashMap();
            map2.put(WindAds.AUCTION_PRICE, Float.valueOf((i2 * 1.0f) / 100.0f));
            map2.put("AUCTION_CURRENCY", "CNY");
            map2.put("AUCTION_LOSS", 102);
            map2.put("AUCTION_CP_ID", "100");
            this.rewardAd.sendBiddingFailed(map2, new ReportUrlListener() { // from class: com.meishu.sdk.platform.huawei.reward.HWRewardVideoAdWrapper.3
                public void reportFailed(String str, int i3) {
                }

                public void reportSuccess() {
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
