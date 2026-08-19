package com.meishu.sdk.platform.mimo.splash;

import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.ad.splash.d;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.mimo.MimoPlatformError;
import com.miui.zeus.mimo.sdk.SplashAd;

/* loaded from: classes4.dex */
public class MimoSplashAdWrapper extends BasePlatformLoader<SplashAdLoader, d> {
    private static final String TAG = "MimoSplashAdWrapper";

    public MimoSplashAdWrapper(SplashAdLoader splashAdLoader, SdkAdInfo sdkAdInfo) {
        super(splashAdLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        LoaderListener loaderlistener;
        if (!((Boolean) this.localParams.get(SplashAdLoader.KEY_AUTO_SHOW)).booleanValue() && (loaderlistener = this.loadListener) != 0) {
            ((d) loaderlistener).onAdError();
            return;
        }
        a0.a(((SplashAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        final MimoSplashAd mimoSplashAd = new MimoSplashAd(this);
        ViewGroup adContainer = ((SplashAdLoader) this.adLoader).getAdContainer();
        SplashAd splashAd = new SplashAd();
        getSdkAdInfo().getPid();
        splashAd.loadAndShow(adContainer, getSdkAdInfo().getPid(), new SplashAd.SplashAdListener() { // from class: com.meishu.sdk.platform.mimo.splash.MimoSplashAdWrapper.1
            public void onAdClick() {
                LogUtil.i(MimoSplashAdWrapper.TAG, IAdInterListener.AdCommandType.AD_CLICK);
                a.a(((SplashAdLoader) MimoSplashAdWrapper.this.adLoader).getContext(), f.a(MimoSplashAdWrapper.this.getSdkAdInfo().getClk(), mimoSplashAd));
                InteractionListener interactionListener = mimoSplashAd.getInteractionListener();
                if (interactionListener != null) {
                    interactionListener.onAdClicked();
                }
            }

            public void onAdDismissed() {
                LogUtil.i(MimoSplashAdWrapper.TAG, "onAdDismissed");
                if (MimoSplashAdWrapper.this.getLoaderListener() != null) {
                    MimoSplashAdWrapper.this.getLoaderListener().onAdClosed();
                }
                InteractionListener interactionListener = mimoSplashAd.getInteractionListener();
                if (interactionListener != null) {
                    interactionListener.onAdClosed();
                }
            }

            public void onAdLoadFailed(int i2, String str) {
                LogUtil.i(MimoSplashAdWrapper.TAG, "onAdLoadFailed");
                new MimoPlatformError(str, Integer.valueOf(i2), MimoSplashAdWrapper.this.getSdkAdInfo()).post(MimoSplashAdWrapper.this.loadListener);
            }

            public void onAdLoaded() {
                LogUtil.i(MimoSplashAdWrapper.TAG, "onAdLoaded");
                if (MimoSplashAdWrapper.this.getLoaderListener() != null) {
                    MimoSplashAdWrapper.this.getLoaderListener().onAdLoaded(mimoSplashAd);
                    MimoSplashAdWrapper.this.getLoaderListener().onAdReady(mimoSplashAd);
                }
            }

            public void onAdRenderFailed() {
                LogUtil.i(MimoSplashAdWrapper.TAG, "onAdRenderFailed");
                if (MimoSplashAdWrapper.this.getLoaderListener() != null) {
                    MimoSplashAdWrapper.this.getLoaderListener().onAdError();
                    MimoSplashAdWrapper.this.getLoaderListener().onAdRenderFail("miAdRenderFailed", -1);
                }
            }

            public void onAdShow() {
                LogUtil.i(MimoSplashAdWrapper.TAG, "onAdShow");
                if (MimoSplashAdWrapper.this.getLoaderListener() != null) {
                    MimoSplashAdWrapper.this.getLoaderListener().onAdExposure();
                }
                InteractionListener interactionListener = mimoSplashAd.getInteractionListener();
                if (interactionListener != null) {
                    interactionListener.onAdExposure();
                }
            }
        });
    }
}
