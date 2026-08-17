.class public Lcom/czhj/volley/RequestQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;,
        Lcom/czhj/volley/RequestQueue$RequestFilter;,
        Lcom/czhj/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final a:I = 0x4


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/czhj/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;

.field private final e:Lcom/czhj/volley/Network;

.field private final f:Lcom/czhj/volley/ResponseDelivery;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/czhj/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/czhj/volley/Network;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lcom/czhj/volley/RequestQueue;-><init>(Lcom/czhj/volley/Network;II)V

    return-void
.end method

.method public constructor <init>(Lcom/czhj/volley/Network;II)V
    .locals 3

    .line 2
    new-instance v0, Lcom/czhj/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/czhj/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/czhj/volley/RequestQueue;-><init>(Lcom/czhj/volley/Network;IILcom/czhj/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/czhj/volley/Network;IILcom/czhj/volley/ResponseDelivery;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/czhj/volley/RequestQueue;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/czhj/volley/RequestQueue;->c:Ljava/util/Set;

    new-instance v0, Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;

    invoke-direct {v0}, Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/czhj/volley/RequestQueue;->d:Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/czhj/volley/RequestQueue;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/czhj/volley/RequestQueue;->e:Lcom/czhj/volley/Network;

    iput-object p4, p0, Lcom/czhj/volley/RequestQueue;->f:Lcom/czhj/volley/ResponseDelivery;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/czhj/volley/RequestQueue;->d:Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;

    new-instance v8, Lcom/czhj/volley/VolleyThreadFactory;

    invoke-direct {v8}, Lcom/czhj/volley/VolleyThreadFactory;-><init>()V

    const-wide/16 v4, 0x3c

    move v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/czhj/volley/RequestQueue;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p1, p0, Lcom/czhj/volley/RequestQueue;->d:Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;

    invoke-virtual {p1, v1}, Lcom/czhj/volley/RequestQueue$CustomLinkedBlockingQueue;->setExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/czhj/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/volley/RequestQueue;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/czhj/volley/RequestQueue$RequestFinishedListener;

    invoke-interface {v2, p1}, Lcom/czhj/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/czhj/volley/Request;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/czhj/volley/Request<",
            "TT;>;)",
            "Lcom/czhj/volley/Request<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/czhj/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/czhj/volley/RequestQueue;->e:Lcom/czhj/volley/Network;

    iget-object v3, p0, Lcom/czhj/volley/RequestQueue;->f:Lcom/czhj/volley/ResponseDelivery;

    invoke-direct {v1, v2, p1, v3}, Lcom/czhj/volley/NetworkDispatcher;-><init>(Lcom/czhj/volley/Network;Lcom/czhj/volley/Request;Lcom/czhj/volley/ResponseDelivery;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "add request error"

    invoke-static {v0, v2, v1}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addRequestFinishedListener(Lcom/czhj/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/czhj/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll(Lcom/czhj/volley/RequestQueue$RequestFilter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/volley/RequestQueue;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/czhj/volley/Request;

    invoke-interface {p1, v2}, Lcom/czhj/volley/RequestQueue$RequestFilter;->apply(Lcom/czhj/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/czhj/volley/Request;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    new-instance v0, Lcom/czhj/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/czhj/volley/RequestQueue$1;-><init>(Lcom/czhj/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/czhj/volley/RequestQueue;->cancelAll(Lcom/czhj/volley/RequestQueue$RequestFilter;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestFinishedListener(Lcom/czhj/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/czhj/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/volley/RequestQueue;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/czhj/volley/RequestQueue;->stop()V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
