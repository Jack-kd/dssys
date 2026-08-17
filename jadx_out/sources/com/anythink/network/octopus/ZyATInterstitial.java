package com.anythink.network.octopus;

import android.app.Activity;
import android.content.Context;
import com.octopus.ad.IBidding;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class ZyATInterstitial {

    public interface AdListener {
        void onAdCacheLoaded(boolean z2);

        void onAdClicked();

        void onAdClosed();

        void onAdFailedToLoad(String str, String str2);

        void onAdFailedToPLay(String str, String str2);

        void onAdLoaded(IBidding iBidding);

        void onAdShown();
    }

    public abstract void destroy();

    public abstract boolean isReady();

    public abstract void loadAd(Context context, String str, Map<String, Object> map);

    public abstract void showAd(Activity activity);
}
