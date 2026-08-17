package com.meishu.sdk.platform.jd.banner;

import com.jd.ad.sdk.banner.JADBanner;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.banner.b;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.BasePlatformLoader;

/* loaded from: classes4.dex */
public class JDBannerAdWrapper extends BasePlatformLoader<BannerAdLoader, b> {
    private JADBanner bannerAd;
    private MeishuAdInfo meishuAdInfo;

    public JDBannerAdWrapper(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(bannerAdLoader, sdkAdInfo);
        this.meishuAdInfo = meishuAdInfo;
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        if (this.bannerAd != null) {
            this.bannerAd = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd() {
        /*
            r4 = this;
            Loader extends com.meishu.sdk.core.loader.c r0 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r0 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r0     // Catch: java.lang.Throwable -> L4d
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L4d
            android.content.Context r0 = r0.getApplicationContext()     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.domain.SdkAdInfo r1 = r4.getSdkAdInfo()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = r1.getReq()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = com.meishu.sdk.core.utils.i0.a(r1)     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.utils.i r2 = new com.meishu.sdk.core.utils.i     // Catch: java.lang.Throwable -> L4d
            r2.<init>()     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.utils.a0.a(r0, r1, r2)     // Catch: java.lang.Throwable -> L4d
            Loader extends com.meishu.sdk.core.loader.c r0 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r0 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r0     // Catch: java.lang.Throwable -> L4d
            java.lang.Integer r0 = r0.getAcceptWidth()     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L50
            Loader extends com.meishu.sdk.core.loader.c r0 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r0 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r0     // Catch: java.lang.Throwable -> L4d
            java.lang.Integer r0 = r0.getAcceptHeight()     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L50
            Loader extends com.meishu.sdk.core.loader.c r0 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r0 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r0     // Catch: java.lang.Throwable -> L4d
            java.lang.Integer r0 = r0.getAcceptWidth()     // Catch: java.lang.Throwable -> L4d
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L4d
            Loader extends com.meishu.sdk.core.loader.c r1 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r1 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r1     // Catch: java.lang.Throwable -> L4d
            java.lang.Integer r1 = r1.getAcceptHeight()     // Catch: java.lang.Throwable -> L4d
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4d
            goto L74
        L4d:
            r0 = move-exception
            goto Ld1
        L50:
            r1 = 180(0xb4, float:2.52E-43)
            Loader extends com.meishu.sdk.core.loader.c r0 = r4.adLoader     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            com.meishu.sdk.core.ad.banner.BannerAdLoader r0 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r0     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            android.content.Context r0 = r0.getApplicationContext()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            int r2 = r0.widthPixels     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            if (r2 <= 0) goto L72
            int r0 = r0.heightPixels     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L72
            if (r0 <= 0) goto L72
            int r1 = r2 / 6
        L70:
            r0 = r2
            goto L74
        L72:
            r0 = 1080(0x438, float:1.513E-42)
        L74:
            Loader extends com.meishu.sdk.core.loader.c r2 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r2 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r2     // Catch: java.lang.Throwable -> L4d
            android.content.Context r2 = r2.getContext()     // Catch: java.lang.Throwable -> L4d
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L4d
            float r0 = com.meishu.sdk.core.utils.m.b(r2, r0)     // Catch: java.lang.Throwable -> L4d
            Loader extends com.meishu.sdk.core.loader.c r2 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r2 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r2     // Catch: java.lang.Throwable -> L4d
            android.content.Context r2 = r2.getContext()     // Catch: java.lang.Throwable -> L4d
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L4d
            float r1 = com.meishu.sdk.core.utils.m.b(r2, r1)     // Catch: java.lang.Throwable -> L4d
            com.jd.ad.sdk.dl.model.JADSlot$Builder r2 = new com.jd.ad.sdk.dl.model.JADSlot$Builder     // Catch: java.lang.Throwable -> L4d
            r2.<init>()     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.domain.SdkAdInfo r3 = r4.getSdkAdInfo()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r3 = r3.getPid()     // Catch: java.lang.Throwable -> L4d
            com.jd.ad.sdk.dl.model.JADSlot$Builder r2 = r2.setSlotID(r3)     // Catch: java.lang.Throwable -> L4d
            com.jd.ad.sdk.dl.model.JADSlot$Builder r0 = r2.setSize(r0, r1)     // Catch: java.lang.Throwable -> L4d
            com.jd.ad.sdk.dl.model.JADSlot r0 = r0.build()     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.platform.jd.banner.JDBannerAd r1 = new com.meishu.sdk.platform.jd.banner.JDBannerAd     // Catch: java.lang.Throwable -> L4d
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L4d
            com.jd.ad.sdk.banner.JADBanner r2 = new com.jd.ad.sdk.banner.JADBanner     // Catch: java.lang.Throwable -> L4d
            Loader extends com.meishu.sdk.core.loader.c r3 = r4.adLoader     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.BannerAdLoader r3 = (com.meishu.sdk.core.ad.banner.BannerAdLoader) r3     // Catch: java.lang.Throwable -> L4d
            android.content.Context r3 = r3.getContext()     // Catch: java.lang.Throwable -> L4d
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L4d
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L4d
            r4.bannerAd = r2     // Catch: java.lang.Throwable -> L4d
            r1.setJDBanner(r2)     // Catch: java.lang.Throwable -> L4d
            com.jd.ad.sdk.banner.JADBanner r0 = r4.bannerAd     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.platform.jd.banner.JDBannerAdListenerImpl r2 = new com.meishu.sdk.platform.jd.banner.JDBannerAdListenerImpl     // Catch: java.lang.Throwable -> L4d
            LoaderListener extends com.meishu.sdk.core.loader.IAdLoadListener r3 = r4.loadListener     // Catch: java.lang.Throwable -> L4d
            com.meishu.sdk.core.ad.banner.b r3 = (com.meishu.sdk.core.ad.banner.b) r3     // Catch: java.lang.Throwable -> L4d
            r2.<init>(r4, r3, r1)     // Catch: java.lang.Throwable -> L4d
            r0.loadAd(r2)     // Catch: java.lang.Throwable -> L4d
            goto Ld4
        Ld1:
            r0.printStackTrace()
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.jd.banner.JDBannerAdWrapper.loadAd():void");
    }
}
