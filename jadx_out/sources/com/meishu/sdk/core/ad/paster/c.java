package com.meishu.sdk.core.ad.paster;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;

/* loaded from: classes4.dex */
public class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public PasterAdEventListener f31498a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31499b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31500c;

    public c(PasterAdLoader pasterAdLoader, PasterAdEventListener pasterAdEventListener) {
        this.f31498a = pasterAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31498a == null || this.f31499b || this.f31500c) {
            return;
        }
        this.f31499b = true;
        if (AdSdk.adConfig() == null) {
            this.f31498a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), "SDK IS NOT INITED ！"));
        } else {
            this.f31498a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), ErrorCodeUtil.AD_LOAD_ERROR_MSG));
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(PasterAd pasterAd) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(PasterAd pasterAd) {
        PasterAd pasterAd2 = pasterAd;
        PasterAdEventListener pasterAdEventListener = this.f31498a;
        if (pasterAdEventListener != null) {
            pasterAdEventListener.onAdReady(pasterAd2);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31498a == null || this.f31499b || this.f31500c) {
            return;
        }
        this.f31500c = true;
        this.f31498a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }

    @Override // com.meishu.sdk.core.ad.paster.b
    public void onVideoComplete() {
        PasterAdEventListener pasterAdEventListener = this.f31498a;
        if (pasterAdEventListener != null) {
            pasterAdEventListener.onVideoComplete();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.b
    public void onVideoError() {
    }

    @Override // com.meishu.sdk.core.ad.paster.b
    public void onVideoLoaded() {
        PasterAdEventListener pasterAdEventListener = this.f31498a;
        if (pasterAdEventListener != null) {
            pasterAdEventListener.onVideoLoaded();
        }
    }
}
