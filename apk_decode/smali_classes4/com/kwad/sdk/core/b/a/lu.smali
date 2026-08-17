.class public final Lcom/kwad/sdk/core/b/a/lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/components/core/innerEc/live/f/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/components/core/innerEc/live/f/b;Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    const-string v0, "areaCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xv:Ljava/lang/String;

    .line 3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 4
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xv:Ljava/lang/String;

    .line 5
    :cond_1
    const-string v1, "pendantResourceId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xw:J

    .line 6
    const-string v1, "pendantCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xx:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xx:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xx:Ljava/lang/String;

    .line 9
    :cond_2
    const-string v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->action:I

    .line 10
    const-string v1, "eventData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xy:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xy:Ljava/lang/String;

    .line 13
    :cond_3
    const-string v1, "needServerProcess"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XA:Z

    .line 14
    const-string v1, "needBusinessHandle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XB:Z

    .line 15
    const-string v1, "callbackApi"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XC:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XC:Ljava/lang/String;

    .line 18
    :cond_4
    const-string v1, "needRandomCall"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XD:Z

    .line 19
    const-string v1, "randomRangeMillis"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XE:J

    .line 20
    const-string v1, "needSignalFallback"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XF:Z

    .line 21
    const-string v1, "callbackPath"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XG:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XG:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private static b(Lcom/kwad/components/core/innerEc/live/f/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xv:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string v0, "areaCode"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xv:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-wide v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xw:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 6
    const-string v0, "pendantResourceId"

    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xx:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    const-string v0, "pendantCode"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xx:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->action:I

    if-eqz v0, :cond_4

    .line 10
    const-string v2, "action"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xy:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    const-string v0, "eventData"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->Xy:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XA:Z

    if-eqz v0, :cond_6

    .line 14
    const-string v2, "needServerProcess"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XB:Z

    if-eqz v0, :cond_7

    .line 16
    const-string v2, "needBusinessHandle"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XC:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    const-string v0, "callbackApi"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XC:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XD:Z

    if-eqz v0, :cond_9

    .line 20
    const-string v2, "needRandomCall"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 21
    :cond_9
    iget-wide v2, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XE:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    .line 22
    const-string v0, "randomRangeMillis"

    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 23
    :cond_a
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XF:Z

    if-eqz v0, :cond_b

    .line 24
    const-string v2, "needSignalFallback"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XG:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 26
    const-string v0, "callbackPath"

    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/f/b;->XG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/live/f/b;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/lu;->a(Lcom/kwad/components/core/innerEc/live/f/b;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/live/f/b;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/lu;->b(Lcom/kwad/components/core/innerEc/live/f/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
