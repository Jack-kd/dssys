package com.meishu.sdk.platform.csj.reward;

import com.bytedance.sdk.openadsdk.TTAdNative;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.reward.a;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.csj.CSJAdConfig;

/* loaded from: classes4.dex */
public class CSJRewardVideoAdWrapper extends BasePlatformLoader<RewardVideoLoader, a> {
    private RewardAdMediaListener apiRewardAdMediaListener;
    private TTAdNative mTTAdNative;
    private MeishuAdInfo meishuAdInfo;

    public CSJRewardVideoAdWrapper(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
        this.mTTAdNative = CSJAdConfig.getTtAdManager().createAdNative(rewardVideoLoader.getContext());
        this.meishuAdInfo = meishuAdInfo;
    }

    public RewardAdMediaListener getApiRewardAdMediaListener() {
        return this.apiRewardAdMediaListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd() {
        /*
            r5 = this;
            Loader extends com.meishu.sdk.core.loader.c r0 = r5.adLoader     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.ad.reward.RewardVideoLoader r0 = (com.meishu.sdk.core.ad.reward.RewardVideoLoader) r0     // Catch: java.lang.Throwable -> L44
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L44
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L44
            android.view.WindowManager r0 = (android.view.WindowManager) r0     // Catch: java.lang.Throwable -> L44
            android.view.Display r0 = r0.getDefaultDisplay()     // Catch: java.lang.Throwable -> L44
            r0.getRotation()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo     // Catch: java.lang.Throwable -> L44
            int r0 = r0.getWidth()     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L47
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo     // Catch: java.lang.Throwable -> L44
            int r0 = r0.getHeight()     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L47
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo     // Catch: java.lang.Throwable -> L44
            int r0 = r0.getWidth()     // Catch: java.lang.Throwable -> L44
            if (r0 <= 0) goto L47
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo     // Catch: java.lang.Throwable -> L44
            int r0 = r0.getHeight()     // Catch: java.lang.Throwable -> L44
            if (r0 <= 0) goto L47
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r5.meishuAdInfo     // Catch: java.lang.Throwable -> L44
            int r0 = r0.getWidth()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.domain.MeishuAdInfo r1 = r5.meishuAdInfo     // Catch: java.lang.Throwable -> L44
            int r1 = r1.getHeight()     // Catch: java.lang.Throwable -> L44
            goto L67
        L44:
            r0 = move-exception
            goto Ld0
        L47:
            Loader extends com.meishu.sdk.core.loader.c r0 = r5.adLoader     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            com.meishu.sdk.core.ad.reward.RewardVideoLoader r0 = (com.meishu.sdk.core.ad.reward.RewardVideoLoader) r0     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            int r1 = r0.widthPixels     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            if (r1 <= 0) goto L63
            int r0 = r0.heightPixels     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L63
            if (r0 <= 0) goto L63
            r4 = r1
            r1 = r0
            r0 = r4
            goto L67
        L63:
            r0 = 1080(0x438, float:1.513E-42)
            r1 = 1920(0x780, float:2.69E-42)
        L67:
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = new com.bytedance.sdk.openadsdk.AdSlot$Builder     // Catch: java.lang.Throwable -> L44
            r2.<init>()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.domain.SdkAdInfo r3 = r5.sdkAdInfo     // Catch: java.lang.Throwable -> L44
            java.lang.String r3 = r3.getPid()     // Catch: java.lang.Throwable -> L44
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = r2.setCodeId(r3)     // Catch: java.lang.Throwable -> L44
            r3 = 1
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = r2.setSupportDeepLink(r3)     // Catch: java.lang.Throwable -> L44
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = r2.setImageAcceptedSize(r0, r1)     // Catch: java.lang.Throwable -> L44
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L44
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L44
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r2.setExpressViewAcceptedSize(r0, r1)     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.MSAdConfig r1 = com.meishu.sdk.core.AdSdk.adConfig()     // Catch: java.lang.Throwable -> L44
            java.lang.String r1 = r1.userId()     // Catch: java.lang.Throwable -> L44
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r0.setUserID(r1)     // Catch: java.lang.Throwable -> L44
            com.bytedance.sdk.openadsdk.AdSlot r0 = r0.build()     // Catch: java.lang.Throwable -> L44
            Loader extends com.meishu.sdk.core.loader.c r1 = r5.adLoader     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.ad.reward.RewardVideoLoader r1 = (com.meishu.sdk.core.ad.reward.RewardVideoLoader) r1     // Catch: java.lang.Throwable -> L44
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.domain.SdkAdInfo r2 = r5.getSdkAdInfo()     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = r2.getReq()     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = com.meishu.sdk.core.utils.i0.a(r2)     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.utils.i r3 = new com.meishu.sdk.core.utils.i     // Catch: java.lang.Throwable -> L44
            r3.<init>()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.utils.a0.a(r1, r2, r3)     // Catch: java.lang.Throwable -> L44
            boolean r1 = com.meishu.sdk.platform.csj.CSJAdConfig.isInitSuccess()     // Catch: java.lang.Throwable -> L44
            if (r1 != 0) goto Lc1
            r1 = 500(0x1f4, double:2.47E-321)
            java.lang.Thread.sleep(r1)     // Catch: java.lang.Throwable -> L44 java.lang.InterruptedException -> Lbd
            goto Lc1
        Lbd:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L44
        Lc1:
            com.bytedance.sdk.openadsdk.TTAdNative r1 = r5.mTTAdNative     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.platform.csj.reward.RewardVideoListenerAdapter r2 = new com.meishu.sdk.platform.csj.reward.RewardVideoListenerAdapter     // Catch: java.lang.Throwable -> L44
            LoaderListener extends com.meishu.sdk.core.loader.IAdLoadListener r3 = r5.loadListener     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.ad.reward.a r3 = (com.meishu.sdk.core.ad.reward.a) r3     // Catch: java.lang.Throwable -> L44
            r2.<init>(r5, r3)     // Catch: java.lang.Throwable -> L44
            r1.loadRewardVideoAd(r0, r2)     // Catch: java.lang.Throwable -> L44
            goto Ld3
        Ld0:
            r0.printStackTrace()
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.csj.reward.CSJRewardVideoAdWrapper.loadAd():void");
    }

    public void setApiRewardAdMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        this.apiRewardAdMediaListener = rewardAdMediaListener;
    }
}
