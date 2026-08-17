.class public Lcom/kwad/components/core/innerEc/live/config/net/b;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public Ug:Lcom/kwad/components/core/innerEc/live/config/net/i;

.field public Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

.field public Ui:Lcom/kwad/components/core/innerEc/live/config/net/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ug:Lcom/kwad/components/core/innerEc/live/config/net/i;

    .line 10
    .line 11
    const-string v1, "webSocketLiveServer"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ac;->a(Lcom/kwad/sdk/core/b;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/d;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/d;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    .line 26
    .line 27
    const-string v1, "commonData"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ac;->a(Lcom/kwad/sdk/core/b;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/e;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/e;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ui:Lcom/kwad/components/core/innerEc/live/config/net/e;

    .line 42
    .line 43
    const-string v1, "livePlayData"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/ac;->a(Lcom/kwad/sdk/core/b;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "webSocketLiveServer"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ug:Lcom/kwad/components/core/innerEc/live/config/net/i;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "commonData"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "livePlayData"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ui:Lcom/kwad/components/core/innerEc/live/config/net/e;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
