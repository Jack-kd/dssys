package com.meishu.sdk.platform.bd.banner;

import android.app.Activity;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.banner.a;

/* loaded from: classes4.dex */
public class BDBannerAd extends a {
    private BDBannerAdLoader bdBannerAdLoader;

    public BDBannerAd(BDBannerAdLoader bDBannerAdLoader) {
        super(bDBannerAdLoader, "BAIDU");
        this.bdBannerAdLoader = bDBannerAdLoader;
    }

    @Override // com.meishu.sdk.core.ad.banner.a, com.meishu.sdk.core.ad.banner.IBannerAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        super.showAd(activity, viewGroup);
    }

    @Override // com.meishu.sdk.core.ad.banner.a, com.meishu.sdk.core.ad.banner.IBannerAd
    public void showAd(ViewGroup viewGroup) {
        super.showAd(viewGroup);
    }
}
