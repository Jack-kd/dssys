.class public Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;,
        Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Landroid/hardware/SensorManager;

.field public d:Z

.field public e:F

.field public f:[F

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/platform/ms/splash/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:J

.field public indexLocal:I

.field public j:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

.field public k:Landroid/hardware/Sensor;

.field public l:Landroid/hardware/Sensor;

.field public m:Landroid/hardware/Sensor;

.field public n:Z

.field public o:Landroid/hardware/SensorEventListener;

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public final v:[F

.field public w:I

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/platform/ms/splash/d;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/platform/ms/splash/d;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/platform/ms/splash/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a:I

    .line 6
    .line 7
    const-wide/16 v0, 0x1f4

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v2, v1, [F

    .line 16
    .line 17
    iput-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    .line 25
    .line 26
    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$a;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$a;-><init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->p:F

    .line 35
    .line 36
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->q:F

    .line 37
    .line 38
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->r:F

    .line 39
    .line 40
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    .line 41
    .line 42
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    .line 43
    .line 44
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    .line 45
    .line 46
    new-array v1, v1, [F

    .line 47
    .line 48
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->v:[F

    .line 49
    .line 50
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    .line 80
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    .line 87
    .line 88
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v1

    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    .line 5
    aget v0, p1, v3

    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    .line 6
    aget p1, p1, v2

    iput p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/platform/ms/splash/c;

    .line 8
    iget v6, v5, Lcom/meishu/sdk/platform/ms/splash/c;->f:I

    const/4 v7, 0x5

    if-eq v6, v3, :cond_3

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    if-eq v6, v4, :cond_3

    if-ne v6, v7, :cond_2

    .line 9
    :cond_3
    iget-boolean v8, v5, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    if-eqz v8, :cond_2

    .line 10
    iget v8, v5, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    if-ne v8, v3, :cond_2

    .line 11
    iget-object v8, v5, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    if-eqz v8, :cond_2

    if-eq v6, v4, :cond_4

    if-ne v6, v7, :cond_2

    .line 12
    :cond_4
    iget-boolean v5, v5, Lcom/meishu/sdk/platform/ms/splash/c;->s:Z

    if-eqz v5, :cond_2

    .line 13
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v5, v1

    .line 14
    aget v8, v5, v3

    .line 15
    aget v9, v5, v2

    .line 16
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 17
    :cond_5
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    new-instance v6, Lcom/meishu/sdk/platform/ms/splash/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lcom/meishu/sdk/platform/ms/splash/d;-><init>(FFFJ)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v0, v1

    iput v4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->p:F

    .line 19
    aget v5, v0, v3

    iput v5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->q:F

    .line 20
    aget v0, v0, v2

    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->r:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->v:[F

    aget v7, v6, v1

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-nez v9, :cond_7

    aget v9, v6, v3

    cmpl-float v9, v9, v8

    if-nez v9, :cond_7

    aget v9, v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v9, v9, v8

    if-nez v9, :cond_7

    .line 22
    :try_start_2
    aput v4, v6, v1

    .line 23
    aput v5, v6, v3

    .line 24
    aput v0, v6, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object v7, p1

    goto/16 :goto_2

    .line 25
    :cond_7
    :try_start_3
    iput v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    cmpl-float v7, v7, v4

    if-nez v7, :cond_8

    .line 26
    iput v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    .line 27
    :cond_8
    aget v7, v6, v3

    cmpl-float v7, v7, v5

    if-nez v7, :cond_9

    .line 28
    iget v7, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    .line 29
    :cond_9
    aget v7, v6, v2

    cmpl-float v7, v7, v0

    if-nez v7, :cond_a

    .line 30
    iget v7, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I

    .line 31
    :cond_a
    iget v7, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->w:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v7, v2, :cond_b

    .line 32
    :try_start_4
    aput v4, v6, v1

    .line 33
    aput v5, v6, v3

    .line 34
    aput v0, v6, v2

    return-void

    .line 35
    :cond_b
    aput v4, v6, v1

    .line 36
    aput v5, v6, v3

    .line 37
    aput v0, v6, v2

    .line 38
    iget v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    sub-float/2addr v4, v1

    .line 39
    iget v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    sub-float/2addr v5, v1

    .line 40
    iget v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    sub-float/2addr v0, v1

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v5, v4

    mul-float/2addr v0, v0

    add-float/2addr v0, v5

    float-to-double v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 42
    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_c

    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_c

    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_c

    goto :goto_1

    .line 43
    :cond_c
    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->p:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_d

    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->q:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_d

    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->r:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_d

    :goto_1
    const-wide v2, 0x402399999999999aL    # 9.8

    sub-double/2addr v0, v2

    :cond_d
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpg-double v6, v4, v0

    if-gez v6, :cond_e

    sub-double/2addr v0, v4

    div-double/2addr v0, v2

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    add-double/2addr v0, v4

    :cond_e
    move-wide v2, v0

    .line 45
    iget v4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->p:F

    iget v5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->q:F

    iget v6, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->r:F

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(DFFFLandroid/hardware/SensorEvent;)V

    return-void

    .line 46
    :goto_2
    iget-object p0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->v:[F

    iget-object p1, v7, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v1

    aput v4, p0, v1

    .line 47
    aget v1, p1, v3

    aput v1, p0, v3

    .line 48
    aget p1, p1, v2

    aput p1, p0, v2

    .line 49
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_f
    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    return p1
.end method

.method public static getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$b;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    .line 268
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->n:Z

    .line 269
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    const/4 v3, 0x1

    .line 270
    aput v2, v1, v3

    const/4 v4, 0x2

    .line 271
    aput v2, v1, v4

    .line 272
    iput v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F

    .line 273
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 274
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    .line 280
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    .line 281
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 282
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 283
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 284
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 286
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->v:[F

    aput v2, v1, v0

    .line 288
    aput v2, v1, v3

    .line 289
    aput v2, v1, v4

    return-void
.end method

.method public final a(DFFFLandroid/hardware/SensorEvent;)V
    .locals 14

    move-wide v0, p1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 92
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/meishu/sdk/platform/ms/splash/c;

    .line 93
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->f:I

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v3, v7, :cond_1

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    if-eq v3, v6, :cond_1

    if-eq v3, v4, :cond_1

    const/4 v8, 0x7

    if-ne v3, v8, :cond_0

    .line 94
    :cond_1
    iget-boolean v8, v5, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    if-eqz v8, :cond_0

    .line 95
    iget v8, v5, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    if-ne v8, v7, :cond_0

    .line 96
    iget-object v8, v5, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    if-eqz v8, :cond_0

    if-eq v3, v6, :cond_4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->d:I

    int-to-double v3, v3

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_3

    .line 98
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/ms/splash/c;->c()V

    .line 99
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 100
    iget v4, v5, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    if-le v3, v4, :cond_0

    double-to-int v7, v0

    const/4 v6, 0x0

    move-object v4, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 101
    invoke-virtual/range {v4 .. v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 102
    :cond_3
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/ms/splash/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->o:I

    int-to-double v3, v3

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_0

    .line 104
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/ms/splash/c;->c()V

    .line 105
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 106
    iget v4, v5, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    if-le v3, v4, :cond_0

    double-to-int v7, v0

    const/4 v6, 0x1

    move-object v4, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 107
    invoke-virtual/range {v4 .. v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V

    goto :goto_0

    .line 108
    :cond_4
    :goto_1
    sget-wide v8, Lcom/meishu/sdk/core/utils/r0;->g:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    const-wide/16 v8, 0x7d0

    .line 109
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 110
    iget-wide v12, v5, Lcom/meishu/sdk/platform/ms/splash/c;->u:J

    sub-long v12, v10, v12

    cmp-long v3, v12, v8

    if-lez v3, :cond_6

    .line 111
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 112
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 113
    iput-boolean v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->t:Z

    .line 114
    iput-boolean v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->s:Z

    .line 115
    :cond_6
    iget-boolean v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->s:Z

    if-nez v3, :cond_8

    .line 116
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->d:I

    int-to-double v8, v3

    cmpg-double v3, v0, v8

    if-gez v3, :cond_7

    goto/16 :goto_4

    .line 117
    :cond_7
    iput-boolean v7, v5, Lcom/meishu/sdk/platform/ms/splash/c;->s:Z

    .line 118
    iput-wide v10, v5, Lcom/meishu/sdk/platform/ms/splash/c;->u:J

    .line 119
    :cond_8
    iget-boolean v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->t:Z

    if-nez v3, :cond_a

    .line 120
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c()Z

    move-result v0

    if-nez v0, :cond_9

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual {p0, v8, v9, v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(FFF)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 121
    :cond_9
    iput-boolean v7, v5, Lcom/meishu/sdk/platform/ms/splash/c;->t:Z

    .line 122
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_a
    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 124
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->e:I

    int-to-double v6, v3

    cmpl-double v3, v0, v6

    if-ltz v3, :cond_b

    .line 125
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/ms/splash/c;->c()V

    .line 126
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 127
    iget v6, v5, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    if-le v3, v6, :cond_c

    double-to-int v7, v0

    const/4 v6, 0x0

    move-object v4, p0

    .line 128
    invoke-virtual/range {v4 .. v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V

    goto :goto_3

    .line 129
    :cond_b
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/ms/splash/c;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 130
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->o:I

    int-to-double v3, v3

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_c

    .line 131
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/ms/splash/c;->c()V

    .line 132
    iget v3, v5, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 133
    iget v4, v5, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    if-le v3, v4, :cond_c

    double-to-int v7, v0

    const/4 v6, 0x1

    move-object v4, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 134
    invoke-virtual/range {v4 .. v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V

    .line 135
    :cond_c
    :goto_3
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 136
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_4
    return-void

    .line 137
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(FFFF)V
    .locals 28

    move-object/from16 v0, p0

    .line 178
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 179
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/platform/ms/splash/c;

    .line 180
    iget v2, v1, Lcom/meishu/sdk/platform/ms/splash/c;->f:I

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    if-eq v2, v6, :cond_1

    const/4 v9, 0x5

    if-eq v2, v9, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    .line 181
    :cond_1
    iget-boolean v9, v1, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    if-eqz v9, :cond_15

    .line 182
    iget v9, v1, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_15

    .line 183
    iget-object v9, v1, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    if-eqz v9, :cond_15

    .line 184
    iget-wide v11, v1, Lcom/meishu/sdk/platform/ms/splash/c;->q:D

    const/4 v9, 0x0

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aget v3, v2, v9

    mul-float v4, p1, p4

    add-float/2addr v4, v3

    aput v4, v2, v9

    .line 186
    aget v3, v2, v10

    mul-float v5, p2, p4

    add-float/2addr v5, v3

    aput v5, v2, v10

    .line 187
    aget v3, v2, v8

    mul-float v5, p3, p4

    add-float/2addr v5, v3

    aput v5, v2, v8

    float-to-double v2, v4

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 189
    iget-object v3, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aget v3, v3, v10

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 190
    iget-object v4, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aget v4, v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v5, v3

    move v6, v4

    move v4, v2

    goto/16 :goto_b

    .line 191
    :cond_3
    :goto_1
    sget-wide v2, Lcom/meishu/sdk/core/utils/r0;->g:J

    const-wide/16 v4, 0x0

    cmp-long v11, v2, v4

    const-wide/16 v12, 0xbb8

    if-lez v11, :cond_4

    goto :goto_2

    :cond_4
    move-wide v2, v12

    .line 192
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide/from16 v16, v4

    .line 193
    iget-wide v4, v1, Lcom/meishu/sdk/platform/ms/splash/c;->u:J

    sub-long v4, v14, v4

    cmp-long v2, v4, v2

    const/4 v3, 0x0

    if-lez v2, :cond_5

    .line 194
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 195
    iput-wide v14, v1, Lcom/meishu/sdk/platform/ms/splash/c;->u:J

    .line 196
    iput-boolean v9, v1, Lcom/meishu/sdk/platform/ms/splash/c;->t:Z

    .line 197
    iput-boolean v9, v1, Lcom/meishu/sdk/platform/ms/splash/c;->s:Z

    .line 198
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aput v3, v2, v9

    .line 199
    aput v3, v2, v10

    .line 200
    aput v3, v2, v8

    .line 201
    :cond_5
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aget v4, v2, v9

    mul-float v5, p1, p4

    add-float/2addr v5, v4

    aput v5, v2, v9

    mul-float v5, v5, p1

    cmpg-float v4, v5, v3

    if-gez v4, :cond_6

    .line 202
    aput v3, v2, v9

    .line 203
    :cond_6
    aget v4, v2, v10

    mul-float v5, p2, p4

    add-float/2addr v5, v4

    aput v5, v2, v10

    mul-float v5, v5, p2

    cmpg-float v4, v5, v3

    if-gez v4, :cond_7

    .line 204
    aput v3, v2, v10

    .line 205
    :cond_7
    aget v4, v2, v8

    mul-float v5, p3, p4

    add-float/2addr v5, v4

    aput v5, v2, v8

    mul-float v5, v5, p3

    cmpg-float v4, v5, v3

    if-gez v4, :cond_8

    .line 206
    aput v3, v2, v8

    .line 207
    :cond_8
    aget v2, v2, v9

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 208
    iget-object v4, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aget v4, v4, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 209
    iget-object v5, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aget v5, v5, v8

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 210
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/c;->a()Z

    .line 211
    iget-wide v10, v1, Lcom/meishu/sdk/platform/ms/splash/c;->q:D

    .line 212
    iget v8, v1, Lcom/meishu/sdk/platform/ms/splash/c;->e:I

    int-to-double v14, v8

    .line 213
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v8, v8, v18

    if-gtz v8, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v18

    if-gtz v8, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v18

    if-lez v8, :cond_9

    goto :goto_3

    :cond_9
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    goto :goto_4

    .line 214
    :cond_a
    :goto_3
    iget-object v8, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    new-instance v18, Lcom/meishu/sdk/platform/ms/splash/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v18 .. v23}, Lcom/meishu/sdk/platform/ms/splash/d;-><init>(FFFJ)V

    move-object/from16 v2, v18

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_4
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 216
    sget-wide v4, Lcom/meishu/sdk/core/utils/r0;->g:J

    cmp-long v2, v4, v16

    if-lez v2, :cond_b

    move-wide v12, v4

    .line 217
    :cond_b
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v9

    move v5, v4

    move-wide/from16 v16, v10

    move-wide/from16 v22, v16

    .line 218
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meishu/sdk/platform/ms/splash/d;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move/from16 v18, v3

    move/from16 v26, v4

    .line 221
    iget-wide v3, v8, Lcom/meishu/sdk/platform/ms/splash/d;->d:J

    sub-long v24, v24, v3

    cmp-long v3, v24, v12

    if-lez v3, :cond_c

    .line 222
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move/from16 v3, v18

    move/from16 v4, v26

    goto :goto_5

    .line 223
    :cond_c
    iget v3, v8, Lcom/meishu/sdk/platform/ms/splash/d;->a:F

    .line 224
    iget v4, v8, Lcom/meishu/sdk/platform/ms/splash/d;->b:F

    .line 225
    iget v8, v8, Lcom/meishu/sdk/platform/ms/splash/d;->c:F

    .line 226
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object/from16 v25, v2

    move/from16 v27, v3

    float-to-double v2, v6

    cmpl-double v2, v2, v10

    if-lez v2, :cond_e

    cmpl-float v2, v27, v18

    if-lez v2, :cond_d

    or-int/lit8 v2, v9, 0x1

    goto :goto_6

    :cond_d
    or-int/lit8 v2, v9, 0x2

    :goto_6
    move v9, v2

    move-wide v10, v14

    .line 227
    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v16

    if-lez v2, :cond_10

    cmpl-float v2, v4, v18

    if-lez v2, :cond_f

    or-int/lit8 v2, v26, 0x1

    goto :goto_7

    :cond_f
    or-int/lit8 v2, v26, 0x2

    :goto_7
    move v4, v2

    move-wide/from16 v16, v14

    goto :goto_8

    :cond_10
    move/from16 v4, v26

    .line 228
    :goto_8
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v22

    if-lez v2, :cond_12

    cmpl-float v2, v8, v18

    if-lez v2, :cond_11

    or-int/lit8 v2, v5, 0x1

    goto :goto_9

    :cond_11
    or-int/lit8 v2, v5, 0x2

    :goto_9
    move v5, v2

    move-wide/from16 v22, v14

    :cond_12
    const/4 v2, 0x3

    if-eq v9, v2, :cond_14

    if-eq v4, v2, :cond_14

    if-ne v5, v2, :cond_13

    goto :goto_a

    :cond_13
    move v6, v2

    move/from16 v3, v18

    move-object/from16 v2, v25

    goto :goto_5

    .line 229
    :cond_14
    :goto_a
    iget v2, v1, Lcom/meishu/sdk/platform/ms/splash/c;->e:I

    int-to-double v11, v2

    .line 230
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    .line 231
    :goto_b
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 232
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 233
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    .line 234
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v8, v2

    cmpl-double v3, v8, v11

    if-ltz v3, :cond_16

    .line 235
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/c;->c()V

    .line 236
    iget v3, v1, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 237
    iget v8, v1, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    if-le v3, v8, :cond_15

    mul-int/lit8 v2, v2, 0x64

    .line 238
    div-int/lit8 v3, v2, 0x5a

    const/4 v2, 0x0

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V

    :cond_15
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 240
    :cond_16
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/c;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 241
    iget-wide v10, v1, Lcom/meishu/sdk/platform/ms/splash/c;->p:D

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_17

    .line 242
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/c;->c()V

    .line 243
    :cond_17
    iget v0, v1, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 244
    iget v3, v1, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    if-le v0, v3, :cond_15

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d()V

    mul-int/lit8 v2, v2, 0x64

    .line 246
    div-int/lit8 v3, v2, 0x5a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    .line 247
    invoke-virtual/range {v0 .. v6}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/platform/ms/splash/c;

    .line 263
    iget v1, v1, Lcom/meishu/sdk/platform/ms/splash/c;->a:I

    if-ne p1, v1, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object p1

    new-instance v0, Lcom/meishu/sdk/platform/ms/splash/f;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/splash/f;-><init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    return-void

    .line 266
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a()V

    return-void
.end method

.method public a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V
    .locals 4

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 53
    iput-wide p4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b:J

    .line 54
    iget-object p4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    const/4 p5, 0x0

    aput p5, p4, v0

    const/4 v1, 0x1

    .line 55
    aput p5, p4, v1

    const/4 v2, 0x2

    .line 56
    aput p5, p4, v2

    .line 57
    iget-object p4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->v:[F

    aput p5, p4, v0

    .line 58
    aput p5, p4, v1

    .line 59
    aput p5, p4, v2

    .line 60
    iput p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->p:F

    .line 61
    iput p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->q:F

    .line 62
    iput p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->r:F

    .line 63
    iput p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    .line 64
    iput p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    .line 65
    iput p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    .line 66
    iput p3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a:I

    .line 67
    new-instance p4, Lcom/meishu/sdk/platform/ms/splash/c;

    invoke-direct {p4}, Lcom/meishu/sdk/platform/ms/splash/c;-><init>()V

    .line 68
    iput v1, p4, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    .line 69
    iget-object p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 70
    iput-object p5, p4, Lcom/meishu/sdk/platform/ms/splash/c;->i:Ljava/lang/String;

    .line 71
    iget-object p5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->j:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 72
    iput-object p5, p4, Lcom/meishu/sdk/platform/ms/splash/c;->k:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 73
    iget-wide v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->i:J

    .line 74
    iput-wide v2, p4, Lcom/meishu/sdk/platform/ms/splash/c;->j:J

    .line 75
    iput p6, p4, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    .line 76
    iput p7, p4, Lcom/meishu/sdk/platform/ms/splash/c;->a:I

    .line 77
    iput p8, p4, Lcom/meishu/sdk/platform/ms/splash/c;->c:I

    .line 78
    iput-object p9, p4, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    .line 79
    iput p2, p4, Lcom/meishu/sdk/platform/ms/splash/c;->d:I

    const/16 p5, 0x64

    if-lt p2, v1, :cond_0

    if-gt p2, p5, :cond_0

    int-to-double p6, p2

    const-wide p8, 0x4056800000000000L    # 90.0

    mul-double/2addr p6, p8

    const-wide/high16 p8, 0x4059000000000000L    # 100.0

    div-double/2addr p6, p8

    .line 80
    iput-wide p6, p4, Lcom/meishu/sdk/platform/ms/splash/c;->q:D

    const-wide/high16 p8, 0x4000000000000000L    # 2.0

    cmpg-double p2, p6, p8

    if-gez p2, :cond_1

    .line 81
    iput-wide p8, p4, Lcom/meishu/sdk/platform/ms/splash/c;->q:D

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 p2, 0x32

    .line 82
    iput p2, p4, Lcom/meishu/sdk/platform/ms/splash/c;->d:I

    const-wide/high16 p6, 0x4034000000000000L    # 20.0

    .line 83
    iput-wide p6, p4, Lcom/meishu/sdk/platform/ms/splash/c;->q:D

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    if-le p1, p5, :cond_3

    .line 84
    :cond_2
    iget p1, p4, Lcom/meishu/sdk/platform/ms/splash/c;->d:I

    :cond_3
    iput p1, p4, Lcom/meishu/sdk/platform/ms/splash/c;->e:I

    .line 85
    iput p3, p4, Lcom/meishu/sdk/platform/ms/splash/c;->f:I

    .line 86
    iput-boolean v1, p4, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    .line 87
    invoke-virtual {p4}, Lcom/meishu/sdk/platform/ms/splash/c;->b()V

    .line 88
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 89
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :goto_2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->n:Z

    return-void
.end method

.method public a(IZ)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/platform/ms/splash/c;

    .line 253
    iget v3, v2, Lcom/meishu/sdk/platform/ms/splash/c;->a:I

    if-ne p1, v3, :cond_2

    .line 254
    iput-boolean p2, v2, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    .line 255
    :cond_2
    iget-boolean v2, v2, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f()V

    .line 258
    :goto_1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object p1

    new-instance p2, Lcom/meishu/sdk/platform/ms/splash/f;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/ms/splash/f;-><init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V
    .locals 1

    if-eqz p2, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->p:F

    .line 162
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->q:F

    .line 163
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->r:F

    .line 164
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    .line 165
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    .line 166
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    .line 167
    new-instance v0, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    invoke-direct {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;-><init>()V

    .line 168
    invoke-virtual {v0, p4}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setShakeX(F)V

    .line 169
    invoke-virtual {v0, p5}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setShakeY(F)V

    .line 170
    invoke-virtual {v0, p6}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setShakeZ(F)V

    .line 171
    iget p4, p1, Lcom/meishu/sdk/platform/ms/splash/c;->f:I

    const/4 p5, 0x4

    if-eq p4, p5, :cond_2

    const/4 p6, 0x5

    if-ne p4, p6, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    iget-object p4, p1, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    .line 173
    invoke-interface {p4, p5, p2, p3, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;->onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    goto :goto_2

    .line 174
    :cond_2
    :goto_1
    iget-object p4, p1, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    const/16 p5, 0x40

    .line 175
    invoke-interface {p4, p5, p2, p3, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;->onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    .line 176
    :goto_2
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 177
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 291
    iput-wide p2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->i:J

    .line 292
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->j:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 248
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    .line 249
    :try_start_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/meishu/sdk/platform/ms/splash/e;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/splash/e;-><init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V

    iget-wide v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(FFF)Z
    .locals 12

    .line 138
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/d;

    iget v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    sub-float v3, p1, v3

    iget p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    sub-float v4, p2, p1

    iget p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    sub-float v5, p3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/meishu/sdk/platform/ms/splash/d;-><init>(FFFJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/d;

    .line 141
    iget v2, v0, Lcom/meishu/sdk/platform/ms/splash/d;->a:F

    .line 142
    iget v3, v0, Lcom/meishu/sdk/platform/ms/splash/d;->b:F

    .line 143
    iget v0, v0, Lcom/meishu/sdk/platform/ms/splash/d;->c:F

    .line 144
    iget v4, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    sub-float v4, p1, v4

    iget v5, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    sub-float v5, p2, v5

    iget v6, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    sub-float v6, p3, v6

    .line 145
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    mul-float v7, v2, v4

    mul-float v8, v3, v5

    add-float/2addr v8, v7

    mul-float v7, v0, v6

    add-float/2addr v7, v8

    float-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 147
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v2, v3

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v8

    float-to-double v8, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    float-to-double v8, v4

    .line 148
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v5

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    float-to-double v8, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    float-to-double v6, v7

    mul-double/2addr v2, v4

    div-double/2addr v6, v2

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-float v0, v2

    :goto_1
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/d;

    iget v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->s:F

    sub-float v3, p1, v3

    iget p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->t:F

    sub-float v4, p2, p1

    iget p1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->u:F

    sub-float v5, p3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/meishu/sdk/platform/ms/splash/d;-><init>(FFFJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_3
    :goto_2
    sget-wide p1, Lcom/meishu/sdk/core/utils/r0;->g:J

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 p1, 0x7d0

    .line 152
    :goto_3
    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    if-lez p3, :cond_8

    .line 153
    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, v0

    .line 154
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/platform/ms/splash/d;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 157
    iget-wide v6, v3, Lcom/meishu/sdk/platform/ms/splash/d;->d:J

    sub-long/2addr v4, v6

    cmp-long v3, v4, p1

    if-lez v3, :cond_5

    .line 158
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x5

    if-ge v2, p1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    return v0
.end method

.method public b()I
    .locals 4

    .line 17
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final b(Lcom/meishu/sdk/platform/ms/splash/c;ZIFFF)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->d:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F

    .line 3
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    aput v1, v2, v0

    const/4 v0, 0x1

    .line 4
    aput v1, v2, v0

    const/4 v0, 0x2

    .line 5
    aput v1, v2, v0

    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    invoke-direct {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;-><init>()V

    .line 7
    invoke-virtual {v0, p4}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTurnX(F)V

    .line 8
    invoke-virtual {v0, p5}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTurnY(F)V

    .line 9
    invoke-virtual {v0, p6}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTurnZ(F)V

    .line 10
    iget p4, p1, Lcom/meishu/sdk/platform/ms/splash/c;->f:I

    const/4 p5, 0x6

    if-eq p4, p5, :cond_1

    const/4 p5, 0x7

    if-eq p4, p5, :cond_1

    const/16 p5, 0x8

    if-ne p4, p5, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p4, p1, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    .line 12
    invoke-interface {p4, p5, p2, p3, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;->onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 13
    :cond_1
    :goto_0
    iget-object p4, p1, Lcom/meishu/sdk/platform/ms/splash/c;->b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

    const/16 p5, 0x100

    .line 14
    invoke-interface {p4, p5, p2, p3, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;->onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    .line 15
    :goto_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 16
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final c()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lcom/meishu/sdk/platform/ms/splash/d;

    .line 23
    .line 24
    iget v7, v6, Lcom/meishu/sdk/platform/ms/splash/d;->a:F

    .line 25
    .line 26
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v7, v6, Lcom/meishu/sdk/platform/ms/splash/d;->b:F

    .line 35
    .line 36
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget v6, v6, Lcom/meishu/sdk/platform/ms/splash/d;->c:F

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    cmpl-float v1, v3, v4

    .line 58
    .line 59
    if-ltz v1, :cond_1

    .line 60
    .line 61
    cmpl-float v1, v3, v5

    .line 62
    .line 63
    if-ltz v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x58

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    cmpl-float v1, v4, v3

    .line 69
    .line 70
    if-ltz v1, :cond_2

    .line 71
    .line 72
    cmpl-float v1, v4, v5

    .line 73
    .line 74
    if-ltz v1, :cond_2

    .line 75
    .line 76
    const/16 v1, 0x59

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/16 v1, 0x5a

    .line 80
    .line 81
    :goto_1
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move v4, v0

    .line 88
    move v5, v4

    .line 89
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_6

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/meishu/sdk/platform/ms/splash/d;

    .line 100
    .line 101
    packed-switch v1, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    move v6, v2

    .line 105
    goto :goto_2

    .line 106
    :pswitch_0
    iget v6, v6, Lcom/meishu/sdk/platform/ms/splash/d;->c:F

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :pswitch_1
    iget v6, v6, Lcom/meishu/sdk/platform/ms/splash/d;->b:F

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :pswitch_2
    iget v6, v6, Lcom/meishu/sdk/platform/ms/splash/d;->a:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    :goto_2
    cmpl-float v7, v6, v2

    .line 115
    .line 116
    const/4 v8, 0x1

    .line 117
    if-lez v7, :cond_4

    .line 118
    .line 119
    move v4, v8

    .line 120
    :cond_4
    cmpg-float v6, v6, v2

    .line 121
    .line 122
    if-gez v6, :cond_5

    .line 123
    .line 124
    move v5, v8

    .line 125
    :cond_5
    if-eqz v4, :cond_3

    .line 126
    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    return v8

    .line 130
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_6
    return v0

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 5

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->i:J

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/core/utils/v0$a;

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    const/4 v2, 0x5

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/meishu/sdk/core/utils/v0$a;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/v0$a;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    iput-boolean v3, v0, Lcom/meishu/sdk/core/utils/v0$a;->a:Z

    .line 39
    .line 40
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-boolean v3, v0, Lcom/meishu/sdk/core/utils/v0$a;->b:Z

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3, v2}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object v1, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->h:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-wide v3, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->i:J

    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 22
    .line 23
    const/16 v1, 0x9

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
