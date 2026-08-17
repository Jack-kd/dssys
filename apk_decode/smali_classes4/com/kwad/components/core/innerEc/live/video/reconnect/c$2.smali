.class final Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;
.super Lcom/kwad/sdk/core/network/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/components/core/innerEc/live/video/reconnect/b;",
        "Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;

.field final synthetic XW:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->XW:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/video/reconnect/b;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/video/reconnect/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/o;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestStartPlay error, errorCode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorMsg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LivePlayerReconnectManager"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;-><init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/video/reconnect/b;Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/video/reconnect/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestStartPlay response: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LivePlayerReconnectManager"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/kwad/sdk/core/response/model/BaseResultData;->isResultOk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    const-string p1, "requestStartPlay success"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;

    invoke-direct {p1, p0, p2}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;-><init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    const-string p1, "requestStartPlay success but newPlayConfig is null"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$2;

    invoke-direct {p1, p0}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$2;-><init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/b;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/b;ILjava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/video/reconnect/b;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/b;Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
