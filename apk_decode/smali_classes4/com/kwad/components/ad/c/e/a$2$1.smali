.class final Lcom/kwad/components/ad/c/e/a$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/e/a$2;->a(Lcom/kwad/sdk/core/webview/d/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dr:Lcom/kwad/components/ad/c/e/a$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/e/a$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/e/a$2$1;->dr:Lcom/kwad/components/ad/c/e/a$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a$2$1;->dr:Lcom/kwad/components/ad/c/e/a$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/c/e/a$2;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/ad/c/e/a;->f(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/kwad/components/ad/c/b;->ab()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a$2$1;->dr:Lcom/kwad/components/ad/c/e/a$2;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/kwad/components/ad/c/e/a$2;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/c/e/a;->g(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/components/ad/c/e/a$2$1;->dr:Lcom/kwad/components/ad/c/e/a$2;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/kwad/components/ad/c/e/a$2;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/kwad/components/ad/c/e/a;->h(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v1, v2

    .line 42
    :goto_0
    invoke-static {v0, v2, v1}, Lcom/kwad/components/ad/c/c/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
