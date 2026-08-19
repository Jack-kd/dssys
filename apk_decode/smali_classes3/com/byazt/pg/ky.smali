.class public Lcom/byazt/pg/ky;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/r;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x23e
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/r;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    iput-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public executeFastTask(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1}, Lcom/byazt/pg/r;->executeFastTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeFastTask(Ljava/lang/Runnable;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/r;->executeFastTask(Ljava/lang/Runnable;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeNormalTask(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1}, Lcom/byazt/pg/r;->executeNormalTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAIDLExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getAIDLExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getCsjMainHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getCsjMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getFastExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getFastExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIOHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getIOHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getIoExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getNormalExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getNormalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0}, Lcom/byazt/pg/r;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newCachedThreadPool(II)Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/r;->newCachedThreadPool(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method public obtainHandler(Lcom/byazt/pg/r$hp;Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/r;->obtainHandler(Lcom/byazt/pg/r$hp;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance v1, Lcom/byazt/pg/pu;

    invoke-direct {v1, p1}, Lcom/byazt/pg/pu;-><init>(Lcom/byazt/pg/r$hp;)V

    move-object p1, v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method

.method public obtainHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1}, Lcom/byazt/pg/r;->obtainHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method

.method public postIOTask(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1}, Lcom/byazt/pg/r;->postIOTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recycleHandler(Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1}, Lcom/byazt/pg/r;->recycleHandler(Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateSettings(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/ky;->l:Lcom/byazt/pg/r;

    invoke-interface {v0, p1}, Lcom/byazt/pg/r;->updateSettings(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/ky;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
