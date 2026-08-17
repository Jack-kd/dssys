.class public Lcom/sigmob/sdk/nativead/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/nativead/t;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sigmob/sdk/videoplayer/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sigmob/sdk/nativead/l;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/u;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private k()Lcom/sigmob/sdk/videoplayer/f;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoplayer/f;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->D()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->setHolderImageResource(I)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/nativead/l;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/u;->b:Lcom/sigmob/sdk/nativead/l;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->setSoundChange(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->C()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->C()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->E()V

    return-void
.end method

.method public e()I
    .locals 6

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public f()I
    .locals 6

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public g()Lcom/sigmob/sdk/nativead/l;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/u;->b:Lcom/sigmob/sdk/nativead/l;

    return-object v0
.end method

.method public h()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->d()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoplayer/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->a()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/u;->b:Lcom/sigmob/sdk/nativead/l;

    return-void
.end method

.method public j()I
    .locals 4

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/u;->k()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
