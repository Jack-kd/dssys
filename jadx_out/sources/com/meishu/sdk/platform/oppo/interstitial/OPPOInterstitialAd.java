package com.meishu.sdk.platform.oppo.interstitial;

import android.app.Activity;
import com.meishu.sdk.core.ad.interstitial.InterstitialAd;
import com.meishu.sdk.core.loader.d;

/* loaded from: classes4.dex */
public class OPPOInterstitialAd extends InterstitialAd {
    private com.heytap.msp.mobad.api.ad.InterstitialAd interstitialAd;

    public OPPOInterstitialAd(d dVar) {
        super(dVar, "OPPO");
    }

    public com.heytap.msp.mobad.api.ad.InterstitialAd getInterstitialAd() {
        return this.interstitialAd;
    }

    public void setInterstitialAd(com.heytap.msp.mobad.api.ad.InterstitialAd interstitialAd) {
        this.interstitialAd = interstitialAd;
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd(Activity activity) {
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd() {
        this.interstitialAd.showAd();
    }
}
