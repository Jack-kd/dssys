.class public final Lcom/kwad/components/core/innerEc/live/b/a/b;
.super Lcom/kwad/sdk/mvp/a;
.source "SourceFile"


# instance fields
.field public Tx:Ljava/lang/String;

.field public Ty:Ljava/lang/String;

.field public UA:Lcom/kwad/components/core/innerEc/live/base/a;

.field public UB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/k/a;",
            ">;"
        }
    .end annotation
.end field

.field public UC:Lcom/kwad/sdk/api/core/fragment/KsFragment;

.field public UD:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;

.field public UE:Lcom/kwad/components/core/widget/a/b;

.field public UF:Lcom/kwad/components/core/innerEc/live/config/b;

.field public UG:Lcom/kwad/components/core/innerEc/live/end/a;

.field public UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

.field public UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

.field public UJ:Lcom/kwad/components/core/innerEc/live/c/a;

.field public UK:Lcom/kwad/components/core/innerEc/live/end/a;

.field public UL:Lcom/kwad/components/core/innerEc/live/widget/h;

.field public UM:Lcom/kwad/components/core/innerEc/live/config/net/g;

.field public UN:Lcom/kwad/sdk/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/g/b<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public UO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/g/b<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public UQ:Lcom/kwad/sdk/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/g/b<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public UR:Lcom/kwad/components/core/innerEc/live/d/b;

.field public US:Lcom/kwad/components/core/innerEc/live/a/p;

.field public UT:Lcom/kwad/components/core/innerEc/live/a/e;

.field public UU:Z

.field public mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/mvp/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UB:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/g;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/g;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UM:Lcom/kwad/components/core/innerEc/live/config/net/g;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UO:Ljava/util/List;

    .line 24
    .line 25
    const-string v0, "0"

    .line 26
    .line 27
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->Tx:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UU:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/c/a;->destroy()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UD:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
