package com.meishu.sdk.core.ad.banner;

import android.app.Activity;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.IAd;

/* loaded from: classes4.dex */
public interface IBannerAd extends IAd {
    void setCloseButtonVisible(boolean z2);

    void setWidthAndHeight(int i2, int i3);

    void showAd(Activity activity, ViewGroup viewGroup);

    void showAd(ViewGroup viewGroup);
}
