package com.meishu.sdk.platform.gdt.reward;

import android.app.Activity;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.reward.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.loader.serverbidding.S2sbResultBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class GDTRewardVideoAdWrapper extends BasePlatformLoader<RewardVideoLoader, a> {
    private static final String TAG = "GDTRewardVideoAdWrapper";
    private final RewardVideoAdListenerAdapter RewardAdapter;
    private InteractionListener apiInteractionListener;
    private RewardAdMediaListener apiRewardAdMediaListener;
    private RewardVideoAD rewardVideoAd;

    public GDTRewardVideoAdWrapper(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
        RewardVideoAdListenerAdapter rewardVideoAdListenerAdapter = new RewardVideoAdListenerAdapter(this, (a) this.loadListener);
        this.RewardAdapter = rewardVideoAdListenerAdapter;
        try {
            try {
                if (!TextUtils.isEmpty(sdkAdInfo.getS2sb())) {
                    this.rewardVideoAd = new RewardVideoAD(rewardVideoLoader.getContext(), sdkAdInfo.getPid(), rewardVideoAdListenerAdapter, !rewardVideoLoader.getVideoIsMute(), ((S2sbResultBean) new Gson().fromJson(sdkAdInfo.getS2sb(), S2sbResultBean.class)).getToken());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (this.rewardVideoAd == null) {
                this.rewardVideoAd = new RewardVideoAD(rewardVideoLoader.getContext(), sdkAdInfo.getPid(), this.RewardAdapter, !rewardVideoLoader.getVideoIsMute());
            }
            this.rewardVideoAd.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setUserId(AdSdk.adConfig().userId()).build());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
    }

    public InteractionListener getApiInteractionListener() {
        return this.apiInteractionListener;
    }

    public RewardAdMediaListener getApiRewardAdMediaListener() {
        return this.apiRewardAdMediaListener;
    }

    public RewardVideoAD getRewardVideoAd() {
        return this.rewardVideoAd;
    }

    public boolean isValid() {
        return this.rewardVideoAd.isValid();
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            a0.a(((RewardVideoLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
            this.rewardVideoAd.loadAD();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        try {
            if (this.rewardVideoAd != null) {
                if (z2) {
                    HashMap map = new HashMap();
                    map.put("expectCostPrice", Integer.valueOf(this.rewardVideoAd.getECPM()));
                    map.put("highestLossPrice", Integer.valueOf(u0.a(this.rewardVideoAd.getECPM(), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
                    this.rewardVideoAd.sendWinNotification(map);
                    return;
                }
                HashMap map2 = new HashMap();
                map2.put("winPrice", Integer.valueOf(i2));
                map2.put("lossReason", 1);
                map2.put("adnId", "2");
                this.rewardVideoAd.sendLossNotification(map2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setApiInteractionListener(InteractionListener interactionListener) {
        this.apiInteractionListener = interactionListener;
    }

    public void setApiRewardAdMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        this.apiRewardAdMediaListener = rewardAdMediaListener;
    }

    public void setEcpm() {
        RewardVideoAD rewardVideoAD = this.rewardVideoAd;
        if (rewardVideoAD != null) {
            this.sdkAdInfo.setEcpm(String.valueOf(rewardVideoAD.getECPM()));
        }
    }

    public void showAd() {
        RewardVideoAD rewardVideoAD = this.rewardVideoAd;
        if (rewardVideoAD != null) {
            rewardVideoAD.showAD();
        }
    }

    public void showAd(Activity activity) {
        RewardVideoAD rewardVideoAD = this.rewardVideoAd;
        if (rewardVideoAD != null) {
            rewardVideoAD.showAD(activity);
        }
    }
}
