package com.anythink.network.funlink;

import android.content.Context;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class FunlinkATFeedAd {

    public interface AdListener {
        void onNativeAdFailToLoad(String str, String str2);

        void onNativeAdLoadSuccess(List<CustomNativeAd> list, Object obj, long j2);
    }

    public abstract void destroy();

    public abstract void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2);
}
