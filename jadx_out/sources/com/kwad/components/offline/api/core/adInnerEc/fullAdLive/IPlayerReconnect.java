package com.kwad.components.offline.api.core.adInnerEc.fullAdLive;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public interface IPlayerReconnect {
    void fetchDataSource(int i2, String str, String str2, ILiveFetchCallback iLiveFetchCallback);

    void stopReconnect();
}
