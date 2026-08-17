package com.meishu.sdk.core.ad.fullscreenvideo;

import android.app.Activity;
import com.meishu.sdk.core.ad.IAd;

/* loaded from: classes4.dex */
public interface IFullScreenVideoAd extends IAd {
    void setMediaListener(IFullScreenMediaListener iFullScreenMediaListener);

    void showAd();

    void showAd(Activity activity);
}
