.class public Lcom/sigmob/sdk/base/common/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/ab$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NativeLoadReadyRecordManager"

.field private static final f:Lcom/sigmob/sdk/base/common/ab;


# instance fields
.field private b:Z

.field private c:I

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/base/common/ab;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/ab;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/ab;->f:Lcom/sigmob/sdk/base/common/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Z

    const/16 v0, 0x78

    iput v0, p0, Lcom/sigmob/sdk/base/common/ab;->c:I

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/common/ab;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/ab;->f:Lcom/sigmob/sdk/base/common/ab;

    return-object v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/ab;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Z

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/ab;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/ab;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/common/ab;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/base/common/ab;->c:I

    return p0
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .line 2
    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/ab;->c()V

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->c:I

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sigmob/sdk/base/common/ab;->c:I

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    new-instance v2, Lcom/sigmob/sdk/base/common/ab$a;

    invoke-direct {v2, p0, v1}, Lcom/sigmob/sdk/base/common/ab$a;-><init>(Lcom/sigmob/sdk/base/common/ab;Lcom/sigmob/sdk/base/common/ab$1;)V

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/ab;->b()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 7

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NativeLoadReadyRecordManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Landroid/os/Handler;

    new-instance v2, Lcom/sigmob/sdk/base/common/ab$a;

    invoke-direct {v2, p0, v1}, Lcom/sigmob/sdk/base/common/ab$a;-><init>(Lcom/sigmob/sdk/base/common/ab;Lcom/sigmob/sdk/base/common/ab$1;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->c:I

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->d()V

    return-void
.end method
