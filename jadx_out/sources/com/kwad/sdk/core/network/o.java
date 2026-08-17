package com.kwad.sdk.core.network;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.response.model.BaseResultData;

/* loaded from: classes4.dex */
public abstract class o<R extends f, T extends BaseResultData> implements g<R, T> {
    @Override // com.kwad.sdk.core.network.g
    public void onError(@NonNull R r2, int i2, String str) {
    }

    @Override // com.kwad.sdk.core.network.g
    public void onStartRequest(@NonNull R r2) {
    }

    @Override // com.kwad.sdk.core.network.g
    public void onSuccess(@NonNull R r2, @NonNull T t2) {
    }
}
