package com.meishu.sdk.platform.csj.interstitial;

import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.ad.interstitial.b;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.csj.CSJAdConfig;

/* loaded from: classes4.dex */
public class CSJInterstitialAdWrapper extends BasePlatformLoader<InterstitialAdLoader, b> {
    private static final String TAG = "CSJInterstitialAdWrappe";
    private MeishuAdInfo meishuAdInfo;
    private TTAdNative ttAdNative;
    private TTNativeExpressAd ttNativeExpressAd;

    public CSJInterstitialAdWrapper(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(interstitialAdLoader, sdkAdInfo);
        this.ttAdNative = CSJAdConfig.getTtAdManager().createAdNative(interstitialAdLoader.getContext());
        this.meishuAdInfo = meishuAdInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadNewInterstitial() {
        /*
            r5 = this;
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo
            int r0 = r0.getWidth()
            if (r0 == 0) goto L2d
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo
            int r0 = r0.getHeight()
            if (r0 == 0) goto L2d
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo
            int r0 = r0.getWidth()
            if (r0 <= 0) goto L2d
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo
            int r0 = r0.getHeight()
            if (r0 <= 0) goto L2d
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo
            int r0 = r0.getWidth()
            com.meishu.sdk.core.domain.MeishuAdInfo r1 = r5.meishuAdInfo
            int r1 = r1.getHeight()
            goto L4d
        L2d:
            Loader extends com.meishu.sdk.core.loader.c r0 = r5.adLoader     // Catch: java.lang.Exception -> L49
            com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader r0 = (com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader) r0     // Catch: java.lang.Exception -> L49
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L49
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Exception -> L49
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch: java.lang.Exception -> L49
            int r1 = r0.widthPixels     // Catch: java.lang.Exception -> L49
            if (r1 <= 0) goto L49
            int r0 = r0.heightPixels     // Catch: java.lang.Exception -> L49
            if (r0 <= 0) goto L49
            r4 = r1
            r1 = r0
            r0 = r4
            goto L4d
        L49:
            r0 = 1080(0x438, float:1.513E-42)
            r1 = 1920(0x780, float:2.69E-42)
        L4d:
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = new com.bytedance.sdk.openadsdk.AdSlot$Builder
            r2.<init>()
            com.meishu.sdk.core.domain.SdkAdInfo r3 = r5.getSdkAdInfo()
            java.lang.String r3 = r3.getPid()
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = r2.setCodeId(r3)
            float r0 = (float) r0
            float r1 = (float) r1
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r2.setExpressViewAcceptedSize(r0, r1)
            r1 = 1
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r0.setSupportDeepLink(r1)
            com.bytedance.sdk.openadsdk.AdSlot r0 = r0.build()
            com.bytedance.sdk.openadsdk.TTAdNative r1 = r5.ttAdNative
            com.meishu.sdk.platform.csj.interstitial.CSJInterstitialAdWrapper$1 r2 = new com.meishu.sdk.platform.csj.interstitial.CSJInterstitialAdWrapper$1
            r2.<init>()
            r1.loadFullScreenVideoAd(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.csj.interstitial.CSJInterstitialAdWrapper.loadNewInterstitial():void");
    }

    private void loadOldInterstitial() {
        int width;
        int height;
        float fFloatValue;
        if (this.meishuAdInfo.getWidth() == 0 || this.meishuAdInfo.getHeight() == 0) {
            width = 1080;
            height = 1920;
        } else {
            width = this.meishuAdInfo.getWidth();
            height = this.meishuAdInfo.getHeight();
        }
        DisplayMetrics displayMetrics = this.context.getApplicationContext().getResources().getDisplayMetrics();
        Float f2 = (Float) this.localParams.get("KEY_WIDTH");
        Float f3 = (Float) this.localParams.get("KEY_HEIGHT");
        float fFloatValue2 = 0.0f;
        if (f2 == null || f3 == null || f2.floatValue() == 0.0f) {
            fFloatValue = ((displayMetrics.widthPixels / displayMetrics.density) * 3.0f) / 4.0f;
        } else {
            fFloatValue = f2.floatValue();
            fFloatValue2 = f3.floatValue();
        }
        new AdSlot.Builder().setCodeId(getSdkAdInfo().getPid()).setSupportDeepLink(true).setImageAcceptedSize(width, height).setExpressViewAcceptedSize(fFloatValue, fFloatValue2).build();
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        TTNativeExpressAd tTNativeExpressAd = this.ttNativeExpressAd;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            a0.a(((InterstitialAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
            if (!CSJAdConfig.isInitSuccess()) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            loadNewInterstitial();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTtNativeExpressAd(TTNativeExpressAd tTNativeExpressAd) {
        this.ttNativeExpressAd = tTNativeExpressAd;
    }
}
