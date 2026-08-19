package com.meishu.sdk.core.ad.reward;

import com.meishu.sdk.core.loader.d;
import java.util.Map;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.core.loader.b<RewardVideoAd, a> implements a {
    public c(d dVar, a aVar) {
        super(dVar, aVar);
    }

    @Override // com.meishu.sdk.core.ad.reward.a
    public void onReward(Map<String, Object> map) {
        K k2 = this.f31586b;
        if (k2 != 0) {
            ((a) k2).onReward(map);
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.a
    public void onVideoCached(RewardVideoAd rewardVideoAd) {
        K k2 = this.f31586b;
        if (k2 != 0) {
            ((a) k2).onVideoCached(rewardVideoAd);
        }
    }
}
