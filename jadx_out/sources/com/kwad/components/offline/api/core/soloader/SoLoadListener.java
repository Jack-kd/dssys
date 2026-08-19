package com.kwad.components.offline.api.core.soloader;

/* loaded from: classes4.dex */
public interface SoLoadListener {
    void onFailed(int i2, Throwable th);

    void onLoaded();

    void onPreUpdate();
}
