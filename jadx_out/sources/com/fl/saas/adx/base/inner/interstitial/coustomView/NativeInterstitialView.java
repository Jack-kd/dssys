package com.fl.saas.adx.base.inner.interstitial.coustomView;

import android.view.View;
import androidx.annotation.NonNull;
import com.fl.saas.EnumC1215s;
import com.fl.saas.adx.base.inner.InnerNativeView;

/* loaded from: classes3.dex */
public interface NativeInterstitialView extends InnerNativeView {
    void addActionView(View view);

    void click();

    void destroy();

    NativeInterstitialView setAnimalStartTime(int i2);

    NativeInterstitialView setAnimalTime(int i2);

    NativeInterstitialView setAutoClose(boolean z2);

    NativeInterstitialView setClickType(int i2);

    NativeInterstitialView setClosePos(@NonNull EnumC1215s enumC1215s);

    NativeInterstitialView setCloseViewSize(int i2);

    NativeInterstitialView setCountDown(boolean z2, int i2);

    NativeInterstitialView setShakeType(boolean z2);

    NativeInterstitialView setSpeed(int i2);

    void setViewType(boolean z2, int i2);

    NativeInterstitialView startCountdown();
}
