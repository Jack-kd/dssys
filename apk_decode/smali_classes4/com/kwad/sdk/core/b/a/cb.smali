.class public final Lcom/kwad/sdk/core/b/a/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "ad_style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->adStyle:I

    .line 3
    const-string v0, "material_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->materialType:I

    .line 4
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->userId:Ljava/lang/String;

    .line 5
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->userId:Ljava/lang/String;

    .line 7
    :cond_1
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    return-void
.end method

.method private static b(Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->adStyle:I

    if-eqz v0, :cond_1

    .line 4
    const-string v1, "ad_style"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->materialType:I

    if-eqz v0, :cond_2

    .line 6
    const-string v1, "material_type"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->userId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->userId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget p0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    if-eqz p0, :cond_4

    .line 10
    const-string v0, "status"

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/cb;->a(Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/cb;->b(Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
