package com.beizi.fusion;

import android.view.View;

/* loaded from: classes2.dex */
public interface NativeAdListener extends j3 {
    void onAdClick();

    void onAdClosed();

    void onAdClosed(View view);

    void onAdFailed(int i2);

    void onAdLoaded(View view);

    void onAdShown();
}
