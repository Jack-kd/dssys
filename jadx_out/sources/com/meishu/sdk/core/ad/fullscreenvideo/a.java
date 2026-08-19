package com.meishu.sdk.core.ad.fullscreenvideo;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;

/* loaded from: classes4.dex */
public class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public FullScreenAdEventListener f31490a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31491b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31492c;

    public a(FullScreenVideoAdLoader fullScreenVideoAdLoader, FullScreenAdEventListener fullScreenAdEventListener) {
        this.f31490a = fullScreenAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31490a == null || this.f31491b || this.f31492c) {
            return;
        }
        this.f31491b = true;
        if (AdSdk.adConfig() == null) {
            this.f31490a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), "SDK IS NOT INITED ！"));
        } else {
            this.f31490a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), ErrorCodeUtil.AD_LOAD_ERROR_MSG));
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(IFullScreenVideoAd iFullScreenVideoAd) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(IFullScreenVideoAd iFullScreenVideoAd) {
        IFullScreenVideoAd iFullScreenVideoAd2 = iFullScreenVideoAd;
        FullScreenAdEventListener fullScreenAdEventListener = this.f31490a;
        if (fullScreenAdEventListener != null) {
            fullScreenAdEventListener.onAdReady(iFullScreenVideoAd2);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31490a == null || this.f31491b || this.f31492c) {
            return;
        }
        this.f31492c = true;
        this.f31490a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }
}
