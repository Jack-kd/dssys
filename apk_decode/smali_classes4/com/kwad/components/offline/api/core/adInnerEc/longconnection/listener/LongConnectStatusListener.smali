.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract onChannelException(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ChannelException;)V
.end method

.method public abstract onClientException(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ClientException;)V
.end method

.method public abstract onConnectionEstablished()V
.end method

.method public abstract onConnectionExit()V
.end method

.method public abstract onConnectionHorseRaceFail(J)V
.end method

.method public abstract onConnectionHorseRaceStart()V
.end method

.method public abstract onConnectionHorseRaceSuccess(Ljava/lang/String;J)V
.end method

.method public abstract onConnectionInterrupt()V
.end method

.method public abstract onConnectionStart()V
.end method

.method public abstract onEnterRoomSend(J)V
.end method

.method public abstract onHeartbeatAckReceived(JJ)V
.end method

.method public abstract onHeartbeatSend(J)V
.end method

.method public abstract onReconnectOverMaxRetryCount()V
.end method

.method public abstract onServerException(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/LiveLongConnectionServerException;)V
.end method
