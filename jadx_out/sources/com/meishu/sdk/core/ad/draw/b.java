package com.meishu.sdk.core.ad.draw;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;

/* loaded from: classes4.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public DrawAdEventListener f31487a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31488b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31489c;

    public b(DrawAdLoader drawAdLoader, DrawAdEventListener drawAdEventListener) {
        this.f31487a = drawAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31487a == null || this.f31488b || this.f31489c) {
            return;
        }
        this.f31488b = true;
        if (AdSdk.adConfig() == null) {
            this.f31487a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), "SDK IS NOT INITED ！"));
        } else {
            this.f31487a.onAdError(new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), ErrorCodeUtil.AD_LOAD_ERROR_MSG));
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(IDrawAd iDrawAd) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(IDrawAd iDrawAd) {
        IDrawAd iDrawAd2 = iDrawAd;
        DrawAdEventListener drawAdEventListener = this.f31487a;
        if (drawAdEventListener != null) {
            drawAdEventListener.onAdReady(iDrawAd2);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31487a == null || this.f31488b || this.f31489c) {
            return;
        }
        this.f31489c = true;
        this.f31487a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }
}
