package com.fl.saas.adx.base.interfaces;

import android.app.Activity;
import android.view.ViewGroup;

/* loaded from: classes3.dex */
public interface SpreadLoadListener {

    public interface SpreadAd extends AdMaterial {
        int getEcpm();

        boolean isAdReady();

        void show(Activity activity, ViewGroup viewGroup);

        void show(ViewGroup viewGroup);
    }

    void onADLoaded(SpreadAd spreadAd);
}
