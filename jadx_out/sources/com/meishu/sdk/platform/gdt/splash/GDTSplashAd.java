package com.meishu.sdk.platform.gdt.splash;

import android.view.ViewGroup;
import com.meishu.sdk.core.ad.splash.c;
import com.meishu.sdk.core.utils.p1;
import com.qq.e.ads.splash.SplashAD;

/* loaded from: classes4.dex */
public class GDTSplashAd extends c {
    private static final String TAG = "GDTSplashAd";
    private GDTSplashAdWrapper adWrapper;
    private boolean autoShow;
    private boolean showed;
    private SplashAD splashAD;

    public GDTSplashAd(GDTSplashAdWrapper gDTSplashAdWrapper, boolean z2) {
        super(gDTSplashAdWrapper, "GDT");
        this.adWrapper = gDTSplashAdWrapper;
        this.autoShow = z2;
    }

    @Override // com.meishu.sdk.core.ad.a
    public Object getSdkAd() {
        return this.splashAD;
    }

    public SplashAD getSplashAd() {
        return this.splashAD;
    }

    public void setSplashAD(SplashAD splashAD) {
        this.splashAD = splashAD;
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
        try {
            if (this.showed) {
                return;
            }
            viewGroup.removeAllViews();
            if (this.adWrapper.getAdLoader().isSplashFullScreen()) {
                this.splashAD.showFullScreenAd(viewGroup);
            } else {
                this.splashAD.showAd(viewGroup);
            }
            this.showed = true;
            super.showAd(viewGroup);
            p1.a(viewGroup, this.adWrapper.getAdLoader().getPosId(), this.adWrapper.getSdkAdInfo().getMsLoadedTime());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void splashAnimationFinish() {
        SplashAD splashAD = this.splashAD;
        if (splashAD != null) {
            splashAD.zoomOutAnimationFinish();
        }
    }
}
