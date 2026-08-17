.class public Lcom/ubix/ssp/ad/e/a0/y/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/y/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/y/e/c$b;,
        Lcom/ubix/ssp/ad/e/a0/y/e/c$c;,
        Lcom/ubix/ssp/ad/e/a0/y/e/c$d;
    }
.end annotation


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/a0/y/e/c;

.field private static b:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private c:Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/ad/e/a0/y/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ubix/ssp/ad/e/a0/y/e/c$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->c:Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/e/c$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/y/e/c$b;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->e:Lcom/ubix/ssp/ad/e/a0/y/e/c$b;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()Lcom/ubix/ssp/ad/e/a0/y/e/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/c;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/y/e/c;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/ubix/ssp/ad/e/a0/y/e/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->c:Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->a(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;F)F

    return-object p0
.end method

.method public a(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/a0/y/e/b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a()Lcom/ubix/ssp/ad/e/a0/y/e/a;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a()Lcom/ubix/ssp/ad/e/a0/y/e/a;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->e:Lcom/ubix/ssp/ad/e/a0/y/e/c$b;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/View;Lcom/ubix/ssp/ad/e/a0/y/e/a;)V
    .locals 8

    .line 5
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v7, p0

    goto :goto_3

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/y/e/b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->c:Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->a(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;)F

    move-result v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->c:Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->b(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/ubix/ssp/ad/e/a0/y/e/b;-><init>(ILandroid/view/View;FILcom/ubix/ssp/ad/e/a0/y/e/a;Lcom/ubix/ssp/ad/e/a0/y/e/a;)V

    iget-object p1, v7, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, p0

    goto :goto_1

    :cond_1
    move-object v7, p0

    :goto_2
    sget-object p1, Lcom/ubix/ssp/ad/e/a0/y/e/c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/y/e/c$d;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/c$d;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;Lcom/ubix/ssp/ad/e/a0/y/e/c$a;)V

    iget-object p1, v7, Lcom/ubix/ssp/ad/e/a0/y/e/c;->c:Lcom/ubix/ssp/ad/e/a0/y/e/c$c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->c(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;)I

    move-result p1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/a0/y/e/b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a()Lcom/ubix/ssp/ad/e/a0/y/e/a;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a()Lcom/ubix/ssp/ad/e/a0/y/e/a;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->e:Lcom/ubix/ssp/ad/e/a0/y/e/c$b;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
