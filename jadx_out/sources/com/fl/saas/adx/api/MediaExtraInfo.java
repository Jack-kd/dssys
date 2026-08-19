package com.fl.saas.adx.api;

import com.fl.saas.adx.base.bean.AdInfo;

/* loaded from: classes3.dex */
public interface MediaExtraInfo {
    default void biddingResultUpload(boolean z2, int i2, int i3) {
    }

    default AdInfo getAdInfo() {
        return null;
    }

    default int getECPM() {
        return 0;
    }
}
