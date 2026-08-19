package com.ubix.ssp.open.nativee.express;

import com.ubix.ssp.open.AdError;
import java.util.List;

/* loaded from: classes5.dex */
public interface UBiXNativeExpressAdListener {
    void onAdLoadFailed(AdError adError);

    void onAdLoadSucceed(List<NativeExpressAd> list);
}
