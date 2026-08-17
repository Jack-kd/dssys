.class public final Lcom/sigmob/sdk/manager/c;
.super Ljava/util/concurrent/ThreadPoolExecutor;

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static volatile a:Lcom/sigmob/sdk/manager/c;


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/manager/c;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/manager/c;->a:Lcom/sigmob/sdk/manager/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/sigmob/sdk/manager/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/manager/c;->a:Lcom/sigmob/sdk/manager/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/manager/c;

    invoke-direct {v1}, Lcom/sigmob/sdk/manager/c;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/manager/c;->a:Lcom/sigmob/sdk/manager/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/sigmob/sdk/manager/c;->a:Lcom/sigmob/sdk/manager/c;

    return-object v0
.end method


# virtual methods
.method public synthetic close()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/res/b;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
