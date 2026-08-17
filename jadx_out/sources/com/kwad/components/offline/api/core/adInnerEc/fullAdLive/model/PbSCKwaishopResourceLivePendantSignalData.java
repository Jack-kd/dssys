package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.model;

import androidx.annotation.Keep;
import java.util.List;

@Keep
/* loaded from: classes4.dex */
public interface PbSCKwaishopResourceLivePendantSignalData {
    String getLiveStreamId();

    List<PbKwaishopResourceLivePendantInfo> getPendantInfo();

    long getSellerId();
}
