package com.meishu.sdk.platform.oppo.reward;

import android.text.TextUtils;
import com.heytap.msp.mobad.api.ad.RewardVideoAd;
import com.heytap.msp.mobad.api.listener.IRewardVideoAdListener;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.reward.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class OPPORewardAdLoader extends BasePlatformLoader<RewardVideoLoader, a> {
    private static final String TAG = "OPPORewardAdLoader";
    private ArrayList<RewardVideoAd> rewardVideoAdList;

    public OPPORewardAdLoader(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
        this.rewardVideoAdList = new ArrayList<>();
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        ArrayList<RewardVideoAd> arrayList = this.rewardVideoAdList;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            RewardVideoAd rewardVideoAd = arrayList.get(i2);
            i2++;
            rewardVideoAd.destroyAd();
        }
        this.rewardVideoAdList.clear();
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((RewardVideoLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        final OPPORewardAd oPPORewardAd = new OPPORewardAd(this);
        RewardVideoAd rewardVideoAd = new RewardVideoAd(getContext(), getSdkAdInfo().getPid(), new IRewardVideoAdListener() { // from class: com.meishu.sdk.platform.oppo.reward.OPPORewardAdLoader.1
            public void onAdClick(long j2) {
                if (OPPORewardAdLoader.this.getSdkAdInfo() != null && !TextUtils.isEmpty(OPPORewardAdLoader.this.getSdkAdInfo().getClk())) {
                    LogUtil.d(OPPORewardAdLoader.TAG, "send onAdClick");
                    com.meishu.sdk.core.loader.a.a(OPPORewardAdLoader.this.getContext(), f.a(OPPORewardAdLoader.this.getSdkAdInfo().getClk(), oPPORewardAd));
                }
                if (oPPORewardAd.getInteractionListener() != null) {
                    oPPORewardAd.getInteractionListener().onAdClicked();
                }
            }

            @Deprecated
            public void onAdFailed(String str) {
            }

            public void onAdSuccess() {
                if (OPPORewardAdLoader.this.getLoaderListener() != null) {
                    OPPORewardAdLoader.this.getLoaderListener().onAdLoaded(oPPORewardAd);
                }
            }

            public void onLandingPageClose() {
            }

            public void onLandingPageOpen() {
            }

            public void onReward(Object... objArr) {
                if (OPPORewardAdLoader.this.getLoaderListener() != null) {
                    OPPORewardAdLoader.this.getLoaderListener().onReward(null);
                }
            }

            public void onVideoPlayClose(long j2) {
                if (OPPORewardAdLoader.this.getLoaderListener() != null) {
                    OPPORewardAdLoader.this.getLoaderListener().onAdClosed();
                }
            }

            public void onVideoPlayComplete() {
                if (oPPORewardAd.getRewardAdMediaListener() != null) {
                    oPPORewardAd.getRewardAdMediaListener().onVideoCompleted();
                }
            }

            public void onVideoPlayError(String str) {
                LogUtil.e(OPPORewardAdLoader.TAG, "onVideoPlayError " + str);
                if (OPPORewardAdLoader.this.getLoaderListener() != null) {
                    OPPORewardAdLoader.this.getLoaderListener().onAdError();
                }
            }

            public void onVideoPlayStart() {
                if (OPPORewardAdLoader.this.getLoaderListener() != null) {
                    OPPORewardAdLoader.this.getLoaderListener().onAdExposure();
                }
            }

            public void onAdFailed(int i2, String str) {
                LogUtil.e(OPPORewardAdLoader.TAG, "onAdFailed " + str + " " + i2);
                a0.a(OPPORewardAdLoader.this.getSdkAdInfo().getErr(), Integer.valueOf(i2), str);
                if (OPPORewardAdLoader.this.getLoaderListener() != null) {
                    OPPORewardAdLoader.this.getLoaderListener().onAdError();
                }
            }
        });
        oPPORewardAd.setRewardAd(rewardVideoAd);
        rewardVideoAd.loadAd();
    }
}
