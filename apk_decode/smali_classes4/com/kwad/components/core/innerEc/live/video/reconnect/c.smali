.class public final Lcom/kwad/components/core/innerEc/live/video/reconnect/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IPlayerReconnect;


# instance fields
.field private final Uz:Ljava/lang/String;

.field private final XS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->XS:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->Uz:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchDataSource reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LivePlayerReconnectManager"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;-><init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    invoke-direct {p2, p0, p4}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;-><init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/video/reconnect/a;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/a;->XR:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;->onSucceed(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->sL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 8
    :goto_1
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Lcom/kwad/components/core/innerEc/live/video/reconnect/a;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/a;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->sM()V

    return-void
.end method

.method private static sL()V
    .locals 2

    .line 1
    const-string v0, "LivePlayerReconnectManager"

    .line 2
    .line 3
    const-string v1, "requestPlaySuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static sM()V
    .locals 2

    .line 1
    const-string v0, "LivePlayerReconnectManager"

    .line 2
    .line 3
    const-string v1, "fetchDataSource error"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final fetchDataSource(ILjava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stopReconnect()V
    .locals 0

    return-void
.end method
