package com.octopus.ad;

/* loaded from: classes4.dex */
public interface RewardVideoAdListener {
    void onRewardVideoAdClicked();

    void onRewardVideoAdClosed();

    void onRewardVideoAdComplete();

    void onRewardVideoAdFailedToLoad(int i2);

    void onRewardVideoAdLoaded();

    void onRewardVideoAdShown();

    void onRewardVideoCached(boolean z2);

    void onRewarded(RewardItem rewardItem);
}
