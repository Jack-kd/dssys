package com.meishu.sdk.platform.mimo.insterstitial;

import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.ad.interstitial.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.mimo.MimoPlatformError;
import com.miui.zeus.mimo.sdk.InterstitialAd;

/* loaded from: classes4.dex */
public class MimoInterstitialAdLoader extends BasePlatformLoader<InterstitialAdLoader, b> {
    private static final String TAG = "MimoInterstitialAdLoader";
    private InterstitialAd nativeInterstitialAd;

    public MimoInterstitialAdLoader(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo) {
        super(interstitialAdLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        InterstitialAd interstitialAd = this.nativeInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((InterstitialAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        InterstitialAd interstitialAd = new InterstitialAd();
        this.nativeInterstitialAd = interstitialAd;
        interstitialAd.loadAd(this.sdkAdInfo.getPid(), new InterstitialAd.InterstitialAdLoadListener() { // from class: com.meishu.sdk.platform.mimo.insterstitial.MimoInterstitialAdLoader.1
            public void onAdLoadFailed(int i2, String str) {
                LogUtil.e(MimoInterstitialAdLoader.TAG, "onAdLoadFailed, code: " + i2 + ", msg: " + str);
                new MimoPlatformError(str, Integer.valueOf(i2), MimoInterstitialAdLoader.this.getSdkAdInfo()).post(MimoInterstitialAdLoader.this.loadListener);
            }

            public void onAdLoadSuccess() {
                LogUtil.d(MimoInterstitialAdLoader.TAG, "send onAdLoadSuccess");
                if (MimoInterstitialAdLoader.this.loadListener != null) {
                    MimoInterstitialAd mimoInterstitialAd = new MimoInterstitialAd(MimoInterstitialAdLoader.this.nativeInterstitialAd, MimoInterstitialAdLoader.this);
                    ((b) MimoInterstitialAdLoader.this.loadListener).onAdLoaded(mimoInterstitialAd);
                    ((b) MimoInterstitialAdLoader.this.loadListener).onAdReady(mimoInterstitialAd);
                }
            }

            public void onAdRequestSuccess() {
            }
        });
    }
}
