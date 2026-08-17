package com.meishu.sdk.platform.bd.interstitial;

import android.app.Activity;
import android.content.Context;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.meishu.sdk.core.ad.interstitial.InterstitialAd;

/* loaded from: classes4.dex */
public class BDExpressInterstitialAd extends InterstitialAd {
    private Context activity;
    private BDInterstitialAdLoader adWrapper;
    private ExpressInterstitialAd interstitialAd;

    public BDExpressInterstitialAd(ExpressInterstitialAd expressInterstitialAd, Context context, BDInterstitialAdLoader bDInterstitialAdLoader) {
        super(bDInterstitialAdLoader, "BAIDU");
        this.interstitialAd = expressInterstitialAd;
        this.activity = context;
        this.adWrapper = bDInterstitialAdLoader;
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd() {
        try {
            this.interstitialAd.show((Activity) this.activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.showAd();
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd(Activity activity) {
        try {
            ExpressInterstitialAd expressInterstitialAd = this.interstitialAd;
            if (expressInterstitialAd != null) {
                expressInterstitialAd.show(activity);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.showAd(activity);
    }
}
