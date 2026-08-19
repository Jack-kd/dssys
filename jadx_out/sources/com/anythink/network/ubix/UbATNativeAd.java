package com.anythink.network.ubix;

import android.content.Context;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class UbATNativeAd {

    public interface AdListener {
        void onNativeAdDataLoaded(List<CustomNativeAd> list, Object obj, double d2);

        void onNativeAdFailToLoad(String str, String str2);

        void onNativeAdLoadSuccess(List<CustomNativeAd> list, Object obj, double d2);
    }

    public abstract void destroy();

    public abstract void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2);
}
