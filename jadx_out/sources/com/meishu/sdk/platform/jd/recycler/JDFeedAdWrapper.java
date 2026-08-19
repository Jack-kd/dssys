package com.meishu.sdk.platform.jd.recycler;

import android.util.DisplayMetrics;
import com.jd.ad.sdk.dl.addata.JADMaterialData;
import com.jd.ad.sdk.dl.model.JADSlot;
import com.jd.ad.sdk.feed.JADFeed;
import com.jd.ad.sdk.nativead.JADNative;
import com.jd.ad.sdk.nativead.JADNativeLoadListener;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.recycler.a;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.jd.JDPlatformError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class JDFeedAdWrapper extends BasePlatformLoader<RecyclerMixAdLoader, a> {
    private static final String TAG = "JDFeedAdWrapper";
    private JADFeed jadFeed;
    private MeishuAdInfo meishuAdInfo;

    public JDFeedAdWrapper(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo, MeishuAdInfo meishuAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
        this.meishuAdInfo = meishuAdInfo;
    }

    private void loadExpressAd() {
        float fIntValue;
        float f2;
        DisplayMetrics displayMetrics = this.context.getApplicationContext().getResources().getDisplayMetrics();
        if (getAdLoader().getAccept_ad_width() == null || getAdLoader().getAccept_ad_width().intValue() <= 0) {
            fIntValue = displayMetrics.widthPixels;
            f2 = displayMetrics.density;
        } else {
            fIntValue = getAdLoader().getAccept_ad_width().intValue();
            f2 = displayMetrics.density;
        }
        JADSlot jADSlotBuild = new JADSlot.Builder().setSlotID(getSdkAdInfo().getPid()).setSize(fIntValue / f2, (getAdLoader().getAccept_ad_height() == null || getAdLoader().getAccept_ad_height().intValue() <= 0) ? 0.0f : getAdLoader().getAccept_ad_height().intValue() / displayMetrics.density).build();
        JDExpressFeedAd jDExpressFeedAd = new JDExpressFeedAd(this);
        JADFeed jADFeed = new JADFeed(((RecyclerMixAdLoader) this.adLoader).getContext(), jADSlotBuild);
        this.jadFeed = jADFeed;
        jDExpressFeedAd.setFeedAd(jADFeed);
        this.jadFeed.loadAd(new JDFeedAdListenerImpl(this, (a) this.loadListener, jDExpressFeedAd));
    }

    private void loadNativeAd() {
        float width;
        float f2;
        DisplayMetrics displayMetrics = this.context.getApplicationContext().getResources().getDisplayMetrics();
        if (this.meishuAdInfo.getWidth() > 0) {
            width = this.meishuAdInfo.getWidth();
            f2 = displayMetrics.density;
        } else {
            width = displayMetrics.widthPixels;
            f2 = displayMetrics.density;
        }
        float f3 = width / f2;
        final JADNative jADNative = new JADNative(new JADSlot.Builder().setSlotID(getSdkAdInfo().getPid()).setImageSize(f3, this.meishuAdInfo.getHeight() > 0 ? this.meishuAdInfo.getHeight() / displayMetrics.density : (9.0f * f3) / 16.0f).setAdType(2).build());
        jADNative.loadAd(new JADNativeLoadListener() { // from class: com.meishu.sdk.platform.jd.recycler.JDFeedAdWrapper.1
            public void onLoadFailure(int i2, String str) {
                LogUtil.e(JDFeedAdWrapper.TAG, "onNoAD, code: " + i2 + ", msg: " + str);
                new JDPlatformError(str, Integer.valueOf(i2), JDFeedAdWrapper.this.getSdkAdInfo()).post(JDFeedAdWrapper.this.getLoaderListener());
            }

            public void onLoadSuccess() {
                List dataList = jADNative.getDataList();
                if (dataList.size() <= 0) {
                    StringBuilder sbA = com.meishu.sdk.activity.a.a("list size is ");
                    sbA.append(dataList.size());
                    new JDPlatformError(sbA.toString(), 0, JDFeedAdWrapper.this.getSdkAdInfo()).post(JDFeedAdWrapper.this.getLoaderListener());
                    return;
                }
                JDFeedAdWrapper.this.getSdkAdInfo().setEcpm(String.valueOf(jADNative.getJADExtra().getPrice()));
                ArrayList arrayList = new ArrayList();
                Iterator it = dataList.iterator();
                if (it.hasNext()) {
                    JADMaterialData jADMaterialData = (JADMaterialData) it.next();
                    JDNativeFeedAd jDNativeFeedAd = new JDNativeFeedAd(JDFeedAdWrapper.this);
                    jDNativeFeedAd.setFeedAd(jADMaterialData, jADNative);
                    arrayList.add(jDNativeFeedAd);
                }
                ((a) JDFeedAdWrapper.this.loadListener).onAdLoaded(arrayList);
                ((a) JDFeedAdWrapper.this.loadListener).onAdReady(arrayList);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
    
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
            android.content.Context r0 = r0.getApplicationContext()
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
            if (r0 != r1) goto L55
            com.meishu.sdk.core.domain.SdkAdInfo r0 = r4.getSdkAdInfo()
            int r0 = r0.getDrawing()
            r1 = 1
            if (r0 != r1) goto L3b
            goto L5e
        L3b:
            r1 = 2
            if (r0 != r1) goto L3f
            goto L5a
        L3f:
            com.meishu.sdk.platform.csj.CSJPlatformError r0 = new com.meishu.sdk.platform.csj.CSJPlatformError
            r1 = -1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.meishu.sdk.core.domain.SdkAdInfo r2 = r4.getSdkAdInfo()
            java.lang.String r3 = "信息流模式不支持"
            r0.<init>(r3, r1, r2)
            LoaderListener extends com.meishu.sdk.core.loader.IAdLoadListener r1 = r4.loadListener
            r0.post(r1)
            return
        L55:
            r1 = 100000(0x186a0, float:1.4013E-40)
            if (r0 != r1) goto L5e
        L5a:
            r4.loadExpressAd()
            return
        L5e:
            r4.loadNativeAd()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.jd.recycler.JDFeedAdWrapper.loadAd():void");
    }
}
