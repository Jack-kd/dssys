package com.meishu.sdk.platform.csj.fullscreenvideo;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import com.meishu.sdk.core.ad.fullscreenvideo.c;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.BasePlatformLoader;

/* loaded from: classes4.dex */
public class CSJFullScreenVideoAdWrapper extends BasePlatformLoader<FullScreenVideoAdLoader, c> {
    private static final String TAG = "OPPOInterstitialAdLoader";
    private final Context activity;
    private TTAdNative adNative;
    private MeishuAdInfo meishuAdInfo;

    public CSJFullScreenVideoAdWrapper(FullScreenVideoAdLoader fullScreenVideoAdLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(fullScreenVideoAdLoader, sdkAdInfo);
        this.activity = fullScreenVideoAdLoader.getContext();
        this.meishuAdInfo = meishuAdInfo;
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        if (this.adNative != null) {
            this.adNative = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd() {
        /*
            r6 = this;
            com.meishu.sdk.core.loader.c r0 = r6.getAdLoader()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader r0 = (com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader) r0     // Catch: java.lang.Throwable -> L4f
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L4f
            android.content.Context r0 = r0.getApplicationContext()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.domain.SdkAdInfo r1 = r6.getSdkAdInfo()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r1 = r1.getReq()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r1 = com.meishu.sdk.core.utils.i0.a(r1)     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.utils.i r2 = new com.meishu.sdk.core.utils.i     // Catch: java.lang.Throwable -> L4f
            r2.<init>()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.utils.a0.a(r0, r1, r2)     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r6.meishuAdInfo     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.getWidth()     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L51
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r6.meishuAdInfo     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.getHeight()     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L51
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r6.meishuAdInfo     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.getWidth()     // Catch: java.lang.Throwable -> L4f
            if (r0 <= 0) goto L51
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r6.meishuAdInfo     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.getHeight()     // Catch: java.lang.Throwable -> L4f
            if (r0 <= 0) goto L51
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r6.meishuAdInfo     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.getWidth()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.domain.MeishuAdInfo r1 = r6.meishuAdInfo     // Catch: java.lang.Throwable -> L4f
            int r1 = r1.getHeight()     // Catch: java.lang.Throwable -> L4f
            goto L71
        L4f:
            r0 = move-exception
            goto Lb5
        L51:
            Loader extends com.meishu.sdk.core.loader.c r0 = r6.adLoader     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader r0 = (com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader) r0     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            int r1 = r0.widthPixels     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            if (r1 <= 0) goto L6d
            int r0 = r0.heightPixels     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L6d
            if (r0 <= 0) goto L6d
            r5 = r1
            r1 = r0
            r0 = r5
            goto L71
        L6d:
            r0 = 1080(0x438, float:1.513E-42)
            r1 = 1920(0x780, float:2.69E-42)
        L71:
            com.meishu.sdk.platform.csj.fullscreenvideo.CSJFullScreenVideoAd r2 = new com.meishu.sdk.platform.csj.fullscreenvideo.CSJFullScreenVideoAd     // Catch: java.lang.Throwable -> L4f
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.TTAdManager r3 = com.meishu.sdk.platform.csj.CSJAdConfig.getTtAdManager()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.loader.c r4 = r6.getAdLoader()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader r4 = (com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader) r4     // Catch: java.lang.Throwable -> L4f
            android.content.Context r4 = r4.getContext()     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.TTAdNative r3 = r3.createAdNative(r4)     // Catch: java.lang.Throwable -> L4f
            r6.adNative = r3     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.AdSlot$Builder r3 = new com.bytedance.sdk.openadsdk.AdSlot$Builder     // Catch: java.lang.Throwable -> L4f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.core.domain.SdkAdInfo r4 = r6.getSdkAdInfo()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r4 = r4.getPid()     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.AdSlot$Builder r3 = r3.setCodeId(r4)     // Catch: java.lang.Throwable -> L4f
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L4f
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r3.setExpressViewAcceptedSize(r0, r1)     // Catch: java.lang.Throwable -> L4f
            r1 = 1
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r0.setSupportDeepLink(r1)     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.AdSlot r0 = r0.build()     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.TTAdNative r1 = r6.adNative     // Catch: java.lang.Throwable -> L4f
            com.meishu.sdk.platform.csj.fullscreenvideo.CSJFullScreenVideoAdWrapper$1 r3 = new com.meishu.sdk.platform.csj.fullscreenvideo.CSJFullScreenVideoAdWrapper$1     // Catch: java.lang.Throwable -> L4f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f
            r1.loadFullScreenVideoAd(r0, r3)     // Catch: java.lang.Throwable -> L4f
            goto Lb8
        Lb5:
            r0.printStackTrace()
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.csj.fullscreenvideo.CSJFullScreenVideoAdWrapper.loadAd():void");
    }
}
