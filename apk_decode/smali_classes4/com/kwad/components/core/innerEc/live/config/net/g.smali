.class public Lcom/kwad/components/core/innerEc/live/config/net/g;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public Ur:Lcom/kwad/components/core/innerEc/live/config/net/b;

.field public Us:Lcom/kwad/components/core/innerEc/live/config/net/a;

.field public Ut:I

.field public Uu:Ljava/lang/String;

.field public Uv:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ur:Lcom/kwad/components/core/innerEc/live/config/net/b;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Us:Lcom/kwad/components/core/innerEc/live/config/net/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Uu:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Uv:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ur:Lcom/kwad/components/core/innerEc/live/config/net/b;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/config/net/d;->liveStreamId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final rG()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final rH()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 2
    .line 3
    const/16 v1, 0x259

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/g;->Uv:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
