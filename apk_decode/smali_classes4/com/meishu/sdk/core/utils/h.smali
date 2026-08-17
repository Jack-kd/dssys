.class public Lcom/meishu/sdk/core/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Landroid/hardware/Sensor;

.field public static c:Landroid/hardware/Sensor;

.field public static d:Landroid/hardware/Sensor;

.field public static e:Landroid/hardware/SensorManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/utils/h;->a:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const/16 v3, 0x40

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x100

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v3, 0x6

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/16 v1, 0xc

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x3

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x48

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v3, 0x5

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x104

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const/4 v3, 0x7

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const/16 v1, 0x140

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static a(I)I
    .locals 3

    .line 45
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 47
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit16 v1, p0, -0x149

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    const/4 v2, 0x1

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    and-int/lit8 p0, p0, -0x45

    :cond_3
    return p0
.end method

.method public static a(II)I
    .locals 5

    .line 50
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x2

    const/16 v3, 0x100

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    and-int/lit16 v1, v0, 0x100

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit16 p0, p0, -0x109

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v3, :cond_3

    and-int/lit8 v1, p0, 0x8

    if-ne v1, v4, :cond_3

    and-int/lit8 p0, p0, -0x9

    :cond_3
    :goto_1
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    and-int/lit8 p0, p0, -0x45

    if-lez p0, :cond_5

    goto :goto_2

    :cond_5
    move p0, v2

    .line 51
    :goto_2
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v0

    if-ne v0, p1, :cond_6

    const/16 p1, 0x3ef

    goto :goto_3

    :cond_6
    const/16 p1, 0x1ef

    .line 52
    :goto_3
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    and-int/2addr v0, p0

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    return p0

    :cond_7
    return v2
.end method

.method public static a()V
    .locals 12

    .line 1
    const-string v0, "shake_act_type"

    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v2, 0x100

    const/16 v3, 0x8

    const/16 v4, 0x40

    const/4 v5, 0x4

    .line 2
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v7, "sensor"

    const/16 v8, 0x9

    const/4 v9, 0x1

    if-eqz v6, :cond_a

    :try_start_2
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 4
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v6

    .line 5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v1, 0x4

    if-ne v10, v5, :cond_1

    and-int/lit8 v10, v1, 0x40

    if-eq v10, v4, :cond_5

    .line 6
    :cond_1
    sget-object v10, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    if-nez v10, :cond_2

    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/SensorManager;

    sput-object v10, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    goto :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_4

    .line 8
    :cond_2
    :goto_0
    sget-object v10, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    if-nez v10, :cond_3

    .line 9
    sget-object v10, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v10, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    sput-object v8, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    .line 10
    :cond_3
    sget-object v8, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;

    if-nez v8, :cond_5

    .line 11
    sget-object v8, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    sput-object v8, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    sput-object v11, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;

    .line 13
    sput-object v11, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    and-int/lit8 v1, v1, -0x45

    .line 14
    :cond_5
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 15
    sput-object v11, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;

    and-int/lit16 v1, v1, -0x149

    goto :goto_3

    :cond_6
    and-int/lit8 v6, v1, 0x8

    if-ne v6, v3, :cond_7

    and-int/lit16 v6, v1, 0x100

    if-eq v6, v2, :cond_9

    .line 16
    :cond_7
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    if-nez v6, :cond_8

    .line 17
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    sput-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    .line 18
    :cond_8
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;

    if-nez v6, :cond_9

    .line 19
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    sput-object v6, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_9
    :goto_3
    or-int/lit16 v6, v1, 0xa3

    .line 20
    :try_start_3
    sput v6, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 21
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v6

    .line 22
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_a
    and-int/lit8 v6, v1, 0x8

    if-ne v6, v3, :cond_b

    and-int/lit8 v6, v1, 0x4

    if-ne v6, v5, :cond_b

    and-int/lit8 v6, v1, 0x40

    if-ne v6, v4, :cond_b

    and-int/lit16 v6, v1, 0x100

    if-ne v6, v2, :cond_b

    goto/16 :goto_8

    .line 23
    :cond_b
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    if-nez v6, :cond_c

    .line 24
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    sput-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    .line 25
    :cond_c
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    if-nez v6, :cond_d

    .line 26
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    sput-object v6, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    .line 27
    :cond_d
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;

    if-nez v6, :cond_e

    .line 28
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    sput-object v6, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;

    .line 29
    :cond_e
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;

    if-nez v6, :cond_f

    .line 30
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    sput-object v6, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 31
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :cond_f
    :goto_5
    sget-object v6, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;

    if-eqz v6, :cond_10

    sget-object v6, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    if-eqz v6, :cond_10

    sget-object v6, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v6, :cond_10

    and-int/lit8 v6, v1, 0x40

    if-eq v6, v4, :cond_10

    or-int/lit8 v1, v1, 0x40

    .line 33
    :try_start_6
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/j;->a(I)V

    .line 34
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v4

    .line 35
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :cond_10
    :goto_6
    sget-object v4, Lcom/meishu/sdk/core/utils/h;->b:Landroid/hardware/Sensor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_12

    and-int/lit8 v4, v1, 0x8

    if-ne v4, v3, :cond_11

    and-int/lit16 v3, v1, 0x100

    if-eq v3, v2, :cond_12

    :cond_11
    or-int/lit16 v1, v1, 0x108

    .line 37
    :try_start_8
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/j;->a(I)V

    .line 38
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v2

    .line 39
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_12
    :goto_7
    sget-object v2, Lcom/meishu/sdk/core/utils/h;->c:Landroid/hardware/Sensor;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/meishu/sdk/core/utils/h;->d:Landroid/hardware/Sensor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_13

    and-int/lit8 v2, v1, 0x4

    if-eq v2, v5, :cond_13

    or-int/2addr v1, v5

    .line 41
    :try_start_a
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/j;->a(I)V

    .line 42
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    .line 43
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_8
    return-void
.end method

.method public static b(I)I
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x14c

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/h;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    :cond_0
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    or-int/2addr p0, v0

    .line 10
    return p0
.end method

.method public static d(I)Z
    .locals 1

    .line 1
    and-int/lit8 p0, p0, 0x44

    .line 2
    .line 3
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static e(I)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x108

    .line 2
    .line 3
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method
