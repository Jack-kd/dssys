.class public final Lcom/kwad/components/core/innerEc/live/like/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/like/b$a;
    }
.end annotation


# instance fields
.field private final TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private final Xh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/components/core/innerEc/live/like/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/like/b;->Xh:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/like/b;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/like/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/like/b;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V
    .locals 0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/like/b;->b(Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/like/b;Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/like/b;->a(Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/like/b;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/like/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/like/b;->Xh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/components/core/innerEc/live/like/b$a;

    .line 3
    invoke-interface {v1, p1}, Lcom/kwad/components/core/innerEc/live/like/b$a;->a(Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/like/b;->Xh:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/kwad/components/core/innerEc/live/like/b$a;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/live/like/b$a;->sz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    return-void

    .line 26
    :goto_1
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/like/b$a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/like/b;->Xh:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final aZ(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/like/b$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/innerEc/live/like/b$1;-><init>(Lcom/kwad/components/core/innerEc/live/like/b;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/kwad/components/core/innerEc/live/like/b$2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/kwad/components/core/innerEc/live/like/b$2;-><init>(Lcom/kwad/components/core/innerEc/live/like/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/like/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/like/b;->Xh:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
