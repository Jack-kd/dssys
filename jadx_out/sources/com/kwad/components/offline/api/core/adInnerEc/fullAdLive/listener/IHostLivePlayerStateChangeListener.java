package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.listener;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.adInnerEc.fullAdLive.info.IHostLivePlayerState;

@Keep
/* loaded from: classes4.dex */
public interface IHostLivePlayerStateChangeListener {
    void onStateChange(@NonNull IHostLivePlayerState iHostLivePlayerState);
}
