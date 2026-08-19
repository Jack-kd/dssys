.class public Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$a;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v0, v2, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$a;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget v3, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    cmpl-float v4, v3, v4

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 28
    .line 29
    long-to-float v4, v4

    .line 30
    sub-float v3, v4, v3

    .line 31
    .line 32
    const v5, 0x3089705f    # 1.0E-9f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v3, v5

    .line 36
    const/high16 v6, 0x41200000    # 10.0f

    .line 37
    .line 38
    cmpl-float v3, v3, v6

    .line 39
    .line 40
    if-ltz v3, :cond_0

    .line 41
    .line 42
    iput v4, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget v3, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F

    .line 48
    .line 49
    sub-float/2addr v4, v3

    .line 50
    mul-float/2addr v4, v5

    .line 51
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    aget v5, v3, v5

    .line 55
    .line 56
    aget v6, v3, v1

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    aget v3, v3, v7

    .line 60
    .line 61
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(FFFF)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 65
    .line 66
    long-to-float v3, v3

    .line 67
    iput v3, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eq v0, v1, :cond_3

    .line 83
    .line 84
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eq v0, v2, :cond_3

    .line 91
    .line 92
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v1, 0x9

    .line 99
    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$a;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 103
    .line 104
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;Landroid/hardware/SensorEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_4
    return-void
.end method
