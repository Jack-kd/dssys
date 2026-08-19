.class public Lcom/sigmob/sdk/downloader/core/download/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final h:Ljava/util/concurrent/ExecutorService;

.field private static final i:Ljava/lang/String; = "DownloadChain"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/interceptor/c$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/interceptor/c$b;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field volatile f:Ljava/lang/Thread;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:I

.field private final k:Lcom/sigmob/sdk/downloader/f;

.field private final l:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private final m:Lcom/sigmob/sdk/downloader/core/download/d;

.field private n:J

.field private volatile o:Lcom/sigmob/sdk/downloader/core/connection/a;

.field private final p:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

.field private final q:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "FileDownload Cancel Block"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sigmob/sdk/downloader/core/download/f;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(ILcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->c:I

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/f$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/core/download/f$1;-><init>(Lcom/sigmob/sdk/downloader/core/download/f;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->r:Ljava/lang/Runnable;

    iput p1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iput-object p5, p0, Lcom/sigmob/sdk/downloader/core/download/f;->q:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->p:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    return-void
.end method

.method public static a(ILcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/download/f;
    .locals 6

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/f;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/downloader/core/download/f;-><init>(ILcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->n:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->n:J

    return-void
.end method

.method public declared-synchronized a(Lcom/sigmob/sdk/downloader/core/connection/a;)V
    .locals 0

    .line 4
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->e:J

    return-void
.end method

.method public c()Lcom/sigmob/sdk/downloader/f;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    return-object v0
.end method

.method public d()Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    return v0
.end method

.method public f()Lcom/sigmob/sdk/downloader/core/download/d;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    return-object v0
.end method

.method public g()Lcom/sigmob/sdk/downloader/core/file/d;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->a()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized h()Lcom/sigmob/sdk/downloader/core/connection/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized i()Lcom/sigmob/sdk/downloader/core/connection/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "DownloadChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create connection on url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->d()Lcom/sigmob/sdk/downloader/core/connection/a$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$b;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/connection/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()V
    .locals 7

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->p:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    iget v4, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    iget-wide v5, p0, Lcom/sigmob/sdk/downloader/core/download/f;->e:J

    invoke-interface {v0, v1, v4, v5, v6}, Lcom/sigmob/sdk/downloader/c;->b(Lcom/sigmob/sdk/downloader/f;IJ)V

    iput-wide v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->e:J

    return-void
.end method

.method public k()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/downloader/core/interceptor/d;

    invoke-direct {v1}, Lcom/sigmob/sdk/downloader/core/interceptor/d;-><init>()V

    new-instance v2, Lcom/sigmob/sdk/downloader/core/interceptor/a;

    invoke-direct {v2}, Lcom/sigmob/sdk/downloader/core/interceptor/a;-><init>()V

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->a:Ljava/util/List;

    new-instance v4, Lcom/sigmob/sdk/downloader/core/interceptor/connect/b;

    invoke-direct {v4}, Lcom/sigmob/sdk/downloader/core/interceptor/connect/b;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->a:Ljava/util/List;

    new-instance v4, Lcom/sigmob/sdk/downloader/core/interceptor/connect/a;

    invoke-direct {v4}, Lcom/sigmob/sdk/downloader/core/interceptor/connect/a;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->c:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->n()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v5

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    iget v7, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->a()J

    move-result-wide v8

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IJ)V

    new-instance v5, Lcom/sigmob/sdk/downloader/core/interceptor/b;

    iget v6, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    invoke-interface {v4}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->e()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->g()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object v7

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/sigmob/sdk/downloader/core/interceptor/b;-><init>(ILjava/io/InputStream;Lcom/sigmob/sdk/downloader/core/file/d;Lcom/sigmob/sdk/downloader/f;)V

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/f;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->o()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    iget v4, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/sigmob/sdk/downloader/c;->c(Lcom/sigmob/sdk/downloader/f;IJ)V

    return-void

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->c:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->m()V

    return-void
.end method

.method public declared-synchronized m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->b()V

    const-string v0, "DownloadChain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->k:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->o:Lcom/sigmob/sdk/downloader/core/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public n()Lcom/sigmob/sdk/downloader/core/connection/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->a:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/interceptor/c$a;

    invoke-interface {v0, p0}, Lcom/sigmob/sdk/downloader/core/interceptor/c$a;->a(Lcom/sigmob/sdk/downloader/core/download/f;)Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw v0
.end method

.method public o()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->m:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/interceptor/c$b;

    invoke-interface {v0, p0}, Lcom/sigmob/sdk/downloader/core/interceptor/c$b;->b(Lcom/sigmob/sdk/downloader/core/download/f;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw v0
.end method

.method public p()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->d:I

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public r()Lcom/sigmob/sdk/downloader/core/breakpoint/j;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->q:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    return-object v0
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f;->f:Ljava/lang/Thread;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->s()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/f;->s()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The chain has been finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()V
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/downloader/core/download/f;->h:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/f;->r:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
