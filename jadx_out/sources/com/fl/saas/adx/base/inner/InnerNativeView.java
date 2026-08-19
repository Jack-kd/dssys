package com.fl.saas.adx.base.inner;

import android.view.View;
import android.view.ViewGroup;
import com.fl.saas.adx.api.mixNative.NativeAdView;

/* loaded from: classes3.dex */
public interface InnerNativeView {
    View getCATView();

    View[] getClicks();

    NativeAdView getNativeAdView();

    ViewGroup getSelfView();

    void onClicked();
}
