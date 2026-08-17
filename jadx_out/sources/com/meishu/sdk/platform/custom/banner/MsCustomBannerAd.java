package com.meishu.sdk.platform.custom.banner;

import com.meishu.sdk.core.ad.banner.a;

/* loaded from: classes4.dex */
public abstract class MsCustomBannerAd extends a {
    public MsCustomBannerAd(MsCustomBannerAdapter msCustomBannerAdapter) {
        this(msCustomBannerAdapter, "CUSTOM");
    }

    public MsCustomBannerAd(MsCustomBannerAdapter msCustomBannerAdapter, String str) {
        super(msCustomBannerAdapter, str);
    }
}
