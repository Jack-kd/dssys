.class final Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;
.super Lcom/kwad/sdk/core/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;->a(Ljava/lang/String;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/l<",
        "Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;",
        "Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic TU:Lcom/kwad/components/core/innerEc/live/base/b;

.field final synthetic TV:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;Lcom/kwad/components/core/innerEc/live/base/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;->TV:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;->TU:Lcom/kwad/components/core/innerEc/live/base/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static aI(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;
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
    new-instance p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;->parseJson(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private rD()Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rj()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;->TU:Lcom/kwad/components/core/innerEc/live/base/b;

    .line 8
    .line 9
    invoke-direct {v1, v2, v0}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;-><init>(Lcom/kwad/components/core/innerEc/live/base/b;Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method


# virtual methods
.method public final synthetic createRequest()Lcom/kwad/sdk/core/network/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;->rD()Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;

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
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;->aI(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
