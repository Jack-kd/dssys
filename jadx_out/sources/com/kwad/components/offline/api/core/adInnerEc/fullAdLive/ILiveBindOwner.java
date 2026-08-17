package com.kwad.components.offline.api.core.adInnerEc.fullAdLive;

import com.kwad.components.offline.api.core.adInnerEc.longconnection.ILiveLongConnection;

/* loaded from: classes4.dex */
public interface ILiveBindOwner {
    IHostLivePlayer getLivePlayer();

    ILiveLongConnection getLongConnection();

    void release();
}
