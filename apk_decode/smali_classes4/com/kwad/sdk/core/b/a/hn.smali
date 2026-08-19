.class public final Lcom/kwad/sdk/core/b/a/hn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    const-string v0, "platform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apb:I

    .line 3
    const-string v0, "flowSource"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apc:I

    .line 4
    const-string v0, "clientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apd:I

    .line 5
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->appVersion:Ljava/lang/String;

    .line 6
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 7
    iput-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->appVersion:Ljava/lang/String;

    .line 8
    :cond_1
    const-string v1, "net_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->netType:I

    .line 9
    const-string v1, "publicKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ape:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ape:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iput-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ape:Ljava/lang/String;

    .line 12
    :cond_2
    const-string v1, "sdkgetNumberName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apf:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apf:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iput-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apf:Ljava/lang/String;

    .line 15
    :cond_3
    const-string v1, "sdkoperJudgeName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apg:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iput-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apg:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method

.method private static b(Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apb:I

    if-eqz v0, :cond_1

    .line 4
    const-string v1, "platform"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apc:I

    if-eqz v0, :cond_2

    .line 6
    const-string v1, "flowSource"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apd:I

    if-eqz v0, :cond_3

    .line 8
    const-string v1, "clientId"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->appVersion:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    const-string v0, "app_version"

    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->appVersion:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->netType:I

    if-eqz v0, :cond_5

    .line 12
    const-string v2, "net_type"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ape:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    const-string v0, "publicKey"

    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ape:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apf:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    const-string v0, "sdkgetNumberName"

    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apf:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apg:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    const-string v0, "sdkoperJudgeName"

    iget-object p0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apg:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/hn;->a(Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/hn;->b(Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
