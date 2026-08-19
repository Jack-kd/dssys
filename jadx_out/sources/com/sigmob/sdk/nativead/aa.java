package com.sigmob.sdk.nativead;

import com.sigmob.windad.natives.WindNativeAdData;
import java.util.List;

/* loaded from: classes4.dex */
public interface aa {
    void onNativeAdLoadFail(int i2, String str);

    void onNativeAdLoaded(List<WindNativeAdData> list);
}
