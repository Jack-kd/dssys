package com.meishu.sdk.platform.csj.recycler;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.recycler.a;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.csj.CSJAdConfig;
import com.meishu.sdk.platform.csj.CSJPlatformError;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class CSJTTAdNativeWrapper extends BasePlatformLoader<RecyclerMixAdLoader, a> {
    private static final String TAG = "CSJTTAdNativeWrapper";
    private CSJFeedAdListener listener;
    private MeishuAdInfo meishuAdInfo;
    private TTAdNative ttAdNative;

    public CSJTTAdNativeWrapper(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
        this.ttAdNative = CSJAdConfig.getTtAdManager().createAdNative(recyclerMixAdLoader.getContext().getApplicationContext());
        this.meishuAdInfo = meishuAdInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMediationExpressAd(AdSlot adSlot) {
        this.ttAdNative.loadFeedAd(adSlot, new TTAdNative.FeedAdListener() { // from class: com.meishu.sdk.platform.csj.recycler.CSJTTAdNativeWrapper.2
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onError(int i2, String str) {
                try {
                    new CSJPlatformError(str, Integer.valueOf(i2), CSJTTAdNativeWrapper.this.getSdkAdInfo()).post(CSJTTAdNativeWrapper.this.loadListener);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onFeedAdLoad(List<TTFeedAd> list) {
                if (list != null) {
                    try {
                        if (CSJTTAdNativeWrapper.this.getLoaderListener() != null) {
                            ArrayList arrayList = new ArrayList();
                            for (final TTFeedAd tTFeedAd : list) {
                                final MediationNativeManager mediationManager = tTFeedAd.getMediationManager();
                                if (mediationManager != null && mediationManager.isExpress()) {
                                    final CSJMediationExpressAd cSJMediationExpressAd = new CSJMediationExpressAd(CSJTTAdNativeWrapper.this, tTFeedAd);
                                    arrayList.add(cSJMediationExpressAd);
                                    tTFeedAd.setExpressRenderListener(new MediationExpressRenderListener() { // from class: com.meishu.sdk.platform.csj.recycler.CSJTTAdNativeWrapper.2.1
                                        @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                                        public void onAdClick() {
                                            try {
                                                if (!TextUtils.isEmpty(CSJTTAdNativeWrapper.this.getSdkAdInfo().getClk())) {
                                                    LogUtil.d(CSJTTAdNativeWrapper.TAG, "send onAdClicked");
                                                    a0.a(CSJTTAdNativeWrapper.this.getContext().getApplicationContext(), f.a(CSJTTAdNativeWrapper.this.getSdkAdInfo().getClk(), cSJMediationExpressAd), new i());
                                                }
                                                CSJTTAdNativeWrapper.this.getSdkAdInfo().getMsLoadedTime();
                                                CSJTTAdNativeWrapper.this.getAdLoader().getPosId();
                                                if (cSJMediationExpressAd.getRecylcerAdInteractionListener() != null) {
                                                    cSJMediationExpressAd.getRecylcerAdInteractionListener().onAdClicked();
                                                }
                                            } catch (Throwable th) {
                                                th.printStackTrace();
                                            }
                                        }

                                        @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                                        public void onAdShow() {
                                            try {
                                                CSJTTAdNativeWrapper.this.getSdkAdInfo().setGmShowEcpm(mediationManager.getShowEcpm().getEcpm());
                                            } catch (Exception e2) {
                                                e2.printStackTrace();
                                            }
                                            try {
                                                i0.a(CSJTTAdNativeWrapper.this.getSdkAdInfo(), cSJMediationExpressAd.getAdView());
                                                if (CSJTTAdNativeWrapper.this.getLoaderListener() != null && !cSJMediationExpressAd.isHasExposed()) {
                                                    cSJMediationExpressAd.setHasExposed(true);
                                                    CSJTTAdNativeWrapper.this.getLoaderListener().onAdExposure();
                                                }
                                                if (cSJMediationExpressAd.getRecylcerAdInteractionListener() != null) {
                                                    cSJMediationExpressAd.getRecylcerAdInteractionListener().onAdExposure();
                                                }
                                            } catch (Throwable th) {
                                                th.printStackTrace();
                                            }
                                        }

                                        @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                                        public void onRenderFail(View view, String str, int i2) {
                                            try {
                                                if (cSJMediationExpressAd.getRecylcerAdInteractionListener() != null) {
                                                    cSJMediationExpressAd.getRecylcerAdInteractionListener().onAdRenderFailed();
                                                }
                                            } catch (Throwable th) {
                                                th.printStackTrace();
                                            }
                                        }

                                        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.ExpressRenderListener
                                        public void onRenderSuccess(View view, float f2, float f3, boolean z2) {
                                            try {
                                                cSJMediationExpressAd.setAdView(tTFeedAd.getAdView());
                                                ArrayList arrayList2 = new ArrayList();
                                                arrayList2.add(cSJMediationExpressAd);
                                                CSJTTAdNativeWrapper.this.getLoaderListener().onAdReady(arrayList2);
                                            } catch (Throwable th) {
                                                th.printStackTrace();
                                            }
                                        }
                                    });
                                    tTFeedAd.render();
                                }
                            }
                            CSJTTAdNativeWrapper.this.getLoaderListener().onAdLoaded(arrayList);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        });
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        this.context = null;
        this.ttAdNative = null;
        CSJFeedAdListener cSJFeedAdListener = this.listener;
        if (cSJFeedAdListener != null) {
            cSJFeedAdListener.destroy();
            this.listener = null;
        }
    }

    public a getAdListener() {
        return (a) this.loadListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        ExecutorService executorService = h0.f31906a;
        h0.b.f31910a.a(new l() { // from class: com.meishu.sdk.platform.csj.recycler.CSJTTAdNativeWrapper.1
            /* JADX WARN: Code restructure failed: missing block: B:42:0x0188, code lost:
            
                if (r2 == 100000) goto L43;
             */
            @Override // com.meishu.sdk.core.safe.l
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void safeRun() {
                /*
                    Method dump skipped, instructions count: 448
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.csj.recycler.CSJTTAdNativeWrapper.AnonymousClass1.safeRun():void");
            }
        });
    }
}
