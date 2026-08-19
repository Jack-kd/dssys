.class public Lcom/kwad/components/core/innerEc/live/reconnect/LiveGetNewWebsocketResult;
.super Lcom/kwad/sdk/core/response/model/BaseResultData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1b9dc6da722edd7bL


# instance fields
.field public mWebsocketConfig:Lcom/kwad/components/core/innerEc/live/reconnect/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/reconnect/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/reconnect/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/reconnect/LiveGetNewWebsocketResult;->mWebsocketConfig:Lcom/kwad/components/core/innerEc/live/reconnect/a;

    .line 10
    .line 11
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
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/response/model/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    const-string v0, "data"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/kwad/sdk/core/a/d;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/reconnect/LiveGetNewWebsocketResult;->mWebsocketConfig:Lcom/kwad/components/core/innerEc/live/reconnect/a;

    .line 29
    .line 30
    invoke-virtual {v1, p1, v0}, Lcom/kwad/components/core/innerEc/live/reconnect/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/reconnect/LiveGetNewWebsocketResult;->mWebsocketConfig:Lcom/kwad/components/core/innerEc/live/reconnect/a;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/innerEc/live/reconnect/a;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 42
    :goto_1
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
