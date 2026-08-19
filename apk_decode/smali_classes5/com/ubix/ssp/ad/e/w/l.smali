.class public Lcom/ubix/ssp/ad/e/w/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/w/l;


# instance fields
.field private b:Z

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/l;->b:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static declared-synchronized a()Lcom/ubix/ssp/ad/e/w/l;
    .locals 2

    .line 1
    const-class v0, Lcom/ubix/ssp/ad/e/w/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/w/l;->a:Lcom/ubix/ssp/ad/e/w/l;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/w/l;

    invoke-direct {v1}, Lcom/ubix/ssp/ad/e/w/l;-><init>()V

    sput-object v1, Lcom/ubix/ssp/ad/e/w/l;->a:Lcom/ubix/ssp/ad/e/w/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/ubix/ssp/ad/e/w/l;->a:Lcom/ubix/ssp/ad/e/w/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/l;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/w/l;->b:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/l;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/ubix/ssp/ad/e/w/l$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/w/l$a;-><init>(Lcom/ubix/ssp/ad/e/w/l;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/l;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/ubix/ssp/ad/e/w/l$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/w/l$b;-><init>(Lcom/ubix/ssp/ad/e/w/l;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Ljava/lang/Runnable;
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/l;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Runnable;
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/l;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/l;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method
