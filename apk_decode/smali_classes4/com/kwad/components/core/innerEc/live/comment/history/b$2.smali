.class final Lcom/kwad/components/core/innerEc/live/comment/history/b$2;
.super Lcom/kwad/sdk/core/network/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/comment/history/b;->rA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/components/core/innerEc/live/comment/history/a;",
        "Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/history/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/comment/history/a;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/comment/history/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/o;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fetchHistoryComments error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HistoryCommentsService"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;

    invoke-direct {p1, p0, p3}, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;-><init>(Lcom/kwad/components/core/innerEc/live/comment/history/b$2;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/comment/history/a;Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/comment/history/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    const-string p1, "HistoryCommentsService"

    const-string v0, "fetchHistoryComments success"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;

    invoke-direct {p1, p0, p2}, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;-><init>(Lcom/kwad/components/core/innerEc/live/comment/history/b$2;Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/comment/history/a;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/history/a;ILjava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/comment/history/a;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/history/a;Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
