.class final Lcom/kwad/components/core/innerEc/live/comment/history/b$1;
.super Lcom/kwad/sdk/core/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/comment/history/b;->rA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/l<",
        "Lcom/kwad/components/core/innerEc/live/comment/history/a;",
        "Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/history/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$1;->TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static aH(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;
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
    new-instance p0, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;->parseJson(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private rB()Lcom/kwad/components/core/innerEc/live/comment/history/a;
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
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$1;->TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->a(Lcom/kwad/components/core/innerEc/live/comment/history/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/i/e;->aM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aD(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$1;->TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->a(Lcom/kwad/components/core/innerEc/live/comment/history/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/i/e;->aN(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aC(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/e;->getKwaiUserId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aE(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rj()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/kwad/components/core/innerEc/live/comment/history/a;

    .line 46
    .line 47
    invoke-direct {v2, v0, v1}, Lcom/kwad/components/core/innerEc/live/comment/history/a;-><init>(Lcom/kwad/components/core/innerEc/live/base/b;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-object v2
.end method


# virtual methods
.method public final synthetic createRequest()Lcom/kwad/sdk/core/network/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/comment/history/b$1;->rB()Lcom/kwad/components/core/innerEc/live/comment/history/a;

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
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/comment/history/b$1;->aH(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
