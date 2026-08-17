.class public final Lcom/kwad/sdk/utils/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static bsx:Lcom/kwad/sdk/utils/a/c$d;

.field static volatile bsy:Ljava/util/concurrent/Executor;

.field static bsz:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/kwad/sdk/utils/a/d;->bsz:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/kwad/sdk/utils/a/c$d;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/kwad/sdk/utils/a/d;->bsx:Lcom/kwad/sdk/utils/a/c$d;

    .line 2
    .line 3
    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 9

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lcom/kwad/sdk/utils/a/d;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    const/4 v4, 0x4

    .line 23
    const-wide/16 v5, 0xa

    .line 24
    .line 25
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v1

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_2
    sget-object v0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    return-object v0
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    :cond_0
    return-void
.end method
