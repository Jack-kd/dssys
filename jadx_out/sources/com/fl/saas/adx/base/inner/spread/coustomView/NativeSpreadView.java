package com.fl.saas.adx.base.inner.spread.coustomView;

import android.view.View;
import com.fl.saas.adx.base.inner.InnerNativeView;

/* loaded from: classes3.dex */
public interface NativeSpreadView extends InnerNativeView {
    void cancelCountdown();

    void setClickAreaVisibility(View view);

    void setViewType(boolean z2, boolean z3, int i2);

    void show();

    void startCountdown();
}
