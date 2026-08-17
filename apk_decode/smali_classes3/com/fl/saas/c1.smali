.class public Lcom/fl/saas/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Z

.field private d:F

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/fl/saas/r0;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_1
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSensor:Z

    .line 17
    .line 18
    return v0
.end method

.method private h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fl/saas/c1;->d:F

    .line 3
    .line 4
    iput v0, p0, Lcom/fl/saas/c1;->e:F

    .line 5
    .line 6
    iput v0, p0, Lcom/fl/saas/c1;->f:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/fl/saas/c1;->g:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/c1;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/c1;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/fl/saas/c1;->h()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fl/saas/c1;->a:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "sensor"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/hardware/SensorManager;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/fl/saas/c1;->a:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/c1;->b:Landroid/hardware/Sensor;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/fl/saas/c1;->a:Landroid/hardware/SensorManager;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/fl/saas/c1;->b:Landroid/hardware/Sensor;

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/fl/saas/c1;->a:Landroid/hardware/SensorManager;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iget-object v2, p0, Lcom/fl/saas/c1;->b:Landroid/hardware/Sensor;

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    const/4 v3, 0x3

    .line 62
    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    .line 64
    .line 65
    iput-boolean v1, p0, Lcom/fl/saas/c1;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    :cond_5
    :goto_1
    return-void

    .line 68
    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/c1;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fl/saas/c1;->a:Landroid/hardware/SensorManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/fl/saas/c1;->b:Landroid/hardware/Sensor;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/fl/saas/c1;->h()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/c1;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/c1;->a:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/fl/saas/c1;->c:Z

    .line 20
    .line 21
    return-void

    .line 22
    :catchall_1
    move-exception v1

    .line 23
    iput-boolean v0, p0, Lcom/fl/saas/c1;->c:Z

    .line 24
    .line 25
    throw v1
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/fl/saas/c1;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/fl/saas/c1;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/fl/saas/c1;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/c1;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aget v0, p1, v0

    .line 19
    .line 20
    aget v2, p1, v1

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    aget p1, p1, v3

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/fl/saas/c1;->g:Z

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iput v0, p0, Lcom/fl/saas/c1;->d:F

    .line 30
    .line 31
    iput v2, p0, Lcom/fl/saas/c1;->e:F

    .line 32
    .line 33
    iput p1, p0, Lcom/fl/saas/c1;->f:F

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/fl/saas/c1;->g:Z

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v3, p0, Lcom/fl/saas/c1;->d:F

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    cmpl-float v1, v1, v3

    .line 49
    .line 50
    if-lez v1, :cond_2

    .line 51
    .line 52
    iput v0, p0, Lcom/fl/saas/c1;->d:F

    .line 53
    .line 54
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v1, p0, Lcom/fl/saas/c1;->e:F

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    cmpl-float v0, v0, v1

    .line 65
    .line 66
    if-lez v0, :cond_3

    .line 67
    .line 68
    iput v2, p0, Lcom/fl/saas/c1;->e:F

    .line 69
    .line 70
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget v1, p0, Lcom/fl/saas/c1;->f:F

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    cmpl-float v0, v0, v1

    .line 81
    .line 82
    if-lez v0, :cond_4

    .line 83
    .line 84
    iput p1, p0, Lcom/fl/saas/c1;->f:F

    .line 85
    .line 86
    :cond_4
    :goto_0
    return-void
.end method
