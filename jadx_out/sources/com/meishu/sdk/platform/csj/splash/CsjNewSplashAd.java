package com.meishu.sdk.platform.csj.splash;

import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.meishu.sdk.core.ad.splash.c;
import com.meishu.sdk.core.loader.d;
import com.meishu.sdk.core.utils.p1;

/* loaded from: classes4.dex */
public class CsjNewSplashAd extends c {
    private d adWrapper;
    private boolean showed;

    public CsjNewSplashAd(d dVar, CSJSplashAd cSJSplashAd) {
        super(dVar, "CSJ");
        this.adWrapper = dVar;
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
            super.showAd(viewGroup);
            p1.a(viewGroup, this.adWrapper.getAdLoader().getPosId(), this.adWrapper.getSdkAdInfo().getMsLoadedTime());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
