.class public Lcom/sigmob/sdk/downloader/core/dispatcher/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "DownloadDispatcher"


# instance fields
.field a:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Lcom/sigmob/sdk/downloader/core/breakpoint/j;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->f:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(Lcom/sigmob/sdk/downloader/core/a;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/core/a;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;)V"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v2, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    if-eq v2, p1, :cond_1

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/a;->c()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v2, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    if-eq v2, p1, :cond_5

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/a;->c()I

    move-result v3

    if-ne v2, v3, :cond_4

    :cond_5
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v2, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/a;->c()I

    move-result v3

    if-ne v2, v3, :cond_7

    :cond_8
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_9
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;)V"
        }
    .end annotation

    .line 6
    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle cancel calls, cancel calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p2, "DownloadDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle cancel calls, callback cancel event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object p2

    iget-object p1, p1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)Z"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static b(I)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current dispatcher is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not DownloadDispatcher exactly!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized b([Lcom/sigmob/sdk/downloader/core/a;)V
    .locals 7

    .line 5
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "DownloadDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start cancel bunch task manually: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    invoke-direct {p0, v6, v2, v3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/a;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Ljava/util/List;Ljava/util/List;)V

    const-string v2, "DownloadDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish cancel bunch task manually: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " consume "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Ljava/util/List;Ljava/util/List;)V

    const-string v2, "DownloadDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish cancel bunch task manually: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " consume "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private declared-synchronized b([Lcom/sigmob/sdk/downloader/f;)V
    .locals 11

    .line 6
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "DownloadDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start enqueueLocked for bunch task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/download/g;->b()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p0, v9, v4}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v9, v5, v6}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v9}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->j(Lcom/sigmob/sdk/downloader/f;)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a(Ljava/util/Collection;Ljava/lang/Exception;)V

    :goto_3
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4
    const-string v2, "DownloadDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end enqueueLocked for bunch task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " consume "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized c()V
    .locals 5

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->g(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v1

    sget-object v3, Lcom/sigmob/sdk/downloader/core/cause/a;->d:Lcom/sigmob/sdk/downloader/core/cause/a;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d()I

    move-result v1

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v1, v2, :cond_3

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private declared-synchronized i(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueLocked for single task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->h(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->k(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->j(Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized j(Lcom/sigmob/sdk/downloader/f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->j:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;ZLcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/download/e;

    move-result-object p1

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private k(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->h:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "FileDownload Download"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->h:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->h:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->j:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/download/e;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/b;->run()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i(Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public a([Lcom/sigmob/sdk/downloader/core/a;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b([Lcom/sigmob/sdk/downloader/core/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c()V

    return-void
.end method

.method public a([Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b([Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/f;->c(I)Lcom/sigmob/sdk/downloader/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/core/a;)Z

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c()V

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/a;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/core/a;)Z

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c()V

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)Z"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/l;->c(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/download/g;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->j:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/download/g;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object p2

    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/core/download/e;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)Z"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->e()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "task: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is finishing, move it to finishing list"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DownloadDispatcher"

    invoke-static {p3, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    return v2

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object p2

    sget-object p3, Lcom/sigmob/sdk/downloader/core/cause/a;->e:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {p2, p1, p3, v5}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :goto_1
    return v4

    :cond_4
    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_5

    invoke-interface {p4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object p2

    sget-object p3, Lcom/sigmob/sdk/downloader/core/cause/a;->d:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {p2, p1, p3, v5}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :goto_2
    return v4

    :cond_6
    return v2
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v2, v2, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v2, v2, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/core/download/e;

    iget-object v2, v2, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/downloader/core/a;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b([Lcom/sigmob/sdk/downloader/core/a;)V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public declared-synchronized b(Lcom/sigmob/sdk/downloader/core/download/e;)V
    .locals 3

    .line 3
    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flying canceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/sigmob/sdk/downloader/core/download/e;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3

    .line 4
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->h(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->k(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->j:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;ZLcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/download/e;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/download/e;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Lcom/sigmob/sdk/downloader/core/a;)Z
    .locals 3

    .line 7
    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel manually: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/a;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Ljava/util/List;Ljava/util/List;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/f;
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findSameTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, v1, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Lcom/sigmob/sdk/downloader/core/download/e;)V
    .locals 2

    .line 3
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/sigmob/sdk/downloader/core/download/e;->d:Z

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->f:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Call wasn\'t in-flight!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized d(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 4

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit p0

    return v2

    :cond_5
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return v2

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    monitor-exit p0

    return v2

    :cond_5
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized f(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized g(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is file conflict after run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/download/e;->d()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v3, v3, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    if-ne v3, p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit p0

    return v4

    :cond_6
    monitor-exit p0

    return v1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public h(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
