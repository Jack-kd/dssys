.class final Lcom/kwad/components/core/innerEc/live/config/b$2;
.super Lcom/kwad/sdk/core/network/o;
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
        "Lcom/kwad/sdk/core/network/o<",
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
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b$2;->Uc:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/config/net/h;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/config/net/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/o;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 15
    const-string p1, "LivePlayConfigService"

    const-string v0, "requestStartPlay error"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/kwad/components/core/innerEc/live/config/b$2$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/kwad/components/core/innerEc/live/config/b$2$3;-><init>(Lcom/kwad/components/core/innerEc/live/config/b$2;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/config/net/h;Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;)V
    .locals 3
    .param p1    # Lcom/kwad/components/core/innerEc/live/config/net/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    iget-object v0, p2, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->mStartPlayConfig:Lcom/kwad/components/core/innerEc/live/config/net/g;

    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/config/net/g;->isValid()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestStartPlay success isValid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " liveEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->mStartPlayConfig:Lcom/kwad/components/core/innerEc/live/config/net/g;

    invoke-virtual {v2}, Lcom/kwad/components/core/innerEc/live/config/net/g;->rH()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LivePlayConfigService"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/kwad/components/core/innerEc/live/config/b$2$1;

    invoke-direct {p1, p0, p2}, Lcom/kwad/components/core/innerEc/live/config/b$2$1;-><init>(Lcom/kwad/components/core/innerEc/live/config/b$2;Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p2, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->mStartPlayConfig:Lcom/kwad/components/core/innerEc/live/config/net/g;

    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/config/net/g;->rH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/b$2$2;

    invoke-direct {v0, p0, p2}, Lcom/kwad/components/core/innerEc/live/config/b$2$2;-><init>(Lcom/kwad/components/core/innerEc/live/config/b$2;Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    const-string p2, "requestStartPlay liveEnd"

    invoke-static {v2, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget v0, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object p2, p2, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;ILjava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p2, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->mStartPlayConfig:Lcom/kwad/components/core/innerEc/live/config/net/g;

    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/config/net/g;->rG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    const-string v0, "requestStartPlay isLiveError"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p2, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->mStartPlayConfig:Lcom/kwad/components/core/innerEc/live/config/net/g;

    iget p2, p2, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;ILjava/lang/String;)V

    return-void

    .line 12
    :cond_2
    const-string p2, "requestStartPlay success but newPlayConfig is null"

    invoke-static {v2, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget v0, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object p2, p2, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;ILjava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/config/net/h;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;ILjava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/config/net/h;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
