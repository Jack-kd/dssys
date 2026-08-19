.class public Lcom/sigmob/sdk/downloader/core/file/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/file/d$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "MultiPointOutputStream"

.field private static final o:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/core/file/a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Z

.field volatile f:Ljava/util/concurrent/Future;

.field volatile g:Ljava/lang/Thread;

.field final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/io/IOException;

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcom/sigmob/sdk/downloader/core/file/d$a;

.field m:Lcom/sigmob/sdk/downloader/core/file/d$a;

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private final t:Lcom/sigmob/sdk/downloader/f;

.field private final u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

.field private final v:Z

.field private final w:Z

.field private final x:Ljava/lang/Runnable;

.field private y:Ljava/lang/String;

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "FileDownload file io"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sigmob/sdk/downloader/core/file/d;->o:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/file/d;-><init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->e:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    new-instance v0, Lcom/sigmob/sdk/downloader/core/file/d$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/file/d$a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->l:Lcom/sigmob/sdk/downloader/core/file/d$a;

    new-instance v0, Lcom/sigmob/sdk/downloader/core/file/d$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/file/d$a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->z:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->p()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->p:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->q()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->q:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->r()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->r:I

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/g;->e()Lcom/sigmob/sdk/downloader/core/file/a$a;

    move-result-object p2

    invoke-interface {p2}, Lcom/sigmob/sdk/downloader/core/file/a$a;->a()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->v:Z

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/file/e;->b(Lcom/sigmob/sdk/downloader/f;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->w:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->j:Ljava/util/ArrayList;

    if-nez p4, :cond_0

    new-instance p2, Lcom/sigmob/sdk/downloader/core/file/d$1;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/downloader/core/file/d$1;-><init>(Lcom/sigmob/sdk/downloader/core/file/d;)V

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->x:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/file/d;->x:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->y:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sigmob/sdk/downloader/core/file/d;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/file/d$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/downloader/core/file/d$2;-><init>(Lcom/sigmob/sdk/downloader/core/file/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->i:Ljava/io/IOException;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->l:Lcom/sigmob/sdk/downloader/core/file/d$a;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Lcom/sigmob/sdk/downloader/core/file/d$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->l:Lcom/sigmob/sdk/downloader/core/file/d$a;

    iget-boolean v0, v0, Lcom/sigmob/sdk/downloader/core/file/d$a;->a:Z

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/downloader/core/file/d;->a(ZI)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    const-string v0, "MultiPointOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutputStream done but no need to ensure sync, because the sync job not run yet. task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "MultiPointOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutputStream done but no need to ensure sync, because the syncFuture.isDone["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/file/d;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/file/d;->c(I)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/file/d;->e(I)Lcom/sigmob/sdk/downloader/core/file/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p3}, Lcom/sigmob/sdk/downloader/core/file/a;->a([BII)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->c:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(J)V
    .locals 1

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    return-void
.end method

.method public a(Landroid/os/StatFs;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/downloader/core/exception/e;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Landroid/os/StatFs;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sigmob/sdk/downloader/core/exception/e;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/sigmob/sdk/downloader/core/exception/e;-><init>(JJ)V

    throw p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/file/d$a;)V
    .locals 6

    .line 6
    iget-object v0, p1, Lcom/sigmob/sdk/downloader/core/file/d$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "] current need fetching block count "

    const-string v4, "task["

    const-string v5, "MultiPointOutputStream"

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not equal to no more stream block count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p1, Lcom/sigmob/sdk/downloader/core/file/d$a;->a:Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is equal to no more stream block count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sigmob/sdk/downloader/core/file/d$a;->a:Z

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/file/d;->j:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/sigmob/sdk/downloader/core/file/d$a;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/sigmob/sdk/downloader/core/file/d$a;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p1, Lcom/sigmob/sdk/downloader/core/file/d$a;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Thread;)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->g:Ljava/lang/Thread;

    if-eqz p2, :cond_2

    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->g:Ljava/lang/Thread;

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Ljava/lang/Thread;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :goto_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->g:Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Ljava/lang/Thread;)V

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->e()V

    return-void

    :cond_4
    const-wide/16 v0, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/downloader/core/file/d;->a(J)V

    goto :goto_1

    :catch_0
    :cond_5
    :goto_3
    return-void
.end method

.method public declared-synchronized b()V
    .locals 8

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->e:Z

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    :try_start_4
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/downloader/core/file/d;->c(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v3

    :try_start_6
    const-string v4, "MultiPointOutputStream"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutputStream close failed task["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v6}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] block["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v1, v2, v3, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_7
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->m()V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/file/e;->a()Lcom/sigmob/sdk/downloader/core/file/c;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/downloader/core/file/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, -0x1

    :try_start_8
    invoke-virtual {p0, v1, v2}, Lcom/sigmob/sdk/downloader/core/file/d;->a(ZI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/file/e;->a()Lcom/sigmob/sdk/downloader/core/file/c;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/downloader/core/file/c;->b(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/file/e;->a()Lcom/sigmob/sdk/downloader/core/file/c;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/downloader/core/file/c;->b(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :goto_1
    :try_start_a
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/downloader/core/file/d;->c(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_c
    const-string v4, "MultiPointOutputStream"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutputStream close failed task["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v6}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] block["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v1, v2, v3, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_d
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/downloader/core/file/d;->c(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v4

    :try_start_f
    const-string v5, "MultiPointOutputStream"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutputStream close failed task["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] block["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v3

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v2, v3, v4, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    throw v1

    :goto_5
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->d()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/sigmob/sdk/downloader/core/c;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current offset on block-info isn\'t update correct, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/file/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/file/a;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "MultiPointOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutputStream close task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->i:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->x:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->f()Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->f:Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void

    :cond_2
    throw v0
.end method

.method public d(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized e(I)Lcom/sigmob/sdk/downloader/core/file/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/file/a;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->l()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Create parent folder failed!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MultiPointOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Filename is not ready!"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->h()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->e()Lcom/sigmob/sdk/downloader/core/file/a$a;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/g;->h()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sigmob/sdk/downloader/core/file/d;->p:I

    invoke-interface {v2, v3, v1, v4}, Lcom/sigmob/sdk/downloader/core/file/a$a;->a(Landroid/content/Context;Landroid/net/Uri;I)Lcom/sigmob/sdk/downloader/core/file/a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->v:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_5

    invoke-interface {v1, v5, v6}, Lcom/sigmob/sdk/downloader/core/file/a;->a(J)V

    const-string v2, "MultiPointOutputStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create output stream write from ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") block("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->z:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->f(I)Z

    :cond_6
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->z:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->w:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long v7, v5, v7

    cmp-long v2, v7, v3

    if-lez v2, :cond_8

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v7, v8}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Landroid/os/StatFs;J)V

    :cond_7
    invoke-interface {v1, v5, v6}, Lcom/sigmob/sdk/downloader/core/file/a;->b(J)V

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->z:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 0

    .line 2
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    return-void
.end method

.method public f()Ljava/util/concurrent/Future;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/downloader/core/file/d;->o:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->x:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->i:Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync to breakpoint-store for task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] failed with cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiPointOutputStream"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputStream start flush looper task["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with syncBufferIntervalMills["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] syncBufferSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiPointOutputStream"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->g:Ljava/lang/Thread;

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->r:I

    int-to-long v3, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->l()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/sigmob/sdk/downloader/core/file/d;->a(J)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Lcom/sigmob/sdk/downloader/core/file/d$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/file/d$a;->a()Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSync state change isNoMoreStream["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    iget-boolean v7, v7, Lcom/sigmob/sdk/downloader/core/file/d$a;->a:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] newNoMoreStreamBlockList["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    iget-object v7, v7, Lcom/sigmob/sdk/downloader/core/file/d$a;->c:Ljava/util/List;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->l()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/core/file/d$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v6, :cond_2

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Ljava/lang/Thread;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->m:Lcom/sigmob/sdk/downloader/core/file/d$a;

    iget-boolean v0, v0, Lcom/sigmob/sdk/downloader/core/file/d$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Ljava/lang/Thread;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutputStream stop flush looper task["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    iget v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->r:I

    int-to-long v3, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->j()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->l()V

    goto :goto_3
.end method

.method public i()Z
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->q:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()J
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/file/d;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/file/d;->r:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public k()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v5, v8, v5

    if-lez v5, :cond_0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/file/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sigmob/sdk/downloader/core/file/a;

    invoke-interface {v5}, Lcom/sigmob/sdk/downloader/core/file/a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    const-string v2, "MultiPointOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutputStream flush and sync data to filesystem failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/core/file/d;->u:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v10, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-interface {v9, v10, v4, v7, v8}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V

    add-long/2addr v5, v7

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/core/file/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    const-string v9, "MultiPointOutputStream"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OutputStream sync success ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sigmob/sdk/downloader/core/file/d;->t:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v11}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") block("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")  syncLength("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") currentOffset("

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/file/d;->s:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v7, v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->c:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/file/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
