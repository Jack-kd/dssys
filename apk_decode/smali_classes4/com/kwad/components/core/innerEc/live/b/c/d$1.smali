.class final Lcom/kwad/components/core/innerEc/live/b/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/video/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic VF:Lcom/kwad/components/core/innerEc/live/b/c/d;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d$1;->VF:Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChange(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/IHostLivePlayerState;)V
    .locals 1
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/IHostLivePlayerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/IHostLivePlayerState;->PLAYING:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/info/IHostLivePlayerState;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d$1;->VF:Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/live/b/c/d;->a(Lcom/kwad/components/core/innerEc/live/b/c/d;Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
