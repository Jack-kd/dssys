.class public Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:Ljava/util/concurrent/TimeUnit;

.field private static final c:Landroid/os/Handler;

.field private static d:Landroid/os/Handler;

.field private static final e:Ljava/util/concurrent/ExecutorService;

.field private static f:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v1, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->b:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->c:Landroid/os/Handler;

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/czhj/sdk/common/ThreadPool/BackgroundThreadFactory;

    invoke-direct {v1}, Lcom/czhj/sdk/common/ThreadPool/BackgroundThreadFactory;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MainThreadRun(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    sput-object p0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 2
    sput-object p0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->f:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 3
    sget-object v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static synthetic b()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->f:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static synthetic c()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static getFixIOExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
