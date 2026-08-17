.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract addLivePlayerErrorListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerErrorListener;)V
.end method

.method public abstract addLiveUrlSwitchListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLiveUrlSwitchListener;)V
.end method

.method public abstract addOnCompletionListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerCompleteListener;)V
.end method

.method public abstract addStateChangeListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerStateChangeListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getPlayDurationMs()J
.end method

.method public abstract intLivePlayer(Landroid/view/ViewGroup;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/HostLiveInfo;)V
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract removeLivePlayerErrorListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerErrorListener;)V
.end method

.method public abstract removeLiveUrlSwitchListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLiveUrlSwitchListener;)V
.end method

.method public abstract removeOnCompletionListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerCompleteListener;)V
.end method

.method public abstract removeStateChangeListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerStateChangeListener;)V
.end method

.method public abstract restartPlay(I)V
.end method

.method public abstract setMuted(Z)V
.end method

.method public abstract setPlayerReleaseReason(I)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract startPlay()V
.end method

.method public abstract stopPlay()V
.end method
