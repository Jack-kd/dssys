package com.meishu.sdk.core.ad.splash;

/* loaded from: classes4.dex */
public class f extends com.meishu.sdk.core.loader.b<ISplashAd, d> implements d {
    public f(com.meishu.sdk.core.loader.d dVar, d dVar2) {
        super(dVar, dVar2);
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdPresent(ISplashAd iSplashAd) {
        K k2 = this.f31586b;
        if (k2 != 0) {
            ((d) k2).onAdPresent(iSplashAd);
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdSkip(ISplashAd iSplashAd) {
        K k2 = this.f31586b;
        if (k2 != 0) {
            ((d) k2).onAdSkip(iSplashAd);
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdTick(long j2) {
        K k2 = this.f31586b;
        if (k2 != 0) {
            ((d) k2).onAdTick(j2);
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdTimeOver(ISplashAd iSplashAd) {
        K k2 = this.f31586b;
        if (k2 != 0) {
            ((d) k2).onAdTimeOver(iSplashAd);
        }
    }
}
