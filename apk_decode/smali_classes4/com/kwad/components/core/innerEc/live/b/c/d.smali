.class public final Lcom/kwad/components/core/innerEc/live/b/c/d;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private UR:Lcom/kwad/components/core/innerEc/live/d/b;

.field private VB:Z

.field private VC:Z

.field private final VD:Lcom/kwad/components/core/innerEc/live/video/a/c;

.field private final VE:Lcom/kwad/components/core/innerEc/live/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/d$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/d$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/d;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VD:Lcom/kwad/components/core/innerEc/live/video/a/c;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/d$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/d$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/d;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VE:Lcom/kwad/components/core/innerEc/live/d/a;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/d;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/d;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VB:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/d;Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VC:Z

    .line 3
    .line 4
    return p1
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
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VD:Lcom/kwad/components/core/innerEc/live/video/a/c;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/a/b;->a(Lcom/kwad/components/core/innerEc/live/video/a/c;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VE:Lcom/kwad/components/core/innerEc/live/d/a;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/d/b;->a(Lcom/kwad/components/core/innerEc/live/d/a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VE:Lcom/kwad/components/core/innerEc/live/d/a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/d/b;->b(Lcom/kwad/components/core/innerEc/live/d/a;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d;->VD:Lcom/kwad/components/core/innerEc/live/video/a/c;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/a/b;->b(Lcom/kwad/components/core/innerEc/live/video/a/c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
