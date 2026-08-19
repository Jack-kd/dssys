package com.meishu.sdk.core.ad.interstitial;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;

/* loaded from: classes4.dex */
public class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public InterstitialAdEventListener f31493a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31494b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31495c;

    public a(InterstitialAdLoader interstitialAdLoader, InterstitialAdEventListener interstitialAdEventListener) {
        this.f31493a = interstitialAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31493a == null || this.f31494b || this.f31495c) {
            return;
        }
        this.f31494b = true;
        if (AdSdk.adConfig() == null) {
            this.f31493a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), "SDK IS NOT INITED ！"));
        } else {
            this.f31493a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), ErrorCodeUtil.AD_LOAD_ERROR_MSG));
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(InterstitialAd interstitialAd) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(InterstitialAd interstitialAd) {
        InterstitialAd interstitialAd2 = interstitialAd;
        InterstitialAdEventListener interstitialAdEventListener = this.f31493a;
        if (interstitialAdEventListener != null) {
            interstitialAdEventListener.onAdReady(interstitialAd2);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31493a == null || this.f31494b || this.f31495c) {
            return;
        }
        this.f31495c = true;
        this.f31493a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }
}
