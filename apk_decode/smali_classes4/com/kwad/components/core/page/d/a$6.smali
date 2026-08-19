.class final Lcom/kwad/components/core/page/d/a$6;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/d/a;->rc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic adM:Lcom/kwad/components/core/page/d/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a$6;->adM:Lcom/kwad/components/core/page/d/a;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a$6;->adM:Lcom/kwad/components/core/page/d/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a;->h(Lcom/kwad/components/core/page/d/a;)Lcom/kwad/components/core/page/d/a/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->aef:Lcom/kwad/components/core/page/a/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a$6;->adM:Lcom/kwad/components/core/page/d/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a;->j(Lcom/kwad/components/core/page/d/a;)Lcom/kwad/components/core/page/d/a/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->aef:Lcom/kwad/components/core/page/a/a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a$6;->adM:Lcom/kwad/components/core/page/d/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/kwad/components/core/page/d/a;->i(Lcom/kwad/components/core/page/d/a;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {v0, v1}, Lcom/kwad/components/core/page/a/a;->aP(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
