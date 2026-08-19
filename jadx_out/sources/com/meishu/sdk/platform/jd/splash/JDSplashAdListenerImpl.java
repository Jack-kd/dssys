package com.meishu.sdk.platform.jd.splash;

import android.text.TextUtils;
import android.view.View;
import com.jd.ad.sdk.splash.JADSplash;
import com.jd.ad.sdk.splash.JADSplashListener;
import com.meishu.sdk.core.ad.splash.d;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.jd.JDPlatformError;

/* loaded from: classes4.dex */
public class JDSplashAdListenerImpl implements JADSplashListener {
    private static final String TAG = "JDSplashAdListenerImpl";
    private boolean autoShow;
    private JDSplashAdWrapper jdSplashAdWrapper;
    private boolean loadSuccess;
    private d splashADListener;
    private JDSplashAd splashAd;

    public JDSplashAdListenerImpl(JDSplashAdWrapper jDSplashAdWrapper, d dVar, JDSplashAd jDSplashAd, boolean z2) {
        this.jdSplashAdWrapper = jDSplashAdWrapper;
        this.splashADListener = dVar;
        this.splashAd = jDSplashAd;
        this.autoShow = z2;
    }

    public void onClick() {
        if (this.jdSplashAdWrapper.getSdkAdInfo() != null && !TextUtils.isEmpty(this.jdSplashAdWrapper.getSdkAdInfo().getClk())) {
            LogUtil.d(TAG, "send onADClicked");
            a.a(this.jdSplashAdWrapper.getContext(), f.a(this.jdSplashAdWrapper.getSdkAdInfo().getClk(), this.splashAd));
        }
        JDSplashAd jDSplashAd = this.splashAd;
        if (jDSplashAd == null || jDSplashAd.getInteractionListener() == null) {
            return;
        }
        this.splashAd.getInteractionListener().onAdClicked();
    }

    public void onClose() {
        LogUtil.d(TAG, "onADDismissed: ");
        d dVar = this.splashADListener;
        if (dVar != null && this.loadSuccess) {
            dVar.onAdClosed();
        }
        JDSplashAd jDSplashAd = this.splashAd;
        if (jDSplashAd == null || jDSplashAd.getInteractionListener() == null) {
            return;
        }
        this.splashAd.getInteractionListener().onAdClosed();
    }

    public void onExposure() {
        i0.a(this.jdSplashAdWrapper.getSdkAdInfo(), this.splashAd.getAdView());
        d dVar = this.splashADListener;
        if (dVar != null) {
            dVar.onAdExposure();
        }
        JDSplashAd jDSplashAd = this.splashAd;
        if (jDSplashAd == null || jDSplashAd.getInteractionListener() == null) {
            return;
        }
        this.splashAd.getInteractionListener().onAdExposure();
    }

    public void onLoadFailure(int i2, String str) {
        new JDPlatformError(str, Integer.valueOf(i2), this.jdSplashAdWrapper.getSdkAdInfo()).post(this.splashADListener);
    }

    public void onLoadSuccess() {
        JDSplashAd jDSplashAd = this.splashAd;
        if (jDSplashAd == null || jDSplashAd.getSplashAd() == null) {
            return;
        }
        this.loadSuccess = true;
        JADSplash splashAd = this.splashAd.getSplashAd();
        if (splashAd.getJADExtra() != null) {
            this.jdSplashAdWrapper.getSdkAdInfo().setEcpm(String.valueOf(splashAd.getJADExtra().getPrice()));
        }
    }

    public void onRenderFailure(int i2, String str) {
        d dVar = this.splashADListener;
        if (dVar != null) {
            dVar.onAdRenderFail(str, i2);
        }
        new JDPlatformError(str, Integer.valueOf(i2), this.jdSplashAdWrapper.getSdkAdInfo()).post(this.splashADListener);
    }

    public void onRenderSuccess(View view) {
        this.splashAd.setAdView(view);
        d dVar = this.splashADListener;
        if (dVar != null) {
            dVar.onAdLoaded(this.splashAd);
            this.splashADListener.onAdReady(this.splashAd);
            this.splashADListener.onAdPresent(this.splashAd);
        }
    }
}
