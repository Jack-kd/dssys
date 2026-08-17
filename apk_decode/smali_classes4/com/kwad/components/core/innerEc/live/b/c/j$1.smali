.class final Lcom/kwad/components/core/innerEc/live/b/c/j$1;
.super Lcom/kwad/sdk/core/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/j;->sB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/l<",
        "Lcom/kwad/components/core/innerEc/live/h/a;",
        "Lcom/kwad/sdk/core/network/EmptyResultData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic WY:Lcom/kwad/components/core/innerEc/live/b/c/j;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/j$1;->WY:Lcom/kwad/components/core/innerEc/live/b/c/j;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static aL(Ljava/lang/String;)Lcom/kwad/sdk/core/network/EmptyResultData;
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
    new-instance p0, Lcom/kwad/sdk/core/network/EmptyResultData;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/EmptyResultData;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private sC()Lcom/kwad/components/core/innerEc/live/h/a;
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
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/j$1;->WY:Lcom/kwad/components/core/innerEc/live/b/c/j;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/j;->a(Lcom/kwad/components/core/innerEc/live/b/c/j;)Lcom/kwad/sdk/core/response/model/AdTemplate;

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
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/j$1;->WY:Lcom/kwad/components/core/innerEc/live/b/c/j;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/j;->a(Lcom/kwad/components/core/innerEc/live/b/c/j;)Lcom/kwad/sdk/core/response/model/AdTemplate;

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "liveParam: "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "LiveStopPlayPresenter"

    .line 60
    .line 61
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rj()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    new-instance v1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    :cond_0
    new-instance v2, Lcom/kwad/components/core/innerEc/live/h/a;

    .line 76
    .line 77
    invoke-direct {v2, v0, v1}, Lcom/kwad/components/core/innerEc/live/h/a;-><init>(Lcom/kwad/components/core/innerEc/live/base/b;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method


# virtual methods
.method public final synthetic createRequest()Lcom/kwad/sdk/core/network/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/j$1;->sC()Lcom/kwad/components/core/innerEc/live/h/a;

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
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/j$1;->aL(Ljava/lang/String;)Lcom/kwad/sdk/core/network/EmptyResultData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
