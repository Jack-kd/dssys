package com.fl.saas.adx.base.innterNative;

import android.view.View;

/* loaded from: classes3.dex */
public interface ActionView {

    public enum Type {
        Spread,
        Interstitial,
        Template,
        Banner
    }

    View bindActionView(Type type);
}
