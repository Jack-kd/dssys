package com.meishu.sdk.core.ad.splash;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;

/* loaded from: classes4.dex */
public class e implements d {

    /* renamed from: a, reason: collision with root package name */
    public SplashAdEventListener f31509a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31510b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31511c;

    public e(SplashAdLoader splashAdLoader, SplashAdEventListener splashAdEventListener) {
        this.f31509a = splashAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31509a == null || this.f31511c || this.f31510b) {
            return;
        }
        this.f31510b = true;
        if (AdSdk.adConfig() == null) {
            this.f31509a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), "SDK IS NOT INITED ！"));
        } else {
            this.f31509a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), ErrorCodeUtil.AD_LOAD_ERROR_MSG));
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(ISplashAd iSplashAd) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(ISplashAd iSplashAd) {
        ISplashAd iSplashAd2 = iSplashAd;
        SplashAdEventListener splashAdEventListener = this.f31509a;
        if (splashAdEventListener != null) {
            splashAdEventListener.onAdReady(iSplashAd2);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31509a == null || this.f31510b || this.f31511c) {
            return;
        }
        this.f31511c = true;
        this.f31509a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdSkip(ISplashAd iSplashAd) {
        SplashAdEventListener splashAdEventListener = this.f31509a;
        if (splashAdEventListener != null) {
            splashAdEventListener.onAdSkip(iSplashAd);
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdTick(long j2) {
        SplashAdEventListener splashAdEventListener = this.f31509a;
        if (splashAdEventListener != null) {
            splashAdEventListener.onAdTick(j2);
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.d
    public void onAdTimeOver(ISplashAd iSplashAd) {
        SplashAdEventListener splashAdEventListener = this.f31509a;
        if (splashAdEventListener != null) {
            splashAdEventListener.onAdTimeOver(iSplashAd);
        }
    }
}
