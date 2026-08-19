.class final Lcom/kwad/components/core/innerEc/live/b/c/e$5;
.super Lcom/kwad/components/core/innerEc/live/g/e;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/g/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCShopEntranceControl;)V
    .locals 2
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCShopEntranceControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->i(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 10
    .line 11
    new-instance v1, Lcom/kwad/components/core/innerEc/live/base/e;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/base/e;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/base/e;)Lcom/kwad/components/core/innerEc/live/base/e;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->j(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCShopEntranceControl;->getOnSaleCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lcom/kwad/components/core/innerEc/live/base/e;->TA:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->j(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCShopEntranceControl;->isShowYellowCart()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, v0, Lcom/kwad/components/core/innerEc/live/base/e;->Tz:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->i(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/h;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->j(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/e;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final synthetic g(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCShopEntranceControl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/e$5;->a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCShopEntranceControl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
