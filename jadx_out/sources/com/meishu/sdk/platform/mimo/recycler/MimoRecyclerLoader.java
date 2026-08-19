package com.meishu.sdk.platform.mimo.recycler;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.recycler.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.mimo.MimoPlatformError;
import com.miui.zeus.mimo.sdk.NativeAd;
import com.miui.zeus.mimo.sdk.NativeAdData;
import com.miui.zeus.mimo.sdk.TemplateAd;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class MimoRecyclerLoader extends BasePlatformLoader<RecyclerMixAdLoader, a> {
    private static final String TAG = "MimoRecyclerLoader";

    public MimoRecyclerLoader(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
    }

    private void loadFeed() {
        final NativeAd nativeAd = new NativeAd();
        Log.e(TAG, "loadFeed");
        nativeAd.load(this.sdkAdInfo.getPid(), new NativeAd.NativeAdLoadListener() { // from class: com.meishu.sdk.platform.mimo.recycler.MimoRecyclerLoader.2
            public void onAdLoadFailed(int i2, String str) {
                LogUtil.i(MimoRecyclerLoader.TAG, "onAdLoadFailed" + i2 + ": " + str);
                new MimoPlatformError(str, Integer.valueOf(i2), MimoRecyclerLoader.this.getSdkAdInfo()).post(MimoRecyclerLoader.this.loadListener);
            }

            public void onAdLoadSuccess(final NativeAdData nativeAdData) {
                LogUtil.i(MimoRecyclerLoader.TAG, "NativeAd.onAdLoadSuccess");
                new Handler(Looper.getMainLooper()).post(new l() { // from class: com.meishu.sdk.platform.mimo.recycler.MimoRecyclerLoader.2.1
                    @Override // com.meishu.sdk.core.safe.l
                    public void safeRun() {
                        if (MimoRecyclerLoader.this.getLoaderListener() != null) {
                            ArrayList arrayList = new ArrayList();
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            arrayList.add(new MimoRecyclerAd(nativeAd, nativeAdData, MimoRecyclerLoader.this));
                            if (MimoRecyclerLoader.this.getLoaderListener() != null) {
                                MimoRecyclerLoader.this.getLoaderListener().onAdLoaded(arrayList);
                                MimoRecyclerLoader.this.getLoaderListener().onAdReady(arrayList);
                            }
                        }
                    }
                });
            }
        });
    }

    private void loadPreRender() {
        final TemplateAd templateAd = new TemplateAd();
        templateAd.load(this.sdkAdInfo.getPid(), new TemplateAd.TemplateAdLoadListener() { // from class: com.meishu.sdk.platform.mimo.recycler.MimoRecyclerLoader.1
            public void onAdLoadFailed(int i2, String str) {
                LogUtil.i(MimoRecyclerLoader.TAG, "TemplateAd.onAdLoadFailed" + i2 + ": " + str);
                new MimoPlatformError(str, Integer.valueOf(i2), MimoRecyclerLoader.this.getSdkAdInfo()).post(MimoRecyclerLoader.this.loadListener);
            }

            public void onAdLoaded() {
                LogUtil.i(MimoRecyclerLoader.TAG, "TemplateAd.onAdLoaded");
                new Handler(Looper.getMainLooper()).post(new l() { // from class: com.meishu.sdk.platform.mimo.recycler.MimoRecyclerLoader.1.1
                    @Override // com.meishu.sdk.core.safe.l
                    public void safeRun() {
                        StringBuilder sbA = com.meishu.sdk.activity.a.a("loadFeedAd success,主线程： ");
                        sbA.append(Thread.currentThread());
                        Log.e(MimoRecyclerLoader.TAG, sbA.toString());
                        if (MimoRecyclerLoader.this.getLoaderListener() != null) {
                            ArrayList arrayList = new ArrayList();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            arrayList.add(new MimoRecyclerAd(templateAd, MimoRecyclerLoader.this));
                            if (MimoRecyclerLoader.this.getLoaderListener() != null) {
                                MimoRecyclerLoader.this.getLoaderListener().onAdLoaded(arrayList);
                                MimoRecyclerLoader.this.getLoaderListener().onAdReady(arrayList);
                            }
                        }
                    }
                });
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
    
        if (r0 == 100000) goto L14;
     */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd() {
        /*
            r4 = this;
            Loader extends com.meishu.sdk.core.loader.c r0 = r4.adLoader
            com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader r0 = (com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader) r0
            android.content.Context r0 = r0.getContext()
            com.meishu.sdk.core.domain.SdkAdInfo r1 = r4.getSdkAdInfo()
            java.lang.String r1 = r1.getReq()
            java.lang.String r1 = com.meishu.sdk.core.utils.i0.a(r1)
            com.meishu.sdk.core.utils.i r2 = new com.meishu.sdk.core.utils.i
            r2.<init>()
            com.meishu.sdk.core.utils.a0.a(r0, r1, r2)
            com.meishu.sdk.core.loader.c r0 = r4.getAdLoader()
            com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader r0 = (com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader) r0
            int r0 = r0.getAdPatternType()
            r1 = 200000(0x30d40, float:2.8026E-40)
            if (r0 != r1) goto L51
            com.meishu.sdk.core.domain.SdkAdInfo r0 = r4.getSdkAdInfo()
            int r0 = r0.getDrawing()
            r1 = 1
            if (r0 != r1) goto L37
            goto L5a
        L37:
            r1 = 2
            if (r0 != r1) goto L3b
            goto L56
        L3b:
            com.meishu.sdk.platform.csj.CSJPlatformError r0 = new com.meishu.sdk.platform.csj.CSJPlatformError
            r1 = -1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.meishu.sdk.core.domain.SdkAdInfo r2 = r4.getSdkAdInfo()
            java.lang.String r3 = "信息流模式不支持"
            r0.<init>(r3, r1, r2)
            LoaderListener extends com.meishu.sdk.core.loader.IAdLoadListener r1 = r4.loadListener
            r0.post(r1)
            return
        L51:
            r1 = 100000(0x186a0, float:1.4013E-40)
            if (r0 != r1) goto L5a
        L56:
            r4.loadPreRender()
            return
        L5a:
            r4.loadFeed()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.mimo.recycler.MimoRecyclerLoader.loadAd():void");
    }
}
