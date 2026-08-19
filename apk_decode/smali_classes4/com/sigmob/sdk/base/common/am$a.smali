.class public Lcom/sigmob/sdk/base/common/am$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static e:[I

.field static f:[F

.field static g:[I

.field static h:[F

.field private static o:F


# instance fields
.field private A:Z

.field private B:F

.field private C:I

.field private D:J

.field private E:Ljava/lang/Integer;

.field private F:Z

.field private G:Z

.field private H:Ljava/util/Timer;

.field private final I:J

.field private J:J

.field protected a:I

.field public b:I

.field public c:I

.field public d:I

.field i:[F

.field j:[F

.field k:Ljava/lang/Float;

.field private l:Landroid/hardware/SensorEvent;

.field private m:Landroid/hardware/SensorEvent;

.field private n:Landroid/hardware/SensorEvent;

.field private p:Lcom/sigmob/sdk/base/common/am$c;

.field private q:F

.field private r:F

.field private s:F

.field private t:J

.field private u:Z

.field private final v:Lcom/sigmob/sdk/base/common/am$d;

.field private w:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sigmob/sdk/base/common/am$a;->e:[I

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sigmob/sdk/base/common/am$a;->f:[F

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sigmob/sdk/base/common/am$a;->g:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sigmob/sdk/base/common/am$a;->h:[F

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/sigmob/sdk/base/common/am$a;->o:F

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0x3c
        0x32
        0x2d
        0x23
        0x19
        0x14
        0xf
        0xa
        0x5
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x41200000    # 10.0f
        0x41000000    # 8.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3fe66666    # 1.8f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xf
        0xf
        0xd
        0xb
        0xa
        0x8
        0x6
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x420c0000    # 35.0f
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x41400000    # 12.0f
        0x41000000    # 8.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->i:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->j:[F

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/am$a;->I:J

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    invoke-static {}, Lcom/sigmob/sdk/base/common/am;->a()Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ag;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/ag;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/am;->a(Lcom/sigmob/sdk/base/common/ag;)Lcom/sigmob/sdk/base/common/ag;

    :cond_0
    iput-object p2, p0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/am$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/am$a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    return-wide p1
.end method

.method private a(Landroid/hardware/SensorEvent;Landroid/hardware/SensorEvent;)V
    .locals 17

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_12

    invoke-direct {v0, v2, v3}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v1, v5

    const/4 v4, 0x1

    aget v6, v1, v4

    const/4 v7, 0x2

    aget v1, v1, v7

    iget-object v8, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v8, v5

    aget v10, v8, v4

    aget v7, v8, v7

    iget-boolean v8, v0, Lcom/sigmob/sdk/base/common/am$a;->u:Z

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/16 v15, 0x0

    if-eqz v8, :cond_2

    iget-wide v4, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    cmp-long v4, v4, v11

    if-lez v4, :cond_1

    float-to-double v4, v9

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v9, v10

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v4, v9

    float-to-double v9, v7

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-wide v9, v2, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v11, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    sub-long/2addr v9, v11

    long-to-float v5, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v5, v9

    const v9, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v5, v9

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    :cond_1
    iget-wide v4, v2, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    :goto_0
    move-wide v4, v15

    goto :goto_1

    :cond_2
    iput-wide v11, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    goto :goto_0

    :goto_1
    float-to-double v9, v3

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    float-to-double v11, v6

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    float-to-double v11, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/sigmob/sdk/base/common/am$a;->t:J

    sub-long v11, v9, v11

    iget v13, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    :cond_3
    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v3, v3, v13

    if-gez v3, :cond_4

    iput v6, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    :cond_4
    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5

    iput v1, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    :cond_5
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->E:Ljava/lang/Integer;

    if-nez v1, :cond_8

    iget v1, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    if-lez v1, :cond_6

    const/16 v3, 0xa

    if-le v1, v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    :cond_7
    sget-object v1, Lcom/sigmob/sdk/base/common/am$a;->g:[I

    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    aget v1, v1, v3

    :goto_2
    int-to-float v1, v1

    sput v1, Lcom/sigmob/sdk/base/common/am$a;->o:F

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :goto_3
    float-to-double v13, v2

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v13, v15

    if-gtz v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->t:J

    return-void

    :cond_9
    sget-object v1, Lcom/sigmob/sdk/base/common/am$a;->h:[F

    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    aget v1, v1, v3

    sget v3, Lcom/sigmob/sdk/base/common/am$a;->o:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    iget-boolean v6, v0, Lcom/sigmob/sdk/base/common/am$a;->u:Z

    if-nez v6, :cond_b

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/sigmob/sdk/base/common/am$a;->u:Z

    iput-wide v9, v0, Lcom/sigmob/sdk/base/common/am$a;->t:J

    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAccelerometerData(start): acceleration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/am$c;->a()V

    return-void

    :cond_b
    float-to-double v9, v1

    cmpl-double v6, v4, v9

    const/4 v9, 0x0

    if-lez v6, :cond_d

    if-eqz v3, :cond_d

    cmpl-float v6, v7, v9

    if-ltz v6, :cond_c

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/sigmob/sdk/base/common/am$a;->F:Z

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/sigmob/sdk/base/common/am$a;->G:Z

    :goto_5
    sget-object v6, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleAccelerometerData: currentRotationAngle = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", rotationAngleValue = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", shakeLeftOver = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sigmob/sdk/base/common/am$a;->F:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shakeRightOver = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sigmob/sdk/base/common/am$a;->G:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6, v1, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/am$a;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_6

    :cond_e
    iget v1, v0, Lcom/sigmob/sdk/base/common/am$a;->b:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_f

    iget-boolean v4, v0, Lcom/sigmob/sdk/base/common/am$a;->F:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v0, Lcom/sigmob/sdk/base/common/am$a;->G:Z

    if-nez v4, :cond_10

    :cond_f
    if-nez v1, :cond_11

    iget-boolean v1, v0, Lcom/sigmob/sdk/base/common/am$a;->F:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/sigmob/sdk/base/common/am$a;->G:Z

    if-eqz v1, :cond_11

    :cond_10
    if-eqz v3, :cond_11

    iget v1, v0, Lcom/sigmob/sdk/base/common/am$a;->d:I

    int-to-long v3, v1

    cmp-long v1, v11, v3

    if-ltz v1, :cond_11

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/sigmob/sdk/base/common/am$a;->u:Z

    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAccelerometerData(end): acceleration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sensitivity = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sigmob/sdk/base/common/am$a;->o:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", currentDuration = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", shakeTriggerType = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->b:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shakeTimeThreshold = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->d:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "handleAccelerometerData: shake end"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput v9, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    iput v9, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    iput v9, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    iput-boolean v8, v0, Lcom/sigmob/sdk/base/common/am$a;->F:Z

    iput-boolean v8, v0, Lcom/sigmob/sdk/base/common/am$a;->G:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "x_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "y_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "z_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Ljava/util/Map;)V

    :cond_11
    :goto_6
    return-void

    :cond_12
    :goto_7
    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    const-string v2, "handleAccelerometerData: event is unavailable."

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interactionCompleted: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", foregroundDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", widgetIntervalTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sigmob/sdk/base/common/am$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interactionCompleted: map = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/am$c;->a(Ljava/util/Map;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/am$a;->d()V

    iget p1, p0, Lcom/sigmob/sdk/base/common/am$a;->c:I

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->H:Ljava/util/Timer;

    new-instance v1, Lcom/sigmob/sdk/base/common/am$a$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/am$a$1;-><init>(Lcom/sigmob/sdk/base/common/am$a;)V

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;I)Z
    .locals 0

    .line 8
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_1

    array-length p1, p1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cancelTimer"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->H:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->H:Ljava/util/Timer;

    return-void
.end method

.method private e()Z
    .locals 8

    .line 2
    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sigmob/sdk/base/common/am$a;->c:I

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/sigmob/sdk/base/common/am$a;->D:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x7d0

    cmp-long v1, v1, v5

    if-ltz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    sget-object v2, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overWidgetIntervalTime: type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", foregroundDuration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/sigmob/sdk/base/common/am$a;->J:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", widgetIntervalTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sigmob/sdk/base/common/am$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", canProceedToJump = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isIntervalMet = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", result = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/base/common/am;->a()Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/am;->a()Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/ag;->b(Landroid/hardware/SensorEventListener;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/am;->a()Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/ag;->a(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    if-lez p1, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SensorEntity;)V
    .locals 2

    .line 6
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->level:I

    :goto_0
    iput v1, p0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTriggerType:I

    :goto_1
    iput v1, p0, Lcom/sigmob/sdk/base/common/am$a;->b:I

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    iget v1, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->widgetIntervalTime:I

    :goto_2
    iput v1, p0, Lcom/sigmob/sdk/base/common/am$a;->c:I

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTimeThreshold:I

    :goto_3
    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->d:I

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/base/common/am;->a()Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/am;->a()Lcom/sigmob/sdk/base/common/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/ag;->b(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    iput-wide v1, p0, Lcom/sigmob/sdk/base/common/am$a;->D:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/am$a;->E:Ljava/lang/Integer;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/am$a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/common/am$a;->b:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/common/am$a;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/common/am$a;->d:I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged: sensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", i = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget-object v3, v0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->d:Lcom/sigmob/sdk/base/common/am$d;

    const/16 v5, 0xa

    if-ne v3, v4, :cond_0

    if-ne v2, v5, :cond_0

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->l:Landroid/hardware/SensorEvent;

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/am$a;->n:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;Landroid/hardware/SensorEvent;)V

    return-void

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_1

    if-ne v2, v7, :cond_1

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->l:Landroid/hardware/SensorEvent;

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_2

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->m:Landroid/hardware/SensorEvent;

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->n:Landroid/hardware/SensorEvent;

    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->l:Landroid/hardware/SensorEvent;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2c

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->m:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_10

    :cond_4
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->i:[F

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->l:Landroid/hardware/SensorEvent;

    iget-object v4, v4, Landroid/hardware/SensorEvent;->values:[F

    iget-object v8, v0, Lcom/sigmob/sdk/base/common/am$a;->m:Landroid/hardware/SensorEvent;

    iget-object v8, v8, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    invoke-static {v1, v9, v4, v8}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->i:[F

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->j:[F

    invoke-static {v1, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->j:[F

    aget v1, v1, v3

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v1, v10

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->j:[F

    aget v4, v4, v7

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v4, v10

    iget-object v8, v0, Lcom/sigmob/sdk/base/common/am$a;->j:[F

    aget v8, v8, v6

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v8, v10

    sget-object v10, Lcom/sigmob/sdk/base/common/am$1;->a:[I

    iget-object v11, v0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const-string v11, ", offset = "

    const-string v12, "onSensorChanged: type = "

    const-string v15, "turn_time"

    const p1, 0x3f7ae148    # 0.98f

    const-string v13, "turn_z"

    const/high16 v16, 0x41c80000    # 25.0f

    const-string v14, "turn_y"

    const-string v9, "turn_x"

    const-string v5, ", sensitivity = "

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x42c80000    # 100.0f

    move/from16 v20, v4

    const/4 v3, 0x0

    if-eq v10, v7, :cond_1f

    if-eq v10, v6, :cond_13

    if-eq v10, v2, :cond_5

    goto/16 :goto_f

    :cond_5
    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/am$a;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_f

    :cond_6
    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->n:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v4, v2}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    const-string v2, "onSensorChanged: Gyroscope event not available for WRING type."

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    const/4 v4, 0x0

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/am$a;->n:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v2, v4

    aget v4, v2, v7

    aget v2, v2, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v18

    if-gez v6, :cond_8

    iget-boolean v6, v0, Lcom/sigmob/sdk/base/common/am$a;->A:Z

    if-nez v6, :cond_8

    const-string v1, "wring reset"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    return-void

    :cond_8
    iget-object v6, v0, Lcom/sigmob/sdk/base/common/am$a;->E:Ljava/lang/Integer;

    if-nez v6, :cond_b

    iget v6, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    if-lez v6, :cond_a

    const/16 v10, 0xa

    if-le v6, v10, :cond_9

    goto :goto_2

    :cond_9
    sget-object v10, Lcom/sigmob/sdk/base/common/am$a;->f:[F

    aget v6, v10, v6

    :goto_1
    sput v6, Lcom/sigmob/sdk/base/common/am$a;->o:F

    goto :goto_3

    :cond_a
    :goto_2
    const/high16 v6, 0x40800000    # 4.0f

    goto :goto_1

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    goto :goto_1

    :goto_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v10, v6

    const-wide v16, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v10, v16

    if-lez v6, :cond_c

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    :goto_4
    iput-boolean v7, v0, Lcom/sigmob/sdk/base/common/am$a;->A:Z

    iget-wide v10, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    const-wide/16 v21, 0x0

    cmp-long v6, v10, v21

    if-nez v6, :cond_d

    if-eqz v7, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    const-string v1, "wring start"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/am$c;->a()V

    return-void

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0xc8

    cmp-long v6, v6, v10

    if-gez v6, :cond_e

    goto/16 :goto_f

    :cond_e
    iget v6, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f

    move/from16 v6, v20

    iput v6, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    :cond_f
    iget v6, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_10

    iput v1, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    :cond_10
    iget v1, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_11

    iput v8, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    :cond_11
    iget-wide v6, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    const-wide/16 v21, 0x0

    cmp-long v1, v6, v21

    if-lez v1, :cond_2b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v5, Lcom/sigmob/sdk/base/common/am$a;->o:F

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_12

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v4, Lcom/sigmob/sdk/base/common/am$a;->o:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/sigmob/sdk/base/common/am$a;->o:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->D:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v0, Lcom/sigmob/sdk/base/common/am$a;->D:J

    iget-wide v6, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Ljava/util/Map;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/sigmob/sdk/base/common/am$a;->A:Z

    return-void

    :cond_13
    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/am$a;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_f

    :cond_14
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    if-nez v1, :cond_15

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/am$c;->a()V

    return-void

    :cond_15
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->n:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    const-string v2, "onSensorChanged: Gyroscope event not available for SWING type."

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_16
    const/4 v4, 0x0

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->n:Landroid/hardware/SensorEvent;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v1, v4

    aget v4, v1, v7

    aget v1, v1, v6

    iget v6, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_17

    iput v2, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    :cond_17
    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_18

    iput v4, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    :cond_18
    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_19

    iput v1, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    :cond_19
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->E:Ljava/lang/Integer;

    if-nez v1, :cond_1c

    iget v1, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    if-lez v1, :cond_1b

    const/16 v10, 0xa

    if-le v1, v10, :cond_1a

    goto :goto_6

    :cond_1a
    sget-object v2, Lcom/sigmob/sdk/base/common/am$a;->e:[I

    aget v1, v2, v1

    :goto_5
    int-to-float v1, v1

    sput v1, Lcom/sigmob/sdk/base/common/am$a;->o:F

    goto :goto_7

    :cond_1b
    :goto_6
    sput v16, Lcom/sigmob/sdk/base/common/am$a;->o:F

    goto :goto_7

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :goto_7
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget-object v2, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged: previousGyroscopeData = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", roll = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v7}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, Lcom/sigmob/sdk/base/common/am$a;->o:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1d

    :goto_8
    move/from16 v2, v18

    goto :goto_9

    :cond_1d
    div-float v18, v1, v2

    goto :goto_8

    :goto_9
    sget-object v4, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSensorChanged: offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/sigmob/sdk/base/common/am$a;->o:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v8}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, v0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    mul-float v4, v4, v19

    float-to-int v4, v4

    mul-float v6, v2, v19

    float-to-int v6, v6

    if-eq v4, v6, :cond_1e

    iput v2, v0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-interface {v4, v2}, Lcom/sigmob/sdk/base/common/am$c;->a(F)V

    :cond_1e
    cmpl-float v2, v2, p1

    if-lez v2, :cond_2b

    sget-object v2, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sigmob/sdk/base/common/am$a;->o:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->D:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    iget v4, v0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "x_max_acc"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    iget v4, v0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "y_max_acc"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    iget v4, v0, Lcom/sigmob/sdk/base/common/am$a;->C:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "z_max_acc"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Ljava/util/Map;)V

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->q:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->r:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->s:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    return-void

    :cond_1f
    move/from16 v6, v20

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/am$a;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_f

    :cond_20
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    if-nez v2, :cond_21

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/am$c;->a()V

    return-void

    :cond_21
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/am$a;->E:Ljava/lang/Integer;

    if-nez v2, :cond_24

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->a:I

    if-lez v2, :cond_23

    const/16 v10, 0xa

    if-le v2, v10, :cond_22

    goto :goto_b

    :cond_22
    sget-object v4, Lcom/sigmob/sdk/base/common/am$a;->e:[I

    aget v2, v4, v2

    :goto_a
    int-to-float v2, v2

    sput v2, Lcom/sigmob/sdk/base/common/am$a;->o:F

    goto :goto_c

    :cond_23
    :goto_b
    sput v16, Lcom/sigmob/sdk/base/common/am$a;->o:F

    goto :goto_c

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_a

    :goto_c
    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_25

    iput v6, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    :cond_25
    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_26

    iput v1, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    :cond_26
    iget v1, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_27

    iput v8, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    :cond_27
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_28

    goto/16 :goto_f

    :cond_28
    sget v2, Lcom/sigmob/sdk/base/common/am$a;->o:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_29

    :goto_d
    move/from16 v2, v18

    goto :goto_e

    :cond_29
    div-float v18, v1, v2

    goto :goto_d

    :goto_e
    iget v4, v0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    mul-float v4, v4, v19

    float-to-int v4, v4

    mul-float v6, v2, v19

    float-to-int v6, v6

    if-eq v4, v6, :cond_2a

    iput v2, v0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/am$a;->p:Lcom/sigmob/sdk/base/common/am$c;

    invoke-interface {v4, v2}, Lcom/sigmob/sdk/base/common/am$c;->a(F)V

    :cond_2a
    cmpl-float v2, v2, p1

    if-lez v2, :cond_2b

    sget-object v2, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sigmob/sdk/base/common/am$a;->o:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sigmob/sdk/base/common/am$a;->D:J

    iget-wide v6, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Ljava/util/Map;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/am$a;->w:J

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->y:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->z:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->x:F

    iput v3, v0, Lcom/sigmob/sdk/base/common/am$a;->B:F

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/am$a;->k:Ljava/lang/Float;

    :cond_2b
    :goto_f
    return-void

    :cond_2c
    :goto_10
    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSensorChanged: Not enough sensor data (Accelerometer or Magnetic Field) to calculate rotation matrix for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sigmob/sdk/base/common/am$a;->v:Lcom/sigmob/sdk/base/common/am$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
