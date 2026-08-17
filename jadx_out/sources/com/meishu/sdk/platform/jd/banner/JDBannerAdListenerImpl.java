package com.meishu.sdk.platform.jd.banner;

import android.text.TextUtils;
import android.view.View;
import com.jd.ad.sdk.banner.JADBanner;
import com.jd.ad.sdk.banner.JADBannerListener;
import com.meishu.sdk.core.ad.banner.b;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.jd.JDPlatformError;

/* loaded from: classes4.dex */
public class JDBannerAdListenerImpl implements JADBannerListener {
    private static final String TAG = "JDBannerAdListenerImpl";
    private JDBannerAd jdBannerAd;
    private JDBannerAdWrapper jdBannerAdWrapper;
    private b loadListener;

    public JDBannerAdListenerImpl(JDBannerAdWrapper jDBannerAdWrapper, b bVar, JDBannerAd jDBannerAd) {
        this.jdBannerAdWrapper = jDBannerAdWrapper;
        this.loadListener = bVar;
        this.jdBannerAd = jDBannerAd;
    }

    public void onClick() {
        if (this.jdBannerAdWrapper.getSdkAdInfo() != null && !TextUtils.isEmpty(this.jdBannerAdWrapper.getSdkAdInfo().getClk())) {
            LogUtil.d(TAG, "send onADClicked");
            a.a(this.jdBannerAdWrapper.getContext(), f.a(this.jdBannerAdWrapper.getSdkAdInfo().getClk(), this.jdBannerAd));
        }
        JDBannerAd jDBannerAd = this.jdBannerAd;
        if (jDBannerAd == null || jDBannerAd.getInteractionListener() == null) {
            return;
        }
        this.jdBannerAd.getInteractionListener().onAdClicked();
    }

    public void onClose() {
        b bVar = this.loadListener;
        if (bVar != null) {
            bVar.onAdClosed();
        }
        JDBannerAd jDBannerAd = this.jdBannerAd;
        if (jDBannerAd == null || jDBannerAd.getInteractionListener() == null) {
            return;
        }
        this.jdBannerAd.getInteractionListener().onAdClosed();
    }

    public void onExposure() {
        i0.a(this.jdBannerAdWrapper.getSdkAdInfo(), this.jdBannerAd.getAdView());
        b bVar = this.loadListener;
        if (bVar != null) {
            bVar.onAdExposure();
        }
        JDBannerAd jDBannerAd = this.jdBannerAd;
        if (jDBannerAd == null || jDBannerAd.getInteractionListener() == null) {
            return;
        }
        this.jdBannerAd.getInteractionListener().onAdExposure();
    }

    public void onLoadFailure(int i2, String str) {
        new JDPlatformError(str, Integer.valueOf(i2), this.jdBannerAdWrapper.getSdkAdInfo()).post(this.loadListener);
    }

    public void onLoadSuccess() {
        try {
            JDBannerAd jDBannerAd = this.jdBannerAd;
            if (jDBannerAd != null && jDBannerAd.getBannerAd() != null) {
                this.jdBannerAdWrapper.getSdkAdInfo().getRsp();
                this.jdBannerAdWrapper.getSdkAdInfo().getImp();
                JADBanner bannerAd = this.jdBannerAd.getBannerAd();
                if (bannerAd.getExtra() != null) {
                    int price = bannerAd.getExtra().getPrice();
                    this.jdBannerAdWrapper.getSdkAdInfo().setEcpm(price + "");
                }
            }
            b bVar = this.loadListener;
            if (bVar != null) {
                bVar.onAdLoaded(this.jdBannerAd);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onRenderFailure(int i2, String str) {
        b bVar = this.loadListener;
        if (bVar != null) {
            bVar.onAdRenderFail(str, i2);
        }
        new JDPlatformError(str, Integer.valueOf(i2), this.jdBannerAdWrapper.getSdkAdInfo()).post(this.loadListener);
    }

    public void onRenderSuccess(View view) {
        this.jdBannerAd.setAdView(view);
        b bVar = this.loadListener;
        if (bVar != null) {
            bVar.onAdReady(this.jdBannerAd);
        }
    }
}
