package com.anythink.network.octopus;

import android.app.Activity;
import android.content.Context;
import com.anythink.network.octopus.ZyATInterstitial;
import com.octopus.ad.FullScreenVideoAd;
import com.octopus.ad.FullScreenVideoAdListener;
import java.util.Map;

/* loaded from: classes2.dex */
public class ZyATFullScreenVideoAd extends ZyATInterstitial {

    /* renamed from: a, reason: collision with root package name */
    private final ZyATInterstitial.AdListener f10111a;

    /* renamed from: b, reason: collision with root package name */
    private FullScreenVideoAd f10112b;

    public class a implements FullScreenVideoAdListener {
        public a() {
        }

        @Override // com.octopus.ad.FullScreenVideoAdListener
        public void onAdCacheLoaded(boolean z2) {
            if (ZyATFullScreenVideoAd.this.f10111a != null) {
                ZyATFullScreenVideoAd.this.f10111a.onAdCacheLoaded(z2);
            }
        }

        @Override // com.octopus.ad.FullScreenVideoAdListener
        public void onAdClicked() {
            if (ZyATFullScreenVideoAd.this.f10111a != null) {
                ZyATFullScreenVideoAd.this.f10111a.onAdClicked();
            }
        }

        @Override // com.octopus.ad.FullScreenVideoAdListener
        public void onAdClosed() {
            if (ZyATFullScreenVideoAd.this.f10111a != null) {
                ZyATFullScreenVideoAd.this.f10111a.onAdClosed();
            }
        }

        @Override // com.octopus.ad.FullScreenVideoAdListener
        public void onAdFailedToLoad(int i2) {
            if (ZyATFullScreenVideoAd.this.f10111a != null) {
                ZyATFullScreenVideoAd.this.f10111a.onAdFailedToLoad(String.valueOf(i2), "i:" + i2);
            }
        }

        @Override // com.octopus.ad.FullScreenVideoAdListener
        public void onAdLoaded() {
            if (ZyATFullScreenVideoAd.this.f10111a != null) {
                ZyATFullScreenVideoAd.this.f10111a.onAdLoaded(ZyATFullScreenVideoAd.this.f10112b);
            }
        }

        @Override // com.octopus.ad.FullScreenVideoAdListener
        public void onAdShown() {
            if (ZyATFullScreenVideoAd.this.f10111a != null) {
                ZyATFullScreenVideoAd.this.f10111a.onAdShown();
            }
        }
    }

    public ZyATFullScreenVideoAd(ZyATInterstitial.AdListener adListener) {
        this.f10111a = adListener;
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public void destroy() {
        FullScreenVideoAd fullScreenVideoAd = this.f10112b;
        if (fullScreenVideoAd != null) {
            fullScreenVideoAd.destroy();
            this.f10112b = null;
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public boolean isReady() {
        FullScreenVideoAd fullScreenVideoAd = this.f10112b;
        return fullScreenVideoAd != null && fullScreenVideoAd.isValid();
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public void loadAd(Context context, String str, Map<String, Object> map) {
        FullScreenVideoAd fullScreenVideoAd = new FullScreenVideoAd(context, str, new a());
        this.f10112b = fullScreenVideoAd;
        fullScreenVideoAd.openAdInNativeBrowser(true);
        this.f10112b.loadAd();
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial
    public void showAd(Activity activity) {
        FullScreenVideoAd fullScreenVideoAd = this.f10112b;
        if (fullScreenVideoAd != null && fullScreenVideoAd.isValid()) {
            this.f10112b.show(activity);
            return;
        }
        ZyATInterstitial.AdListener adListener = this.f10111a;
        if (adListener != null) {
            adListener.onAdFailedToPLay("", "fullScreenVideoAd is null or is not ready");
        }
    }
}
