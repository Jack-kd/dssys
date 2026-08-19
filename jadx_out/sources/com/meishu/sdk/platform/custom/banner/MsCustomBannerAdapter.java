package com.meishu.sdk.platform.custom.banner;

import android.text.TextUtils;
import android.view.View;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.banner.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;

/* loaded from: classes4.dex */
public abstract class MsCustomBannerAdapter extends BasePlatformLoader<BannerAdLoader, b> {
    private static final String TAG = "MsCustomBannerAdapter";

    public MsCustomBannerAdapter(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo) {
        super(bannerAdLoader, sdkAdInfo);
    }

    public abstract void destory();

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((BannerAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        loadCustomAd(getSdkAdInfo().getApp_id(), getSdkAdInfo().getApp_key(), getSdkAdInfo().getPid(), getSdkAdInfo().getCustom_ext());
    }

    public abstract void loadCustomAd(String str, String str2, String str3, String str4);

    public void onAdClick(MsCustomBannerAd msCustomBannerAd) {
        if (!TextUtils.isEmpty(getSdkAdInfo().getClk())) {
            LogUtil.d(TAG, "send onAdClicked");
            a.a(getContext(), f.a(getSdkAdInfo().getClk(), msCustomBannerAd));
        }
        if (msCustomBannerAd.getInteractionListener() != null) {
            msCustomBannerAd.getInteractionListener().onAdClicked();
        }
    }

    public void onAdClosed(MsCustomBannerAd msCustomBannerAd) {
        if (getLoaderListener() != null) {
            getLoaderListener().onAdClosed();
        }
        if (msCustomBannerAd.getInteractionListener() != null) {
            msCustomBannerAd.getInteractionListener().onAdClosed();
        }
    }

    public void onAdExposure(MsCustomBannerAd msCustomBannerAd) {
        i0.a(getSdkAdInfo(), msCustomBannerAd.getAdView());
        if (getLoaderListener() != null) {
            getLoaderListener().onAdExposure();
        }
        if (msCustomBannerAd.getInteractionListener() != null) {
            msCustomBannerAd.getInteractionListener().onAdExposure();
        }
    }

    public void onError(int i2, String str) {
        getLoaderListener().onAdPlatformError(new AdPlatformError(str, Integer.valueOf(i2)));
    }

    public void onRenderFail(int i2, String str) {
        if (getLoaderListener() != null) {
            getLoaderListener().onAdError();
            getLoaderListener().onAdRenderFail(str, i2);
        }
    }

    public void onRenderSuccess(View view, MsCustomBannerAd msCustomBannerAd) {
        msCustomBannerAd.setAdView(view);
        if (getLoaderListener() != null) {
            getLoaderListener().onAdLoaded(msCustomBannerAd);
            getLoaderListener().onAdReady(msCustomBannerAd);
        }
    }

    public void setEcpm(int i2) {
        if (getSdkAdInfo() == null || !"bidding".equals(getSdkAdInfo().getOtype())) {
            return;
        }
        getSdkAdInfo().setEcpm(String.valueOf(i2));
    }
}
