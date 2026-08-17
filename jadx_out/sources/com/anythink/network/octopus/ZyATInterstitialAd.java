package com.anythink.network.octopus;

import android.app.Activity;
import android.content.Context;
import com.anythink.network.octopus.ZyATInterstitial;
import com.octopus.ad.InterstitialAd;
import com.octopus.ad.InterstitialAdListener;
import java.util.Map;

/* loaded from: classes2.dex */
public class ZyATInterstitialAd extends ZyATInterstitial {

    /* renamed from: a, reason: collision with root package name */
    private final ZyATInterstitial.AdListener f10122a;

    /* renamed from: b, reason: collision with root package name */
    private InterstitialAd f10123b;

    public class a implements InterstitialAdListener {
        public a() {
        }

        @Override // com.octopus.ad.InterstitialAdListener
        public void onAdCacheLoaded(boolean z2) {
            if (ZyATInterstitialAd.this.f10122a != null) {
                ZyATInterstitialAd.this.f10122a.onAdCacheLoaded(z2);
            }
        }

        @Override // com.octopus.ad.InterstitialAdListener
        public void onAdClicked() {
            if (ZyATInterstitialAd.this.f10122a != null) {
                ZyATInterstitialAd.this.f10122a.onAdClicked();
            }
        }

        @Override // com.octopus.ad.InterstitialAdListener
        public void onAdClosed() {
            if (ZyATInterstitialAd.this.f10122a != null) {
                ZyATInterstitialAd.this.f10122a.onAdClosed();
            }
        }

        @Override // com.octopus.ad.InterstitialAdListener
        public void onAdFailedToLoad(int i2) {
            if (ZyATInterstitialAd.this.f10122a != null) {
                ZyATInterstitialAd.this.f10122a.onAdFailedToLoad(String.valueOf(i2), "i:" + i2);
            }
        }

        @Override // com.octopus.ad.InterstitialAdListener
        public void onAdLoaded() {
            if (ZyATInterstitialAd.this.f10122a != null) {
                ZyATInterstitialAd.this.f10122a.onAdLoaded(ZyATInterstitialAd.this.f10123b);
            }
        }

        @Override // com.octopus.ad.InterstitialAdListener
        public void onAdShown() {
            if (ZyATInterstitialAd.this.f10122a != null) {
                ZyATInterstitialAd.this.f10122a.onAdShown();
            }
        }
    }

    public ZyATInterstitialAd(ZyATInterstitial.AdListener adListener) {
        this.f10122a = adListener;
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public void destroy() {
        InterstitialAd interstitialAd = this.f10123b;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f10123b = null;
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public boolean isReady() {
        InterstitialAd interstitialAd = this.f10123b;
        return interstitialAd != null && interstitialAd.isValid();
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public void loadAd(Context context, String str, Map<String, Object> map) {
        InterstitialAd interstitialAd = new InterstitialAd(context, str, new a());
        this.f10123b = interstitialAd;
        interstitialAd.openAdInNativeBrowser(true);
        this.f10123b.loadAd();
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public void showAd(Activity activity) {
        InterstitialAd interstitialAd = this.f10123b;
        if (interstitialAd != null && interstitialAd.isValid()) {
            this.f10123b.show(activity);
            return;
        }
        ZyATInterstitial.AdListener adListener = this.f10122a;
        if (adListener != null) {
            adListener.onAdFailedToPLay("", "interstitialAd is null or is not ready");
        }
    }
}
