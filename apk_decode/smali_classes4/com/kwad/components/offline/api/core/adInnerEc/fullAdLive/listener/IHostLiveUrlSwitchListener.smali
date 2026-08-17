.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLiveUrlSwitchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract onUrlSwitchFail(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/HostLiveUrlSwitchReason;)V
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/HostLiveUrlSwitchReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onUrlSwitchSuccess(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/HostLiveUrlSwitchReason;)V
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/HostLiveUrlSwitchReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
