.class final Lcom/kwad/components/core/innerEc/live/b/c/e$8;
.super Lcom/kwad/components/core/innerEc/live/g/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/e;->se()Lcom/kwad/components/core/innerEc/live/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic We:Lcom/kwad/components/core/innerEc/live/b/c/e;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/b/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$8;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/kwad/components/core/innerEc/live/g/d;-><init>(Lcom/kwad/components/core/innerEc/live/b/a/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/f/a;)V
    .locals 2

    .line 1
    const-string v0, "LiveDetailTKPresenter"

    .line 2
    .line 3
    const-string v1, "call JsHandlerProductIntroduction"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$8;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->m(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$8;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/f/a;)Lcom/kwad/components/core/innerEc/live/f/a;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$8;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->m(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/l;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$8;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->n(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/f/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
