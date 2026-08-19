package com.meishu.sdk.core.loader;

import android.content.Context;

/* loaded from: classes4.dex */
public interface IAdLoader {
    void destroy();

    Context getContext();

    IAdLoadListener getLoaderListener();

    void loadAd();
}
