.class final Lcom/kwad/components/core/j/a$3;
.super Lcom/kwad/sdk/core/network/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/j/a;->a(Lcom/kwad/components/core/request/model/ImpInfo;Ljava/util/List;ZZLcom/kwad/components/core/request/k;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/components/core/request/a;",
        "Lcom/kwad/sdk/core/response/model/AdResultData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aaT:Z

.field final synthetic aaU:Lcom/kwad/components/core/request/k;


# direct methods
.method public constructor <init>(ZLcom/kwad/components/core/request/k;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/j/a$3;->aaT:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/j/a$3;->aaU:Lcom/kwad/components/core/request/k;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private n(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->isAdResultDataEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/kwad/components/core/j/a$3;->aaT:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/j/a$3;->aaU:Lcom/kwad/components/core/request/k;

    .line 12
    .line 13
    sget-object v1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 14
    .line 15
    iget v1, v1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 16
    .line 17
    iget-object v2, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/kwad/components/core/request/l;->onError(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/j/a$3;->aaU:Lcom/kwad/components/core/request/k;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/kwad/components/core/request/l;->b(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private o(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/j/a$3;->aaU:Lcom/kwad/components/core/request/k;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/kwad/components/core/request/l;->onError(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
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
    invoke-direct {p0, p2, p3}, Lcom/kwad/components/core/j/a$3;->o(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
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
    check-cast p2, Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/kwad/components/core/j/a$3;->n(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
