.class final Lcom/kwad/components/core/innerEc/live/b/c/e$4;
.super Lcom/kwad/components/core/innerEc/live/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic We:Lcom/kwad/components/core/innerEc/live/b/c/e;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/g/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCActivityLiveInfo;)V
    .locals 2
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCActivityLiveInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->g(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 10
    .line 11
    new-instance v1, Lcom/kwad/components/core/innerEc/live/base/c;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/base/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/base/c;)Lcom/kwad/components/core/innerEc/live/base/c;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->h(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCActivityLiveInfo;->getAccumulatedWatchCount()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/base/c;->Tv:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->h(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCActivityLiveInfo;->getLiteAccumulatedWatchCount()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, v0, Lcom/kwad/components/core/innerEc/live/base/c;->Tw:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->g(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/f;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->h(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/c;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic g(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCActivityLiveInfo;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/e$4;->a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCActivityLiveInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
