package com.beizi.fusion.unified;

import com.beizi.fusion.j3;

/* loaded from: classes2.dex */
public interface BZUnifiedAdListener extends j3 {
    void onAdClick();

    void onAdFailed(int i2);

    void onAdLoaded(BZUnifiedAdResponse bZUnifiedAdResponse);

    void onAdShown();
}
