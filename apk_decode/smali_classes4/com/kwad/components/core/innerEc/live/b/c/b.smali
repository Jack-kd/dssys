.class public final Lcom/kwad/components/core/innerEc/live/b/c/b;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

.field private UV:Lcom/kwad/components/core/innerEc/live/config/b;

.field private UW:Z

.field private UX:Lcom/kwad/components/core/innerEc/live/e/b;

.field private final UY:Lcom/kwad/components/core/innerEc/live/config/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UW:Z

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/b$2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/b$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/b;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private aK(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UW:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UW:Z

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "destroyConnection , reason"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "LiveAudienceLongConnectionPresenter"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->release()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UX:Lcom/kwad/components/core/innerEc/live/e/b;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/e/b;->destroy()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/b;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->rO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private rL()V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/e/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 4
    .line 5
    new-instance v2, Lcom/kwad/components/core/innerEc/live/b/c/b$1;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/kwad/components/core/innerEc/live/b/c/b$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/b;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/innerEc/live/e/b;-><init>(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;Lcom/kwad/components/core/innerEc/live/e/c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UX:Lcom/kwad/components/core/innerEc/live/e/b;

    .line 14
    .line 15
    return-void
.end method

.method private rM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->attached()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private rN()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->detached()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private rO()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->resume()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UW:Z

    .line 10
    .line 11
    :cond_0
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
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UV:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->rL()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UV:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/a;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->rM()V

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
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->rN()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UV:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->b(Lcom/kwad/components/core/innerEc/live/config/a;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "onUnbind"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->aK(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
