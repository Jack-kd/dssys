.class final Lcom/kwad/components/core/innerEc/live/b/c/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/config/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic We:Lcom/kwad/components/core/innerEc/live/b/c/e;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$6;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 2
    .param p1    # Lcom/kwad/components/core/innerEc/live/config/net/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "LiveDetailTKPresenter"

    .line 2
    .line 3
    const-string v1, "onAfterConfigUpdatedLiveFail call JsHandlerLiveStartPlay"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$6;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->k(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$6;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->k(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 2
    .param p1    # Lcom/kwad/components/core/innerEc/live/config/net/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "LiveDetailTKPresenter"

    .line 2
    .line 3
    const-string v1, "onAfterConfigUpdated call JsHandlerLiveStartPlay"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$6;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->k(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$6;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->k(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
