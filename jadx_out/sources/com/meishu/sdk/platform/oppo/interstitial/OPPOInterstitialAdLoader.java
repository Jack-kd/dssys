package com.meishu.sdk.platform.oppo.interstitial;

import android.app.Activity;
import android.text.TextUtils;
import com.heytap.msp.mobad.api.ad.InterstitialAd;
import com.heytap.msp.mobad.api.listener.IInterstitialAdListener;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.ad.interstitial.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;

/* loaded from: classes4.dex */
public class OPPOInterstitialAdLoader extends BasePlatformLoader<InterstitialAdLoader, b> {
    private static final String TAG = "OPPOInterstitialAdLoader";
    private InterstitialAd interstitialAd;

    public OPPOInterstitialAdLoader(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo) {
        super(interstitialAdLoader, sdkAdInfo);
    }

    private void loadNormal() {
        final OPPOInterstitialAd oPPOInterstitialAd = new OPPOInterstitialAd(this);
        InterstitialAd interstitialAd = new InterstitialAd((Activity) getContext(), this.sdkAdInfo.getPid());
        this.interstitialAd = interstitialAd;
        oPPOInterstitialAd.setInterstitialAd(interstitialAd);
        this.interstitialAd.setAdListener(new IInterstitialAdListener() { // from class: com.meishu.sdk.platform.oppo.interstitial.OPPOInterstitialAdLoader.1
            public void onAdClick() {
                OPPOInterstitialAdLoader.this.onClick(oPPOInterstitialAd);
            }

            public void onAdClose() {
                if (OPPOInterstitialAdLoader.this.getLoaderListener() != null) {
                    OPPOInterstitialAdLoader.this.getLoaderListener().onAdClosed();
                }
            }

            @Deprecated
            public void onAdFailed(String str) {
            }

            public void onAdReady() {
                if (OPPOInterstitialAdLoader.this.getLoaderListener() != null) {
                    OPPOInterstitialAdLoader.this.getLoaderListener().onAdLoaded(oPPOInterstitialAd);
                }
            }

            public void onAdShow() {
                if (OPPOInterstitialAdLoader.this.getLoaderListener() != null) {
                    OPPOInterstitialAdLoader.this.getLoaderListener().onAdExposure();
                }
            }

            public void onAdFailed(int i2, String str) {
                OPPOInterstitialAdLoader.this.onFailed(i2, str);
            }
        });
        this.interstitialAd.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(com.meishu.sdk.core.ad.interstitial.InterstitialAd interstitialAd) {
        if (getSdkAdInfo() != null && !TextUtils.isEmpty(getSdkAdInfo().getClk())) {
            LogUtil.d(TAG, "send onAdClick");
            a.a(getContext(), f.a(getSdkAdInfo().getClk(), interstitialAd));
        }
        if (interstitialAd.getInteractionListener() != null) {
            interstitialAd.getInteractionListener().onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFailed(int i2, String str) {
        LogUtil.e(TAG, str + " " + i2);
        if (i2 == 10008) {
            return;
        }
        a0.a(getSdkAdInfo().getErr(), Integer.valueOf(i2), str);
        if (getLoaderListener() != null) {
            getLoaderListener().onAdError();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroyAd();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a.a(((InterstitialAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()));
        loadNormal();
    }
}
