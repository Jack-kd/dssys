package com.meishu.sdk.platform.csj.banner;

import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.banner.b;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.csj.CSJAdConfig;

/* loaded from: classes4.dex */
public class CSJBannerAdWrapper extends BasePlatformLoader<BannerAdLoader, b> {
    private MeishuAdInfo meishuAdInfo;
    private TTAdNative ttAdNative;
    private TTNativeExpressAd ttNativeExpressAd;

    public CSJBannerAdWrapper(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(bannerAdLoader, sdkAdInfo);
        this.ttAdNative = CSJAdConfig.getTtAdManager().createAdNative(bannerAdLoader.getContext());
        this.meishuAdInfo = meishuAdInfo;
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        TTNativeExpressAd tTNativeExpressAd = this.ttNativeExpressAd;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.ttNativeExpressAd = null;
        }
        if (this.ttAdNative != null) {
            this.ttAdNative = null;
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        int width;
        int height;
        float fIntValue;
        float f2;
        try {
            a0.a(((BannerAdLoader) this.adLoader).getContext().getApplicationContext(), i0.a(getSdkAdInfo().getReq()), new i());
            if (!CSJAdConfig.isInitSuccess()) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            if (this.meishuAdInfo.getWidth() == 0 || this.meishuAdInfo.getHeight() == 0) {
                width = 1080;
                height = 1920;
            } else {
                width = this.meishuAdInfo.getWidth();
                height = this.meishuAdInfo.getHeight();
            }
            DisplayMetrics displayMetrics = this.context.getApplicationContext().getResources().getDisplayMetrics();
            if (getAdLoader().getAcceptWidth() == null || getAdLoader().getAcceptWidth().intValue() <= 0) {
                fIntValue = displayMetrics.widthPixels;
                f2 = displayMetrics.density;
            } else {
                fIntValue = getAdLoader().getAcceptWidth().intValue();
                f2 = displayMetrics.density;
            }
            this.ttAdNative.loadBannerExpressAd(new AdSlot.Builder().setCodeId(getSdkAdInfo().getPid()).setSupportDeepLink(true).setImageAcceptedSize(width, height).setExpressViewAcceptedSize(fIntValue / f2, (getAdLoader().getAcceptHeight() == null || getAdLoader().getAcceptHeight().intValue() <= 0) ? 0.0f : getAdLoader().getAcceptHeight().intValue() / displayMetrics.density).build(), new CSJBannerListenerImpl(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTtNativeExpressAd(TTNativeExpressAd tTNativeExpressAd) {
        this.ttNativeExpressAd = tTNativeExpressAd;
    }
}
