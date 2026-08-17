package com.fl.saas.adx.base.inner.interstitial;

import android.app.Activity;
import com.fl.saas.adx.base.inner.InnerViewLoaderEvent;
import com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView;

/* loaded from: classes3.dex */
public interface InterstitialViewEvent extends InnerViewLoaderEvent<NativeInterstitialView> {
    void onActivityShow(Activity activity);

    void onDismiss();
}
