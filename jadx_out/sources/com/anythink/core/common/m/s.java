package com.anythink.core.common.m;

import com.anythink.core.api.AdError;

/* loaded from: classes2.dex */
public interface s {
    void onLoadCanceled(int i2);

    void onLoadError(int i2, String str, AdError adError);

    void onLoadFinish(int i2, Object obj);

    void onLoadStart(int i2);
}
