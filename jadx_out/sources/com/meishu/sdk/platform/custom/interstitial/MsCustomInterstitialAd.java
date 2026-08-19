package com.meishu.sdk.platform.custom.interstitial;

import com.meishu.sdk.core.ad.interstitial.InterstitialAd;

/* loaded from: classes4.dex */
public abstract class MsCustomInterstitialAd extends InterstitialAd {
    private MsCustomInterstitialAdapter adWrapper;

    public MsCustomInterstitialAd(MsCustomInterstitialAdapter msCustomInterstitialAdapter) {
        this(msCustomInterstitialAdapter, "CUSTOM");
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd() {
    }

    public MsCustomInterstitialAd(MsCustomInterstitialAdapter msCustomInterstitialAdapter, String str) {
        super(msCustomInterstitialAdapter, str);
        this.adWrapper = msCustomInterstitialAdapter;
    }
}
