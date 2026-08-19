package com.ubix.ssp.open.nativee.express;

import android.content.Context;
import com.ubix.ssp.open.AdSize;
import java.util.HashMap;

/* loaded from: classes5.dex */
public interface UBiXNativeExpressManager {
    String getBiddingToken();

    void loadAd();

    void loadAd(int i2);

    void loadBiddingAd(String str);

    void loadNativeExpressAd(Context context, String str, AdSize adSize, UBiXNativeExpressAdListener uBiXNativeExpressAdListener);

    void loadNativeExpressAd(Context context, String str, UBiXNativeExpressAdListener uBiXNativeExpressAdListener);

    void setExtraInfo(HashMap<String, String> map);
}
