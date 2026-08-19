package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.listener;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.adInnerEc.fullAdLive.info.HostLiveUrlSwitchReason;

@Keep
/* loaded from: classes4.dex */
public interface IHostLiveUrlSwitchListener {
    void onUrlSwitchFail(@NonNull HostLiveUrlSwitchReason hostLiveUrlSwitchReason);

    void onUrlSwitchSuccess(@NonNull HostLiveUrlSwitchReason hostLiveUrlSwitchReason);
}
