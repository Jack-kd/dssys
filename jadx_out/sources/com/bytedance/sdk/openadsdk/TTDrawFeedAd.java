package com.bytedance.sdk.openadsdk;

import android.graphics.Bitmap;

/* loaded from: classes3.dex */
public interface TTDrawFeedAd extends TTFeedAd {

    public interface DrawVideoListener {
        void onClick();

        void onClickRetry();
    }

    void setCanInterruptVideoPlay(boolean z2);

    void setDrawVideoListener(DrawVideoListener drawVideoListener);

    void setPauseIcon(Bitmap bitmap, int i2);
}
