.class final Lcom/kwad/components/core/innerEc/live/b/c/e$3;
.super Lcom/kwad/components/core/innerEc/live/g/c;
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
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/g/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;)V
    .locals 2
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->c(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "displayLikeCount:"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getDisplayLikeCount()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", displayWatchingCount:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getDisplayWatchingCount()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "LiveDetailTKPresenter"

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 45
    .line 46
    new-instance v1, Lcom/kwad/components/core/innerEc/live/base/d;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/base/d;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/base/d;)Lcom/kwad/components/core/innerEc/live/base/d;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->d(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/d;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getDisplayLikeCount()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/base/d;->Tx:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->d(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/d;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getDisplayWatchingCount()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/base/d;->Ty:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->e(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getDisplayLikeCount()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->Tx:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->f(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getDisplayWatchingCount()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->Ty:Ljava/lang/String;

    .line 101
    .line 102
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->c(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/g;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->d(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/d;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 115
    .line 116
    .line 117
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
    check-cast p1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/e$3;->a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
