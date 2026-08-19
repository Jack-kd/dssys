.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract attached()V
.end method

.method public abstract detached()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract init()V
.end method

.method public abstract registerLongConnectStatusListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;)V
.end method

.method public abstract registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method

.method public abstract unregisterLongConnectStatusListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;)V
.end method

.method public abstract unregisterSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V
.end method

.method public abstract updateSocketData(Ljava/lang/String;)Z
.end method

.method public abstract updateStartPlayData(Ljava/lang/String;)Z
.end method
