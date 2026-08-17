.class public Lcom/ubix/ssp/ad/e/w/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/ubix/ssp/ad/e/w/l;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/m;->c:Z

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/w/l;->a()Lcom/ubix/ssp/ad/e/w/l;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/m;->a:Lcom/ubix/ssp/ad/e/w/l;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ubix/ssp/ad/e/w/m$a;

    invoke-direct {v8, p0}, Lcom/ubix/ssp/ad/e/w/m$a;-><init>(Lcom/ubix/ssp/ad/e/w/m;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/w/m;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/m;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/m;->a:Lcom/ubix/ssp/ad/e/w/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/l;->c()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/m;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/m;->a:Lcom/ubix/ssp/ad/e/w/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/l;->b()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/m;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/m;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method
