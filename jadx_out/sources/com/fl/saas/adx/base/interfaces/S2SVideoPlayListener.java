package com.fl.saas.adx.base.interfaces;

import androidx.annotation.Keep;

/* loaded from: classes3.dex */
public interface S2SVideoPlayListener {
    @Keep
    void onVideoPlayComplete();

    void onVideoPlayError(int i2, int i3);

    @Keep
    void onVideoPlayStart();

    @Keep
    void onVideoPrepare();
}
