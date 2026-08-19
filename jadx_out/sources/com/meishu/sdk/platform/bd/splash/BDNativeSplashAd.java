package com.meishu.sdk.platform.bd.splash;

import android.view.ViewGroup;
import com.meishu.sdk.core.ad.splash.c;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class BDNativeSplashAd extends c {
    private BDSplashAdLoader adWrapper;
    private boolean showed;
    private SplashSkipView splashSkipView;

    public BDNativeSplashAd(BDSplashAdLoader bDSplashAdLoader) {
        super(bDSplashAdLoader, "BAIDU");
        this.adWrapper = bDSplashAdLoader;
    }

    public void setSkipView(SplashSkipView splashSkipView) {
        this.splashSkipView = splashSkipView;
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
        try {
            if (this.showed || this.adView == null) {
                return;
            }
            viewGroup.removeAllViews();
            viewGroup.addView(this.adView, -1, -1);
            this.showed = true;
            SplashSkipView splashSkipView = this.splashSkipView;
            if (splashSkipView != null) {
                splashSkipView.c();
            }
            super.showAd(viewGroup);
            p1.a(viewGroup, this.adWrapper.getAdLoader().getPosId(), this.adWrapper.getSdkAdInfo().getMsLoadedTime());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
