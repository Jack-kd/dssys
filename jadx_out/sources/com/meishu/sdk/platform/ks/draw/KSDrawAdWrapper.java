package com.meishu.sdk.platform.ks.draw;

import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.meishu.sdk.core.ad.draw.DrawAdLoader;
import com.meishu.sdk.core.ad.draw.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.ks.KSPlatformError;
import java.util.List;

/* loaded from: classes4.dex */
public class KSDrawAdWrapper extends BasePlatformLoader<DrawAdLoader, a> {
    private KsDrawAd drawAd;

    public KSDrawAdWrapper(DrawAdLoader drawAdLoader, SdkAdInfo sdkAdInfo) {
        super(drawAdLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            a0.a(((DrawAdLoader) this.adLoader).getContext().getApplicationContext(), i0.a(getSdkAdInfo().getReq()), new i());
            KsScene ksSceneBuild = new KsScene.Builder(Long.parseLong(this.sdkAdInfo.getPid())).build();
            final KSDrawAd kSDrawAd = new KSDrawAd(this);
            KsAdSDK.getLoadManager().loadDrawAd(ksSceneBuild, new KsLoadManager.DrawAdListener() { // from class: com.meishu.sdk.platform.ks.draw.KSDrawAdWrapper.1
                @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
                public void onDrawAdLoad(List<KsDrawAd> list) {
                    if (list != null) {
                        try {
                            if (list.isEmpty()) {
                                return;
                            }
                            KSDrawAdWrapper.this.drawAd = list.get(0);
                            kSDrawAd.setAdView(KSDrawAdWrapper.this.drawAd.getDrawView(KSDrawAdWrapper.this.getContext()));
                            KSDrawAdWrapper.this.drawAd.setAdInteractionListener(new KSDrawListenerImpl(KSDrawAdWrapper.this, kSDrawAd));
                            if (KSDrawAdWrapper.this.getLoaderListener() != null) {
                                KSDrawAdWrapper.this.getLoaderListener().onAdLoaded(kSDrawAd);
                                KSDrawAdWrapper.this.getLoaderListener().onAdReady(kSDrawAd);
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
                public void onError(int i2, String str) {
                    try {
                        new KSPlatformError(str, Integer.valueOf(i2), KSDrawAdWrapper.this.getSdkAdInfo()).post(KSDrawAdWrapper.this.getLoaderListener());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        try {
            KsDrawAd ksDrawAd = this.drawAd;
            if (ksDrawAd != null) {
                if (z2) {
                    ksDrawAd.setBidEcpm(ksDrawAd.getECPM(), u0.a(this.drawAd.getECPM(), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice()));
                    return;
                }
                AdExposureFailedReason adExposureFailedReason = new AdExposureFailedReason();
                adExposureFailedReason.setAdnType(3);
                adExposureFailedReason.setWinEcpm(i2);
                this.drawAd.reportAdExposureFailed(2, adExposureFailedReason);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
