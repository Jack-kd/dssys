package com.meishu.sdk.platform.oppo.banner;

import android.app.Activity;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.banner.IBannerAd;
import com.meishu.sdk.core.loader.d;

/* loaded from: classes4.dex */
public class OPPOBannerAd extends a implements IBannerAd {
    public OPPOBannerAd(d dVar) {
        super(dVar, "OPPO");
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void setCloseButtonVisible(boolean z2) {
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void setWidthAndHeight(int i2, int i3) {
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void showAd(ViewGroup viewGroup) {
        viewGroup.addView(this.adView);
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        viewGroup.addView(this.adView);
    }
}
