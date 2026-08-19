package com.meishu.sdk.platform.csj.image;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.meishu.sdk.core.ad.image.b;

/* loaded from: classes4.dex */
public class CSJTTAdNativeWrapper {
    private b adListener;
    private String posId;
    private TTAdNative ttAdNative;

    public CSJTTAdNativeWrapper(Activity activity, String str, b bVar) {
        this.ttAdNative = TTAdSdk.getAdManager().createAdNative(activity);
        this.posId = str;
        this.adListener = bVar;
    }

    public void loadData() {
        this.ttAdNative.loadNativeAd(new AdSlot.Builder().setCodeId(this.posId).setSupportDeepLink(true).setImageAcceptedSize(600, 257).setNativeAdType(1).setAdCount(1).build(), new CSJNativeAdListener(this, this.adListener));
    }
}
