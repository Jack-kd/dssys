package com.meishu.sdk.platform.oppo.fullscreenvideo;

import android.app.Activity;
import android.text.TextUtils;
import com.heytap.msp.mobad.api.ad.InterstitialVideoAd;
import com.heytap.msp.mobad.api.listener.IInterstitialVideoAdListener;
import com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import com.meishu.sdk.core.ad.fullscreenvideo.c;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;

/* loaded from: classes4.dex */
public class OPPOFullScreenVideoAdLoader extends BasePlatformLoader<FullScreenVideoAdLoader, c> {
    private static final String TAG = "OPPOInterstitialAdLoader";
    private InterstitialVideoAd interstitialVideoAd;

    public OPPOFullScreenVideoAdLoader(FullScreenVideoAdLoader fullScreenVideoAdLoader, SdkAdInfo sdkAdInfo) {
        super(fullScreenVideoAdLoader, sdkAdInfo);
    }

    private void loadVideo() {
        final OPPOFullScreenVideoAd oPPOFullScreenVideoAd = new OPPOFullScreenVideoAd(this);
        InterstitialVideoAd interstitialVideoAd = new InterstitialVideoAd((Activity) getContext(), this.sdkAdInfo.getPid(), new IInterstitialVideoAdListener() { // from class: com.meishu.sdk.platform.oppo.fullscreenvideo.OPPOFullScreenVideoAdLoader.1
            public void onAdClick() {
                OPPOFullScreenVideoAdLoader.this.onClick(oPPOFullScreenVideoAd);
            }

            public void onAdClose() {
                if (OPPOFullScreenVideoAdLoader.this.getLoaderListener() != null) {
                    OPPOFullScreenVideoAdLoader.this.getLoaderListener().onAdClosed();
                }
            }

            @Deprecated
            public void onAdFailed(String str) {
            }

            public void onAdReady() {
                if (OPPOFullScreenVideoAdLoader.this.getLoaderListener() != null) {
                    OPPOFullScreenVideoAdLoader.this.getLoaderListener().onAdLoaded(oPPOFullScreenVideoAd);
                }
            }

            public void onAdShow() {
                if (OPPOFullScreenVideoAdLoader.this.getLoaderListener() != null) {
                    OPPOFullScreenVideoAdLoader.this.getLoaderListener().onAdExposure();
                }
            }

            public void onVideoPlayComplete() {
                if (oPPOFullScreenVideoAd.getMediaListener() != null) {
                    oPPOFullScreenVideoAd.getMediaListener().onVideoCompleted();
                }
            }

            public void onAdFailed(int i2, String str) {
                OPPOFullScreenVideoAdLoader.this.onFailed(i2, str);
            }
        });
        this.interstitialVideoAd = interstitialVideoAd;
        oPPOFullScreenVideoAd.setInterstitialVideoAd(interstitialVideoAd);
        this.interstitialVideoAd.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(OPPOFullScreenVideoAd oPPOFullScreenVideoAd) {
        if (getSdkAdInfo() != null && !TextUtils.isEmpty(getSdkAdInfo().getClk())) {
            LogUtil.d(TAG, "send onAdClick");
            a.a(getContext(), f.a(getSdkAdInfo().getClk(), oPPOFullScreenVideoAd));
        }
        if (oPPOFullScreenVideoAd.getInteractionListener() != null) {
            oPPOFullScreenVideoAd.getInteractionListener().onAdClicked();
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
        InterstitialVideoAd interstitialVideoAd = this.interstitialVideoAd;
        if (interstitialVideoAd != null) {
            interstitialVideoAd.destroyAd();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a.a(((FullScreenVideoAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()));
        loadVideo();
    }
}
