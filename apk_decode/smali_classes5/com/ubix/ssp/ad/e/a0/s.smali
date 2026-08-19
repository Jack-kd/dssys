.class public Lcom/ubix/ssp/ad/e/a0/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/s$e;,
        Lcom/ubix/ssp/ad/e/a0/s$d;,
        Lcom/ubix/ssp/ad/e/a0/s$c;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field A:F

.field B:F

.field C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:Lcom/ubix/ssp/ad/e/a0/s$c;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:F

.field L:Z

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:Z

.field private W:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/hardware/Sensor;

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Z

.field l:J

.field public m:D

.field public n:I

.field private o:Lcom/ubix/ssp/ad/e/a0/s$e;

.field private p:Landroid/animation/ObjectAnimator;

.field q:[I

.field r:Z

.field private s:J

.field t:[Lcom/ubix/ssp/ad/e/a0/s$d;

.field u:J

.field v:Z

.field w:F

.field private x:I

.field private y:D

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;DID)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->j:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->k:Z

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    const/4 v4, 0x5

    iput v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->n:I

    const/16 v4, 0x23

    filled-new-array {v4, v4}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->r:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/ubix/ssp/ad/e/a0/s$d;

    iput-object v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->v:Z

    const/16 v6, 0x1388

    iput v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->x:I

    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->H:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->J:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->K:F

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->L:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->b:Landroid/content/Context;

    iput-wide p5, p0, Lcom/ubix/ssp/ad/e/a0/s;->y:D

    const-wide/16 p5, 0x0

    cmpg-double p1, p2, p5

    if-gtz p1, :cond_0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    :goto_0
    if-lez p4, :cond_1

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/s;->n:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;D[IIDZZ)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->j:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->k:Z

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    const/4 v4, 0x5

    iput v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->n:I

    const/16 v4, 0x23

    filled-new-array {v4, v4}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->r:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/ubix/ssp/ad/e/a0/s$d;

    iput-object v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->v:Z

    const/16 v6, 0x1388

    iput v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->x:I

    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->H:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->J:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->K:F

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->L:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->b:Landroid/content/Context;

    iput-boolean p8, p0, Lcom/ubix/ssp/ad/e/a0/s;->I:Z

    move/from16 p1, p9

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->J:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->r:Z

    iput-wide p6, p0, Lcom/ubix/ssp/ad/e/a0/s;->y:D

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-gtz p1, :cond_0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    :goto_0
    array-length p1, p4

    if-lez p1, :cond_1

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    :cond_1
    if-lez p5, :cond_2

    iput p5, p0, Lcom/ubix/ssp/ad/e/a0/s;->x:I

    return-void

    :cond_2
    iput v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->x:I

    return-void
.end method

.method private a(FF)F
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/s;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/s;->p:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/s;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->p:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/s;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/s;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SENSOR_INFO_TYPE__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "__SENSOR_UN_RECEIVE__"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "__SENSOR_UN_SUPPORT_LIST__"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 18

    .line 7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->l:J

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const-string v3, "ShakeSensor "

    const-string v4, " server load value \uff1a "

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    iput-boolean v7, v0, Lcom/ubix/ssp/ad/e/a0/s;->V:Z

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v1, v6

    iput v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->D:F

    aget v8, v1, v7

    iput v8, v0, Lcom/ubix/ssp/ad/e/a0/s;->E:F

    aget v1, v1, v5

    iput v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->F:F

    mul-float/2addr v2, v2

    mul-float/2addr v8, v8

    add-float/2addr v2, v8

    mul-float/2addr v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v8, 0x40239eb851eb851fL    # 9.81

    sub-double/2addr v1, v8

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runDimensionInfo_delta="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    iget v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->D:F

    invoke-direct {v0, v2, v5}, Lcom/ubix/ssp/ad/e/a0/s;->a(FF)F

    move-result v2

    iput v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    iget v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->E:F

    invoke-direct {v0, v2, v5}, Lcom/ubix/ssp/ad/e/a0/s;->a(FF)F

    move-result v2

    iput v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    iget v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->F:F

    invoke-direct {v0, v2, v5}, Lcom/ubix/ssp/ad/e/a0/s;->a(FF)F

    move-result v2

    iput v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    float-to-double v8, v1

    iget-wide v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    cmpl-double v2, v8, v10

    if-lez v2, :cond_f

    iput v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->K:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runDimensionInfo_delta\u8fbe\u5230\u89e6\u53d1\u503c="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iput-boolean v7, v0, Lcom/ubix/ssp/ad/e/a0/s;->v:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iput v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->w:F

    iget-boolean v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->j:Z

    const-string v5, "shake trigger\uff1a "

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    array-length v7, v2

    const-wide/16 v8, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v10, v2, v6

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->b()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    sub-long/2addr v6, v8

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->x:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    if-eqz v1, :cond_f

    :goto_2
    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/s;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/s;->e()V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->w:F

    iget-wide v3, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    double-to-float v3, v3

    invoke-interface {v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(FF)V

    return-void

    :cond_3
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v8, 0x4

    if-ne v2, v8, :cond_f

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    const/4 v8, 0x0

    cmpl-float v9, v2, v8

    if-nez v9, :cond_6

    iget v9, v0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_6

    iget v9, v0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    cmpl-float v8, v9, v8

    if-nez v8, :cond_6

    iget-boolean v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->L:Z

    if-eqz v2, :cond_4

    iput-boolean v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->L:Z

    return-void

    :cond_4
    move v2, v6

    :goto_3
    iget-object v3, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    new-instance v4, Lcom/ubix/ssp/ad/e/a0/s$d;

    iget-object v8, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v8, v8

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v2

    invoke-direct {v4, v0, v8, v9}, Lcom/ubix/ssp/ad/e/a0/s$d;-><init>(Lcom/ubix/ssp/ad/e/a0/s;IF)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v2, v6

    iput v3, v0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    aget v3, v2, v7

    iput v3, v0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    aget v2, v2, v5

    iput v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    iget-wide v1, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    return-void

    :cond_6
    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v6

    sub-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v2, v2, v8

    if-lez v2, :cond_7

    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iget v8, v0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    :cond_7
    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v5

    sub-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    iput-boolean v7, v0, Lcom/ubix/ssp/ad/e/a0/s;->W:Z

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v2, v2, v6

    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const v9, 0x3089705f    # 1.0E-9f

    mul-float/2addr v8, v9

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v6

    invoke-virtual {v2, v8, v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->a(FF)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v2, v2, v7

    iget-wide v10, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v12, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v10, v12

    long-to-float v8, v10

    mul-float/2addr v8, v9

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v7

    invoke-virtual {v2, v8, v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->a(FF)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v2, v2, v5

    iget-wide v10, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v12, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v10, v12

    long-to-float v8, v10

    mul-float/2addr v8, v9

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v5

    invoke-virtual {v2, v8, v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->a(FF)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v5

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v2, v8, v10, v11}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "event=%s,;Azimuth=%.2f,;Pitch=%.2f,;Roll=%.2f"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "ShakeSensor111 "

    invoke-static {v10, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ";x="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v6

    iget v12, v0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ";y="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v7

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ";z="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    iget-object v12, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v5

    sub-float/2addr v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "ShakeSensor222 "

    invoke-static {v11, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ";dir="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/ubix/ssp/ad/e/a0/s$d;->a()[I

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";time="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v13, v13, v6

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/a0/s$d;->e()[J

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "ShakeSensor333 "

    invoke-static {v13, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/a0/s$d;->a()[I

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/a0/s$d;->e()[J

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "ShakeSensor444 "

    invoke-static {v13, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->a()[I

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/a0/s$d;->e()[J

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "ShakeSensor888 "

    invoke-static {v10, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v10, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v12, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v10, v12

    long-to-float v2, v10

    mul-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->M:F

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v6

    iget-wide v12, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v14, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v12, v14

    long-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    iput v10, v0, Lcom/ubix/ssp/ad/e/a0/s;->M:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget v11, v0, Lcom/ubix/ssp/ad/e/a0/s;->N:F

    iget-object v12, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v7

    iget-wide v13, v1, Landroid/hardware/SensorEvent;->timestamp:J

    move/from16 v16, v5

    move v15, v6

    iget-wide v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v13, v5

    long-to-float v5, v13

    mul-float/2addr v12, v5

    mul-float/2addr v12, v9

    add-float/2addr v11, v12

    iput v11, v0, Lcom/ubix/ssp/ad/e/a0/s;->N:F

    float-to-double v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->O:F

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v16

    iget-wide v12, v1, Landroid/hardware/SensorEvent;->timestamp:J

    move v14, v7

    move-object/from16 v17, v8

    iget-wide v7, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    sub-long/2addr v12, v7

    long-to-float v7, v12

    mul-float/2addr v11, v7

    mul-float/2addr v11, v9

    add-float/2addr v6, v11

    iput v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->O:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v2, v10, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v5, v17

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ShakeSensor555 "

    invoke-static {v5, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yv="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v5, v5, v14

    iget-wide v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    invoke-direct {v0, v5, v6, v7}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$d;J)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ;zv="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v5, v5, v14

    iget-wide v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    invoke-direct {v0, v5, v6, v7}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$d;J)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ShakeSensor666 "

    invoke-static {v5, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rrX="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v5, v5, v15

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/e/a0/s$d;->d()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " ;rrY="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v5, v5, v14

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/e/a0/s$d;->d()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " ;rrZ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v5, v5, v16

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/e/a0/s$d;->d()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ShakeSensor777 "

    invoke-static {v5, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move/from16 v16, v5

    move v15, v6

    move v14, v7

    :goto_4
    iget-wide v1, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->u:J

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    :cond_9
    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->J:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_b
    iput-boolean v14, v0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->k:Z

    const-string v2, "rotate trigger\uff1a "

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->J:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v15

    iget-wide v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    invoke-direct {v0, v1, v5, v6}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$d;J)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    const/4 v14, 0x1

    aget-object v1, v1, v14

    iget-wide v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    invoke-direct {v0, v1, v5, v6}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$d;J)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v16

    iget-wide v5, v0, Lcom/ubix/ssp/ad/e/a0/s;->s:J

    invoke-direct {v0, v1, v5, v6}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$d;J)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/s;->b()Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->K:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/s;->e()V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_e
    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/s;->b()Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->K:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/s;->e()V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    if-eqz v2, :cond_f

    :goto_5
    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    iget v2, v0, Lcom/ubix/ssp/ad/e/a0/s;->w:F

    iget-wide v3, v0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    double-to-float v3, v3

    invoke-interface {v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(FF)V

    :cond_f
    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/a0/s$d;J)Z
    .locals 2

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->b()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget p3, p0, Lcom/ubix/ssp/ad/e/a0/s;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p3

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SENSOR_INFO_TYPE__"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->f()Z

    move-result v1

    const/4 v3, 0x2

    const-string v4, "__UBIX_TURN_TARGET__"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->D:F

    const-string v4, "__UBIX_ACC_X__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->E:F

    const-string v4, "__UBIX_ACC_Y__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->F:F

    const-string v4, "__UBIX_ACC_Z__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    const-string v4, "__X_MAX_ACC__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    const-string v4, "__Y_MAX_ACC__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    const-string v4, "__Z_MAX_ACC__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    sub-long/2addr v4, v6

    const-string v1, "__TURN_TIME__"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->c()F

    move-result v1

    const-string v4, "__TURN_X__"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->c()F

    move-result v1

    const-string v2, "__TURN_Y__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->t:[Lcom/ubix/ssp/ad/e/a0/s$d;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s$d;->c()F

    move-result v1

    const-string v2, "__TURN_Z__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method private b(Landroid/hardware/SensorEvent;)V
    .locals 14

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->l:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->V:Z

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v2

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->D:F

    aget v2, p1, v3

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->E:F

    aget p1, p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->F:F

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x40239eb851eb851fL    # 9.81

    sub-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->D:F

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/s;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->E:F

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/s;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->F:F

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/s;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    float-to-double v0, p1

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    if-eqz v0, :cond_b

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shake trigger\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " server load value \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeSensor "

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/s;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/s;->e()V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    invoke-interface {v1, v0}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    double-to-float v1, v1

    invoke-interface {v0, p1, v1}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(FF)V

    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_b

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-nez v5, :cond_3

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_3

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_3

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->L:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->L:Z

    return-void

    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v2

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    aget v0, p1, v3

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    aget p1, p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->W:Z

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v6, v0

    iput v6, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    :cond_4
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->R:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->Q:F

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v0

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";x="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ";y="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ";z="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ShakeSensor111 "

    invoke-static {v12, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v2

    sub-float/2addr v12, v5

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr v13, v5

    sub-float/2addr v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v3

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    sub-float/2addr v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v1

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    sub-float/2addr v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ShakeSensor222 "

    invoke-static {v12, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v3

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v1

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v2

    sub-float/2addr v12, v5

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr v13, v5

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ShakeSensor333 "

    invoke-static {v5, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v2

    iget v13, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr v12, v13

    cmpl-float v12, v12, v4

    if-lez v12, :cond_5

    move v12, v3

    goto :goto_0

    :cond_5
    move v12, v6

    :goto_0
    int-to-float v12, v12

    mul-float/2addr v5, v12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ShakeSensor444 "

    invoke-static {v5, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ShakeSensor555 "

    invoke-static {v5, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ShakeSensor666 "

    invoke-static {v5, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->Q:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->R:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    :cond_7
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->n:I

    int-to-float v5, v5

    cmpl-float v8, v0, v5

    if-gtz v8, :cond_9

    iget v8, p0, Lcom/ubix/ssp/ad/e/a0/s;->R:F

    cmpl-float v5, v8, v5

    if-lez v5, :cond_8

    goto :goto_1

    :cond_8
    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    return-void

    :cond_9
    :goto_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, p1, v3

    iget v8, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->S:F

    aget v1, p1, v1

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v7

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->T:F

    aget p1, p1, v2

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    sub-float/2addr p1, v1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    move v6, v3

    :cond_a
    int-to-float p1, v6

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->U:F

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    :cond_b
    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/s;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/a0/s;->V:Z

    return p0
.end method

.method private c()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SENSOR_INFO_TYPE__"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->n:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const-string v2, "__UBIX_TURN_TARGET__"

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->z:J

    sub-long/2addr v1, v3

    const-string v3, "__TURN_TIME__"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->S:F

    const-string v2, "__TURN_X__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->T:F

    const-string v2, "__TURN_Y__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->U:F

    const-string v2, "__TURN_Z__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    const-string v2, "__X_MAX_ACC__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    const-string v2, "__Y_MAX_ACC__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    const-string v2, "__Z_MAX_ACC__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->D:F

    const-string v2, "__UBIX_ACC_X__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->E:F

    const-string v2, "__UBIX_ACC_Y__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->F:F

    const-string v2, "__UBIX_ACC_Z__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    const-string v2, "__TURN_INIT_X__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    const-string v2, "__TURN_INIT_Y__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    const-string v2, "__TURN_INIT_Z__"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/a0/s;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/a0/s;->W:Z

    return p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/a0/s;)Lcom/ubix/ssp/ad/e/a0/s$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    return-object p0
.end method

.method private d()V
    .locals 9

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->d:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->b:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    iget-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->r:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->d:Landroid/hardware/Sensor;

    move-object v0, v2

    goto :goto_2

    :cond_3
    iput-boolean v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "1"

    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->e:Landroid/hardware/Sensor;

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->y:D

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    goto :goto_4

    :cond_6
    iput-wide v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->m:D

    :goto_4
    iput-boolean v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->j:Z

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->l:J

    :goto_6
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->d:Landroid/hardware/Sensor;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reg shakeSensor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->d:Landroid/hardware/Sensor;

    invoke-virtual {v4, p0, v5, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->e:Landroid/hardware/Sensor;

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reg rotateSensor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/s;->e:Landroid/hardware/Sensor;

    invoke-virtual {v4, p0, v5, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    iget-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->k:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/s;->j:Z

    if-nez v3, :cond_9

    invoke-direct {p0, v0, v2}, Lcom/ubix/ssp/ad/e/a0/s;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(Landroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_9
    iget-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->H:Z

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->H:Z

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/s;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/s$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/a0/s$b;-><init>(Lcom/ubix/ssp/ad/e/a0/s;)V

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/ubix/ssp/ad/e/a0/s;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_c
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/s$c;

    invoke-direct {v1, p0, v0}, Lcom/ubix/ssp/ad/e/a0/s$c;-><init>(Lcom/ubix/ssp/ad/e/a0/s;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->G:Lcom/ubix/ssp/ad/e/a0/s$c;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/s;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :goto_7
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_9
    return-void
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/e/a0/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/s;->x:I

    return p0
.end method

.method private e()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->U:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->T:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->S:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->R:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->Q:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->P:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->h:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->g:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->f:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->C:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->B:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->A:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->i:Z

    return-void
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/e/a0/s;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/a0/s;->I:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->p:Landroid/animation/ObjectAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    .line 8
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/s$a;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$a;-><init>(Lcom/ubix/ssp/ad/e/a0/s;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/s$e;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/s;->d()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->d:Landroid/hardware/Sensor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->e:Landroid/hardware/Sensor;

    :cond_1
    iput-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->c:Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s;->o:Lcom/ubix/ssp/ad/e/a0/s$e;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/s;->e()V

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s;->a(Landroid/hardware/SensorEvent;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s;->b(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
