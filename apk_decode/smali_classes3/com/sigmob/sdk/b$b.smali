.class Lcom/sigmob/sdk/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:I = 0x3e8


# instance fields
.field private volatile b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/b$b;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sigmob/sdk/b$b;->b()V

    invoke-direct {p0}, Lcom/sigmob/sdk/b$b;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/b$b;->e()V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ag;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/ag;->a(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getIOHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/k;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/k;-><init>(Lcom/sigmob/sdk/b$b;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d()V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ag;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/ag;->b(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private synthetic e()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/b$b;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/b$b;->b:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/b$b;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/b$b;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sigmob/sdk/b$b;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sigmob/sdk/b$b;->d()V

    return-void
.end method
