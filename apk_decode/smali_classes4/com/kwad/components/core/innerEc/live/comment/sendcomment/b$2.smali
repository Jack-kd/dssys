.class final Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;
.super Lcom/kwad/sdk/core/network/o;
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
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;",
        "Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic TU:Lcom/kwad/components/core/innerEc/live/base/b;

.field final synthetic TV:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

.field final synthetic TW:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;Lcom/kwad/components/core/innerEc/live/base/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->TV:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->TW:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->TU:Lcom/kwad/components/core/innerEc/live/base/b;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/o;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendComment error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveSendCommentService"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$2;-><init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    const-string p1, "LiveSendCommentService"

    const-string v0, "sendComment success"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;

    invoke-direct {p1, p0, p2}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;-><init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final synthetic onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/response/model/BaseResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
