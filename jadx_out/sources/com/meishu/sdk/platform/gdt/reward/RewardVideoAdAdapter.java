package com.meishu.sdk.platform.gdt.reward;

import android.app.Activity;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.utils.p1;

/* loaded from: classes4.dex */
public class RewardVideoAdAdapter extends a implements RewardVideoAd {
    private GDTRewardVideoAdWrapper adWrapper;

    public RewardVideoAdAdapter(GDTRewardVideoAdWrapper gDTRewardVideoAdWrapper) {
        super(gDTRewardVideoAdWrapper, "GDT");
        this.adWrapper = gDTRewardVideoAdWrapper;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void destroy() {
        try {
            this.adWrapper.destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.a
    public Object getSdkAd() {
        GDTRewardVideoAdWrapper gDTRewardVideoAdWrapper = this.adWrapper;
        return gDTRewardVideoAdWrapper != null ? gDTRewardVideoAdWrapper.getRewardVideoAd() : super.getSdkAd();
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public boolean isAdValid() {
        GDTRewardVideoAdWrapper gDTRewardVideoAdWrapper = this.adWrapper;
        return gDTRewardVideoAdWrapper != null ? gDTRewardVideoAdWrapper.isValid() : super.isAdValid();
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        try {
            this.adWrapper.setApiInteractionListener(interactionListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void setMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        try {
            this.adWrapper.setApiRewardAdMediaListener(rewardAdMediaListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd() {
        try {
            this.adWrapper.showAd();
            GDTRewardVideoAdWrapper gDTRewardVideoAdWrapper = this.adWrapper;
            if (gDTRewardVideoAdWrapper == null || gDTRewardVideoAdWrapper.getSdkAdInfo() == null) {
                return;
            }
            p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd(Activity activity) {
        try {
            this.adWrapper.showAd(activity);
            GDTRewardVideoAdWrapper gDTRewardVideoAdWrapper = this.adWrapper;
            if (gDTRewardVideoAdWrapper == null || gDTRewardVideoAdWrapper.getSdkAdInfo() == null) {
                return;
            }
            p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
