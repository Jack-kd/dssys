.class final Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;
.super Lcom/kwad/sdk/core/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/l<",
        "Lcom/kwad/components/core/innerEc/live/video/reconnect/b;",
        "Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic XT:Ljava/lang/String;

.field final synthetic XU:Ljava/lang/String;

.field final synthetic XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->XT:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->XU:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static aP(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;->parseJson(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private sN()Lcom/kwad/components/core/innerEc/live/video/reconnect/b;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/base/b;->rv()Lcom/kwad/components/core/innerEc/live/base/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->XT:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aD(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->XU:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aC(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/e;->getKwaiUserId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aE(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rj()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v2, Lcom/kwad/components/core/innerEc/live/video/reconnect/b;

    .line 37
    .line 38
    invoke-direct {v2, v0, v1}, Lcom/kwad/components/core/innerEc/live/video/reconnect/b;-><init>(Lcom/kwad/components/core/innerEc/live/base/b;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method


# virtual methods
.method public final synthetic createRequest()Lcom/kwad/sdk/core/network/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->sN()Lcom/kwad/components/core/innerEc/live/video/reconnect/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic parseData(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/BaseResultData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$1;->aP(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
