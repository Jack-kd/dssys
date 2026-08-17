.class public final Lcom/kwad/components/core/innerEc/live/b/c/i;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private UF:Lcom/kwad/components/core/innerEc/live/config/b;

.field private UG:Lcom/kwad/components/core/innerEc/live/end/a;

.field private WW:Z

.field private final Wb:Lcom/kwad/components/core/innerEc/live/end/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/i$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/i$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/i;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->Wb:Lcom/kwad/components/core/innerEc/live/end/c;

    .line 10
    .line 11
    return-void
.end method

.method private rE()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/config/b;->rE()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private sA()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->WW:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->UG:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/live/end/a;->sD()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->WW:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/i;->rE()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/b/a/b;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UG:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->UG:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->Wb:Lcom/kwad/components/core/innerEc/live/end/c;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/kwad/components/core/innerEc/live/end/a;->a(Lcom/kwad/components/core/innerEc/live/end/c;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/i;->sA()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->UG:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/i;->Wb:Lcom/kwad/components/core/innerEc/live/end/c;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/kwad/components/core/innerEc/live/end/a;->b(Lcom/kwad/components/core/innerEc/live/end/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
