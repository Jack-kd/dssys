package com.meishu.sdk.core.ad.recycler;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;
import java.util.List;

/* loaded from: classes4.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerAdEventListener f31501a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31502b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31503c;

    public b(RecyclerMixAdLoader recyclerMixAdLoader, RecyclerAdEventListener recyclerAdEventListener) {
        this.f31501a = recyclerAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31501a == null || this.f31503c || this.f31502b) {
            return;
        }
        this.f31502b = true;
        if (AdSdk.adConfig() == null) {
            this.f31501a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), "SDK IS NOT INITED ！"));
        } else {
            this.f31501a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), ErrorCodeUtil.AD_LOAD_ERROR_MSG));
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.a, com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(List<RecyclerAdData> list) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(List<RecyclerAdData> list) {
        List<RecyclerAdData> list2 = list;
        RecyclerAdEventListener recyclerAdEventListener = this.f31501a;
        if (recyclerAdEventListener != null) {
            recyclerAdEventListener.onAdReady(list2);
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.a, com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31501a == null || this.f31502b || this.f31503c) {
            return;
        }
        this.f31503c = true;
        this.f31501a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }
}
