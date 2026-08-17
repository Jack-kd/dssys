package com.ubix.ssp.open.nativee;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes5.dex */
public interface UBiXNativeManager {
    String getBiddingToken();

    void loadAd();

    void loadAd(int i2);

    void loadBiddingAd(String str);

    void loadNativeAd(Context context, String str, int i2, UBiXNativeAdListener uBiXNativeAdListener);

    void loadNativeAd(Context context, String str, UBiXNativeAdListener uBiXNativeAdListener);

    void setExtraInfo(HashMap<String, String> map);
}
