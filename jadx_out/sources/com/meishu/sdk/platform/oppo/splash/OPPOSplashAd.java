package com.meishu.sdk.platform.oppo.splash;

import android.view.ViewGroup;
import com.heytap.msp.mobad.api.ad.SplashAd;
import com.meishu.sdk.core.ad.splash.c;
import com.meishu.sdk.core.loader.d;

/* loaded from: classes4.dex */
class OPPOSplashAd extends c {
    private SplashAd splashAd;

    public OPPOSplashAd(d dVar) {
        super(dVar, "OPPO");
    }

    public void destroy() {
        SplashAd splashAd = this.splashAd;
        if (splashAd != null) {
            splashAd.destroyAd();
        }
    }

    public void setOPPOSplashAd(SplashAd splashAd) {
        this.splashAd = splashAd;
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
    }
}
