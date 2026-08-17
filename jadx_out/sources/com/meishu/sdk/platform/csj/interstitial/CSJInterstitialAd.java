package com.meishu.sdk.platform.csj.interstitial;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.interstitial.InterstitialAd;
import com.meishu.sdk.core.ad.interstitial.b;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.meishu_ad.lifecycle.c;
import com.meishu.sdk.meishu_ad.lifecycle.d;

/* loaded from: classes4.dex */
public class CSJInterstitialAd extends InterstitialAd {
    private static final String TAG = "CSJInterstitialAd";
    private final TTNativeExpressAd ad;
    private b adListener;
    private CSJInterstitialAdWrapper adWrapper;
    private boolean isClick;
    private c lifecycleHelper;
    private d lifecycleListener;

    public CSJInterstitialAd(CSJInterstitialAdWrapper cSJInterstitialAdWrapper, b bVar, TTNativeExpressAd tTNativeExpressAd) {
        super(cSJInterstitialAdWrapper, "CSJ");
        this.lifecycleListener = new d() { // from class: com.meishu.sdk.platform.csj.interstitial.CSJInterstitialAd.1
            @Override // com.meishu.sdk.meishu_ad.lifecycle.d
            public void onDestroy() {
                LogUtil.e(CSJInterstitialAd.TAG, "onDestroy");
            }

            @Override // com.meishu.sdk.meishu_ad.lifecycle.d
            public void onPause() {
                LogUtil.e(CSJInterstitialAd.TAG, "onPause");
                try {
                    if (CSJInterstitialAd.this.ad == null || CSJInterstitialAd.this.isClick) {
                        CSJInterstitialAd.this.isClick = false;
                        return;
                    }
                    View expressAdView = CSJInterstitialAd.this.ad.getExpressAdView();
                    if (expressAdView == null || !(expressAdView instanceof ViewGroup) || expressAdView.getParent() == null || expressAdView.getParent().getParent() == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) expressAdView.getParent().getParent();
                    if (viewGroup.getChildCount() > 2) {
                        viewGroup.getChildAt(2).performClick();
                        LogUtil.e(CSJInterstitialAd.TAG, "closeView=" + viewGroup.getChildAt(2));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.meishu.sdk.meishu_ad.lifecycle.d
            public void onResume() {
            }

            @Override // com.meishu.sdk.meishu_ad.lifecycle.d
            public void onStart() {
            }

            @Override // com.meishu.sdk.meishu_ad.lifecycle.d
            public void onStop() {
                LogUtil.e(CSJInterstitialAd.TAG, "onStop");
            }
        };
        this.adWrapper = cSJInterstitialAdWrapper;
        this.adListener = bVar;
        this.ad = tTNativeExpressAd;
    }

    public b getAdListener() {
        return this.adListener;
    }

    public CSJInterstitialAdWrapper getAdWrapper() {
        return this.adWrapper;
    }

    public void setClick() {
        this.isClick = true;
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd() {
        if (AdSdk.adConfig().getEnableInterstitialAutoClose()) {
            if (this.lifecycleHelper == null) {
                this.lifecycleHelper = new c();
            }
            if (this.adWrapper.getContext() != null) {
                this.lifecycleHelper.f32297b = (Activity) this.adWrapper.getContext();
                this.lifecycleHelper.a(this.lifecycleListener);
            }
        }
        this.ad.showInteractionExpressAd((Activity) this.adWrapper.getContext());
        super.showAd();
    }

    @Override // com.meishu.sdk.core.ad.interstitial.InterstitialAd
    public void showAd(Activity activity) {
        if (AdSdk.adConfig().getEnableInterstitialAutoClose()) {
            if (this.lifecycleHelper == null) {
                this.lifecycleHelper = new c();
            }
            if (activity != null) {
                c cVar = this.lifecycleHelper;
                cVar.f32297b = activity;
                cVar.a(this.lifecycleListener);
            }
        }
        this.ad.showInteractionExpressAd(activity);
        super.showAd(activity);
    }
}
