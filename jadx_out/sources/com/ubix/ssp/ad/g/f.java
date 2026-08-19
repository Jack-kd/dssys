package com.ubix.ssp.ad.g;

import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.nativee.express.NativeExpressAd;
import java.util.List;

/* loaded from: classes5.dex */
public interface f {
    void onAdLoadFailed(AdError adError);

    void onAdLoadSucceed(List<NativeExpressAd> list);
}
