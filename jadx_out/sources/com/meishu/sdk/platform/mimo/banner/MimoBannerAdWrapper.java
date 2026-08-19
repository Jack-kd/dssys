package com.meishu.sdk.platform.mimo.banner;

import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.banner.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.mimo.MimoPlatformError;
import com.miui.zeus.mimo.sdk.BannerAd;

/* loaded from: classes4.dex */
public class MimoBannerAdWrapper extends BasePlatformLoader<BannerAdLoader, b> {
    private static final String TAG = "MimoBannerAdWrapper";
    private BannerAd bannerAd;

    public MimoBannerAdWrapper(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo) {
        super(bannerAdLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        BannerAd bannerAd = this.bannerAd;
        if (bannerAd != null) {
            bannerAd.destroy();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((BannerAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        BannerAd bannerAd = new BannerAd();
        this.bannerAd = bannerAd;
        bannerAd.loadAd(this.sdkAdInfo.getPid(), new BannerAd.BannerLoadListener() { // from class: com.meishu.sdk.platform.mimo.banner.MimoBannerAdWrapper.1
            public void onAdLoadFailed(int i2, String str) {
                LogUtil.e(MimoBannerAdWrapper.TAG, "onAdLoadFailed, code: " + i2 + ", msg: " + str);
                new MimoPlatformError(str, Integer.valueOf(i2), MimoBannerAdWrapper.this.getSdkAdInfo()).post(MimoBannerAdWrapper.this.loadListener);
            }

            public void onBannerAdLoadSuccess() {
                LogUtil.d(MimoBannerAdWrapper.TAG, "send onBannerAdLoadSuccess");
                if (MimoBannerAdWrapper.this.getLoaderListener() != null) {
                    MimoBannerAdWrapper.this.getLoaderListener().onAdLoaded(new MimoBannerAd(MimoBannerAdWrapper.this.bannerAd, MimoBannerAdWrapper.this));
                    MimoBannerAdWrapper.this.getLoaderListener().onAdReady(new MimoBannerAd(MimoBannerAdWrapper.this.bannerAd, MimoBannerAdWrapper.this));
                }
            }
        });
    }
}
