.class final Lcom/kwad/components/core/innerEc/live/like/b$2;
.super Lcom/kwad/sdk/core/network/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/like/b;->aZ(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/components/core/innerEc/live/like/a;",
        "Lcom/kwad/components/core/innerEc/live/like/LikeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Xj:Lcom/kwad/components/core/innerEc/live/like/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/like/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/like/b$2;->Xj:Lcom/kwad/components/core/innerEc/live/like/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/like/a;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/like/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/o;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 4
    new-instance p1, Lcom/kwad/components/core/innerEc/live/like/b$2$2;

    invoke-direct {p1, p0}, Lcom/kwad/components/core/innerEc/live/like/b$2$2;-><init>(Lcom/kwad/components/core/innerEc/live/like/b$2;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/like/a;Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/like/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/like/LikeResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    new-instance p1, Lcom/kwad/components/core/innerEc/live/like/b$2$1;

    invoke-direct {p1, p0, p2}, Lcom/kwad/components/core/innerEc/live/like/b$2$1;-><init>(Lcom/kwad/components/core/innerEc/live/like/b$2;Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/like/a;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/like/b$2;->a(Lcom/kwad/components/core/innerEc/live/like/a;ILjava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/like/a;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/components/core/innerEc/live/like/LikeResponse;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/like/b$2;->a(Lcom/kwad/components/core/innerEc/live/like/a;Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
