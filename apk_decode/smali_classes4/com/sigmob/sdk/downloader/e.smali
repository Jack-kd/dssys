.class public Lcom/sigmob/sdk/downloader/e;
.super Lcom/sigmob/sdk/downloader/core/listener/b;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final e:I = 0x0

.field private static final g:Ljava/util/concurrent/Executor;

.field private static final i:Ljava/lang/String; = "DownloadSerialQueue"


# instance fields
.field volatile a:Z

.field volatile b:Z

.field volatile c:Z

.field volatile d:Lcom/sigmob/sdk/downloader/f;

.field f:Lcom/sigmob/sdk/downloader/core/listener/f;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "FileDownload DynamicSerial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sigmob/sdk/downloader/e;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/e;-><init>(Lcom/sigmob/sdk/downloader/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/c;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/downloader/e;-><init>(Lcom/sigmob/sdk/downloader/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/c;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/c;",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/listener/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->a:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->b:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/f$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/listener/f$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a()Lcom/sigmob/sdk/downloader/core/listener/f;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/e;->f:Lcom/sigmob/sdk/downloader/core/listener/f;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadSerialQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require pause this queue(remain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), butit has already been paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->E()V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/c;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/f$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/listener/f$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a()Lcom/sigmob/sdk/downloader/core/listener/f;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/e;->f:Lcom/sigmob/sdk/downloader/core/listener/f;

    return-void
.end method

.method public declared-synchronized a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    monitor-enter p0

    :try_start_0
    sget-object p3, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;
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

.method public a_(Lcom/sigmob/sdk/downloader/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    if-nez v0, :cond_0

    const-string v0, "DownloadSerialQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require resume this queue(remain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), but it is still running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->b:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/e;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sigmob/sdk/downloader/e;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/e;->b:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/e;->f()V
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

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized e()[Lcom/sigmob/sdk/downloader/f;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->a:Z

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->E()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sigmob/sdk/downloader/f;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
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

.method public f()V
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/downloader/e;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->a:Z

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/e;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/f;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/e;->f:Lcom/sigmob/sdk/downloader/core/listener/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/f;->c(Lcom/sigmob/sdk/downloader/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/e;->d:Lcom/sigmob/sdk/downloader/f;

    iput-boolean v1, p0, Lcom/sigmob/sdk/downloader/e;->b:Z

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
