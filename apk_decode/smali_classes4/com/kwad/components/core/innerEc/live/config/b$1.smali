.class final Lcom/kwad/components/core/innerEc/live/config/b$1;
.super Lcom/kwad/sdk/core/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/config/b;->rE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/l<",
        "Lcom/kwad/components/core/innerEc/live/config/net/h;",
        "Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Uc:Lcom/kwad/components/core/innerEc/live/config/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/config/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b$1;->Uc:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static aJ(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "parseData dataBody: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "LivePlayConfigService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->parseJson(Lorg/json/JSONObject;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method private rF()Lcom/kwad/components/core/innerEc/live/config/net/h;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "createRequest call "

    .line 2
    .line 3
    const-string v1, "LivePlayConfigService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/base/b;->rv()Lcom/kwad/components/core/innerEc/live/base/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/config/b$1;->Uc:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/i/e;->aM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/innerEc/live/base/b;->aD(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/config/b$1;->Uc:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/i/e;->aN(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/innerEc/live/base/b;->aC(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/e;->getKwaiUserId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/innerEc/live/base/b;->aE(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "liveParam: "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rj()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    new-instance v1, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    :cond_0
    new-instance v2, Lcom/kwad/components/core/innerEc/live/config/net/h;

    .line 81
    .line 82
    invoke-direct {v2, v0, v1}, Lcom/kwad/components/core/innerEc/live/config/net/h;-><init>(Lcom/kwad/components/core/innerEc/live/base/b;Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    return-object v2
.end method


# virtual methods
.method public final synthetic createRequest()Lcom/kwad/sdk/core/network/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/config/b$1;->rF()Lcom/kwad/components/core/innerEc/live/config/net/h;

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
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/config/b$1;->aJ(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
