.class public Lcom/fl/saas/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static c:Lcom/fl/saas/T0;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/T0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/T0;->d()V

    return-void
.end method

.method public static b()Lcom/fl/saas/T0;
    .locals 2

    .line 1
    sget-object v0, Lcom/fl/saas/T0;->c:Lcom/fl/saas/T0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/fl/saas/T0;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/fl/saas/T0;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/fl/saas/T0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/fl/saas/T0;->c:Lcom/fl/saas/T0;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/T0;->c:Lcom/fl/saas/T0;

    .line 21
    .line 22
    return-object v0
.end method

.method private c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/T0;->a:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "sensor"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/hardware/SensorManager;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/fl/saas/T0;->a:Landroid/hardware/SensorManager;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/T0;->b:Landroid/hardware/Sensor;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/fl/saas/T0;->a:Landroid/hardware/SensorManager;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/fl/saas/T0;->b:Landroid/hardware/Sensor;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/T0;->a:Landroid/hardware/SensorManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/fl/saas/T0;->b:Landroid/hardware/Sensor;

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/fl/saas/E1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/fl/saas/E1;-><init>(Lcom/fl/saas/T0;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v1, 0xc8

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/T0;->a:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/fl/saas/T0;->a:Landroid/hardware/SensorManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/fl/saas/T0;->b:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/fl/saas/T0;->c()V

    new-instance v0, Lcom/fl/saas/E1;

    invoke-direct {v0, p0}, Lcom/fl/saas/E1;-><init>(Lcom/fl/saas/T0;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/fl/saas/T0;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
