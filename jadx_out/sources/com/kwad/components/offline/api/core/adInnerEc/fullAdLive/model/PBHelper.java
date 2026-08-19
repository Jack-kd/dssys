package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.model;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public interface PBHelper {
    PbClientStat getPbClientStat();

    PbPayloadType getPbPayloadType();

    <T> T parseFrom(byte[] bArr, Class<T> cls);
}
