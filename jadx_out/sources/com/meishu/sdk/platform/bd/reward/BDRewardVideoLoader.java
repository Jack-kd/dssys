package com.meishu.sdk.platform.bd.reward;

import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.reward.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.BasePlatformLoader;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Random;

/* loaded from: classes4.dex */
public class BDRewardVideoLoader extends BasePlatformLoader<RewardVideoLoader, a> {
    private static final String TAG = "BDRewardVideoLoader";
    private RewardVideoAd mRewardVideoAd;

    public BDRewardVideoLoader(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        if (this.mRewardVideoAd != null) {
            this.mRewardVideoAd = null;
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            String pid = getSdkAdInfo().getPid();
            a0.a(((RewardVideoLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
            BDRewardVideoListener bDRewardVideoListener = new BDRewardVideoListener((a) this.loadListener, getAdLoader(), getSdkAdInfo(), this);
            RewardVideoAd rewardVideoAd = new RewardVideoAd(((RewardVideoLoader) this.adLoader).getContext(), pid, bDRewardVideoListener, false);
            this.mRewardVideoAd = rewardVideoAd;
            rewardVideoAd.setAppSid(this.sdkAdInfo.getApp_id());
            this.mRewardVideoAd.setUserId(AdSdk.adConfig().userId());
            bDRewardVideoListener.setRewardVideoAd(this.mRewardVideoAd);
            if (AdSdk.adConfig().downloadConfirm() != 2) {
                this.mRewardVideoAd.setDownloadAppConfirmPolicy(1);
            } else {
                this.mRewardVideoAd.setDownloadAppConfirmPolicy(3);
            }
            this.mRewardVideoAd.load();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        try {
            if (!z2) {
                RewardVideoAd.class.getDeclaredMethod("biddingFail", String.class).invoke(this.mRewardVideoAd, "203");
                return;
            }
            Method declaredMethod = RewardVideoAd.class.getDeclaredMethod("biddingSuccess", String.class);
            RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
            declaredMethod.invoke(rewardVideoAd, String.valueOf(u0.a(Integer.parseInt(rewardVideoAd.getECPMLevel()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
        } catch (Throwable unused) {
            int i3 = 1;
            try {
                if (z2) {
                    LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
                    linkedHashMap.put("ecpm", Integer.valueOf(u0.a(Integer.parseInt(this.mRewardVideoAd.getECPMLevel()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
                    linkedHashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    linkedHashMap.put("bid_t", 1);
                    this.mRewardVideoAd.biddingSuccess(linkedHashMap, new BiddingListener() { // from class: com.meishu.sdk.platform.bd.reward.BDRewardVideoLoader.1
                        @Override // com.baidu.mobads.sdk.api.BiddingListener
                        public void onBiddingResult(boolean z3, String str, HashMap<String, Object> map) {
                        }
                    });
                } else {
                    LinkedHashMap<String, Object> linkedHashMap2 = new LinkedHashMap<>();
                    linkedHashMap2.put("ecpm", Integer.valueOf(i2));
                    int iNextInt = new Random().nextInt(10);
                    if (iNextInt != 0) {
                        i3 = iNextInt;
                    }
                    linkedHashMap2.put(SplashAd.KEY_BIDFAIL_ADN, Integer.valueOf(i3));
                    linkedHashMap2.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    linkedHashMap2.put("bid_t", 3);
                    linkedHashMap2.put(MediationConstant.KEY_REASON, "203");
                    this.mRewardVideoAd.biddingFail(linkedHashMap2, new BiddingListener() { // from class: com.meishu.sdk.platform.bd.reward.BDRewardVideoLoader.2
                        @Override // com.baidu.mobads.sdk.api.BiddingListener
                        public void onBiddingResult(boolean z3, String str, HashMap<String, Object> map) {
                        }
                    });
                }
            } catch (Throwable unused2) {
            }
        }
    }
}
