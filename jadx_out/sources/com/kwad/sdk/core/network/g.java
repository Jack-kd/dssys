package com.kwad.sdk.core.network;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.response.model.BaseResultData;

/* loaded from: classes4.dex */
public interface g<R extends f, T extends BaseResultData> {
    @WorkerThread
    void onError(@NonNull R r2, int i2, String str);

    @WorkerThread
    void onStartRequest(@NonNull R r2);

    @WorkerThread
    void onSuccess(@NonNull R r2, @NonNull T t2);
}
