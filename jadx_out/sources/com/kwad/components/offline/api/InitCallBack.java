package com.kwad.components.offline.api;

import androidx.annotation.WorkerThread;

/* loaded from: classes4.dex */
public interface InitCallBack {
    @WorkerThread
    void onError(int i2);

    @WorkerThread
    void onSuccess(boolean z2);
}
