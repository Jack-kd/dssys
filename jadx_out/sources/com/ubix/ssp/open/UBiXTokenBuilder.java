package com.ubix.ssp.open;

import com.ubix.ssp.ad.e.a0.c;
import com.ubix.ssp.open.icon.UBiXIconManager;
import com.ubix.ssp.open.interstitial.UBiXInterstitialManager;
import com.ubix.ssp.open.manager.UBiXAdManager;
import com.ubix.ssp.open.nativee.UBiXNativeManager;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager;
import com.ubix.ssp.open.splash.UBiXSplashManager;
import com.ubix.ssp.open.video.UBiXRewardVideoManager;

/* loaded from: classes5.dex */
public class UBiXTokenBuilder {

    /* renamed from: a, reason: collision with root package name */
    private String f48518a;

    /* renamed from: b, reason: collision with root package name */
    private int f48519b;

    /* renamed from: c, reason: collision with root package name */
    private int f48520c = 1;

    public UBiXTokenBuilder(String str, int i2) {
        this.f48518a = str;
        this.f48519b = i2;
    }

    private String a() {
        try {
            if (this.f48520c == 2) {
                UBiXNativeManager uBiXNativeManagerCreateNativeAd = UBiXAdManager.createNativeAd();
                uBiXNativeManagerCreateNativeAd.loadNativeAd(c.e(), this.f48518a, this.f48519b, null);
                return uBiXNativeManagerCreateNativeAd.getBiddingToken();
            }
            int i2 = this.f48519b;
            if (i2 == 1) {
                UBiXSplashManager uBiXSplashManagerCreateSpreadAd = UBiXAdManager.createSpreadAd();
                uBiXSplashManagerCreateSpreadAd.loadSplashAd(c.e(), this.f48518a, null);
                return uBiXSplashManagerCreateSpreadAd.getBiddingToken();
            }
            if (i2 == 2) {
                UBiXNativeExpressManager uBiXNativeExpressManagerCreateNativeExpressAd = UBiXAdManager.createNativeExpressAd();
                uBiXNativeExpressManagerCreateNativeExpressAd.loadNativeExpressAd(c.e(), this.f48518a, null);
                return uBiXNativeExpressManagerCreateNativeExpressAd.getBiddingToken();
            }
            if (i2 == 3) {
                UBiXIconManager uBiXIconManagerCreateIconAd = UBiXAdManager.createIconAd();
                uBiXIconManagerCreateIconAd.loadIconAd(c.e(), this.f48518a, null, null);
                return uBiXIconManagerCreateIconAd.getBiddingToken();
            }
            if (i2 == 6) {
                UBiXInterstitialManager uBiXInterstitialManagerCreateInterstitialAd = UBiXAdManager.createInterstitialAd();
                uBiXInterstitialManagerCreateInterstitialAd.loadInterstitialAd(c.e(), this.f48518a, null);
                return uBiXInterstitialManagerCreateInterstitialAd.getBiddingToken();
            }
            if (i2 != 9) {
                return null;
            }
            UBiXRewardVideoManager uBiXRewardVideoManagerCreateRewardVideoAd = UBiXAdManager.createRewardVideoAd();
            uBiXRewardVideoManagerCreateRewardVideoAd.loadRewardVideoAd(c.e(), this.f48518a, null);
            return uBiXRewardVideoManagerCreateRewardVideoAd.getBiddingToken();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public String build() {
        return a();
    }

    public UBiXTokenBuilder setRenderType(int i2) {
        this.f48520c = i2;
        return this;
    }
}
