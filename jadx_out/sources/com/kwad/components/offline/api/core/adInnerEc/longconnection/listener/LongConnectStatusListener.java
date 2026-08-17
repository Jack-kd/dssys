package com.kwad.components.offline.api.core.adInnerEc.longconnection.listener;

import androidx.annotation.Keep;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.ChannelException;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.ClientException;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.LiveLongConnectionServerException;

@Keep
/* loaded from: classes4.dex */
public interface LongConnectStatusListener {
    void onChannelException(ChannelException channelException);

    void onClientException(ClientException clientException);

    void onConnectionEstablished();

    void onConnectionExit();

    void onConnectionHorseRaceFail(long j2);

    void onConnectionHorseRaceStart();

    void onConnectionHorseRaceSuccess(String str, long j2);

    void onConnectionInterrupt();

    void onConnectionStart();

    void onEnterRoomSend(long j2);

    void onHeartbeatAckReceived(long j2, long j3);

    void onHeartbeatSend(long j2);

    void onReconnectOverMaxRetryCount();

    void onServerException(LiveLongConnectionServerException liveLongConnectionServerException);
}
