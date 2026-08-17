.class public final Lcom/kwad/components/core/innerEc/live/video/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;


# direct methods
.method public constructor <init>(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "LivePlayerController create instance:"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "LivePlayerController"

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/video/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->addOnCompletionListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerCompleteListener;)V

    return-void
.end method

.method public final a(Lcom/kwad/components/core/innerEc/live/video/a/c;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->addStateChangeListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerStateChangeListener;)V

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/video/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->removeOnCompletionListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerCompleteListener;)V

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/video/a/c;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->removeStateChangeListener(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/listener/IHostLivePlayerStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->stopPlay()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final isBuffering()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isBuffering:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "LivePlayerController"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->isBuffering()Z

    .line 29
    .line 30
    .line 31
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return v1
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isPlaying:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "LivePlayerController"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->isPlaying()Z

    .line 29
    .line 30
    .line 31
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return v1
.end method

.method public final setPlayerReleaseReason(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/a/b;->XQ:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;->setPlayerReleaseReason(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
