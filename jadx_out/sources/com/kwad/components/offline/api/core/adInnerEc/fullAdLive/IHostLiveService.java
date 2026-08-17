package com.kwad.components.offline.api.core.adInnerEc.fullAdLive;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public interface IHostLiveService {
    ILiveBindOwner createLiveBindOwner(String str, String str2);

    IHostLivePlayer createLivePlayer();

    IHostLivePlayer createLivePlayer(String str);

    void initService();
}
