.class final Lcom/kwad/components/core/innerEc/live/b/c/j$2;
.super Lcom/kwad/sdk/core/network/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/j;->sB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/components/core/innerEc/live/h/a;",
        "Lcom/kwad/sdk/core/network/EmptyResultData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic WY:Lcom/kwad/components/core/innerEc/live/b/c/j;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/j$2;->WY:Lcom/kwad/components/core/innerEc/live/b/c/j;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/h/a;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/h/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/o;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 4
    const-string p1, "LiveStopPlayPresenter"

    const-string p2, "requestStartPlay error"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/h/a;Lcom/kwad/sdk/core/network/EmptyResultData;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/h/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/network/EmptyResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    const-string p1, "LiveStopPlayPresenter"

    const-string p2, "requestStopPlay success"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/h/a;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/b/c/j$2;->a(Lcom/kwad/components/core/innerEc/live/h/a;ILjava/lang/String;)V

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
    check-cast p1, Lcom/kwad/components/core/innerEc/live/h/a;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/sdk/core/network/EmptyResultData;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/j$2;->a(Lcom/kwad/components/core/innerEc/live/h/a;Lcom/kwad/sdk/core/network/EmptyResultData;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
