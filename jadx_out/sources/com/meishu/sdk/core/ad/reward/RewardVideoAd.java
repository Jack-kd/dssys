package com.meishu.sdk.core.ad.reward;

import android.app.Activity;
import com.meishu.sdk.core.ad.IAd;

/* loaded from: classes4.dex */
public interface RewardVideoAd extends IAd {
    void destroy();

    void setMediaListener(RewardAdMediaListener rewardAdMediaListener);

    void showAd();

    void showAd(Activity activity);
}
