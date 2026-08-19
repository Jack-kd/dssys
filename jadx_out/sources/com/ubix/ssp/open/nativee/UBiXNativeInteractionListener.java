package com.ubix.ssp.open.nativee;

import android.view.View;
import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXNativeInteractionListener {
    void onAdClicked(View view);

    void onAdClosed();

    void onAdExposeFailed(AdError adError);

    void onAdExposed();

    void onAdStatusChanged();
}
