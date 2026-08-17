package com.ubix.ssp.open.nativee;

import com.ubix.ssp.open.AdError;
import java.util.List;

/* loaded from: classes5.dex */
public interface UBiXNativeAdListener {
    void onAdLoadFailed(AdError adError);

    void onAdLoadSucceed(List<NativeAd> list);
}
