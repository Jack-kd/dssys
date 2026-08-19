.class public final Lcom/varbto/utils/performance/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Z

.field public volatile c:J

.field public volatile d:J

.field public volatile e:F

.field public volatile f:F

.field public volatile g:I

.field public volatile h:Z

.field public i:I

.field public j:J

.field public final synthetic k:Lcom/varbto/utils/performance/DevicePerformanceGrader;


# direct methods
.method public constructor <init>(Lcom/varbto/utils/performance/DevicePerformanceGrader;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/varbto/utils/performance/b;->a:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/varbto/utils/performance/b;->b:Z

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/varbto/utils/performance/b;->c:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/varbto/utils/performance/b;->d:J

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Lcom/varbto/utils/performance/b;->e:F

    .line 28
    .line 29
    iput v2, p0, Lcom/varbto/utils/performance/b;->f:F

    .line 30
    .line 31
    iput p1, p0, Lcom/varbto/utils/performance/b;->g:I

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/varbto/utils/performance/b;->h:Z

    .line 34
    .line 35
    const/16 p1, 0x1e

    .line 36
    .line 37
    iput p1, p0, Lcom/varbto/utils/performance/b;->i:I

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/varbto/utils/performance/b;->j:J

    .line 40
    .line 41
    return-void
.end method

.method public static b(F)I
    .locals 1

    .line 1
    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/16 p0, 0xf

    return p0

    :cond_1
    const/high16 v0, 0x42a00000    # 80.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/16 p0, 0x1e

    return p0

    :cond_2
    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_3

    const/16 p0, 0x32

    return p0

    :cond_3
    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_4

    const/16 p0, 0x4b

    return p0

    :cond_4
    const/16 p0, 0x64

    return p0
.end method

.method public static c(F)I
    .locals 1

    .line 1
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/16 p0, 0xf

    return p0

    :cond_1
    const v0, 0x3f59999a    # 0.85f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/16 p0, 0x1e

    return p0

    :cond_2
    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_3

    const/16 p0, 0x32

    return p0

    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_4

    const/16 p0, 0x4b

    return p0

    :cond_4
    const/16 p0, 0x64

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/varbto/utils/performance/b;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/varbto/utils/performance/b;->d:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/varbto/utils/performance/b;->e()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/varbto/utils/performance/b;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/varbto/utils/performance/b;->i:I

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    iget v0, p0, Lcom/varbto/utils/performance/b;->e:F

    .line 31
    .line 32
    invoke-static {v0}, Lcom/varbto/utils/performance/b;->b(F)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v1, p0, Lcom/varbto/utils/performance/b;->f:F

    .line 37
    .line 38
    invoke-static {v1}, Lcom/varbto/utils/performance/b;->c(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, p0, Lcom/varbto/utils/performance/b;->g:I

    .line 43
    .line 44
    packed-switch v2, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x64

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_0
    const/4 v2, 0x0

    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    const/4 v2, 0x5

    .line 53
    goto :goto_0

    .line 54
    :pswitch_2
    const/16 v2, 0xa

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_3
    const/16 v2, 0x19

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_4
    const/16 v2, 0x32

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_5
    const/16 v2, 0x50

    .line 64
    .line 65
    :goto_0
    iget v3, p0, Lcom/varbto/utils/performance/b;->i:I

    .line 66
    .line 67
    if-le v0, v3, :cond_3

    .line 68
    .line 69
    if-le v1, v3, :cond_3

    .line 70
    .line 71
    if-gt v2, v3, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    int-to-float v0, v0

    .line 75
    const v3, 0x3ecccccd    # 0.4f

    .line 76
    .line 77
    .line 78
    mul-float/2addr v0, v3

    .line 79
    int-to-float v1, v1

    .line 80
    const v3, 0x3eb33333    # 0.35f

    .line 81
    .line 82
    .line 83
    mul-float/2addr v1, v3

    .line 84
    add-float/2addr v1, v0

    .line 85
    int-to-float v0, v2

    .line 86
    const/high16 v2, 0x3e800000    # 0.25f

    .line 87
    .line 88
    mul-float/2addr v0, v2

    .line 89
    add-float/2addr v0, v1

    .line 90
    float-to-int v0, v0

    .line 91
    return v0

    .line 92
    :cond_3
    :goto_1
    iget v0, p0, Lcom/varbto/utils/performance/b;->i:I

    .line 93
    .line 94
    return v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/varbto/utils/performance/b;->j:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/varbto/utils/performance/DevicePerformanceGrader;->c:Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceData;

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-wide v4, v4, Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceData;->totalMemory:J

    .line 18
    .line 19
    cmp-long v2, v4, v2

    .line 20
    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/varbto/utils/performance/DevicePerformanceGrader;->a:Landroid/content/Context;

    .line 30
    .line 31
    const-string v3, "activity"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/app/ActivityManager;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 45
    .line 46
    :goto_0
    iget-wide v2, p0, Lcom/varbto/utils/performance/b;->j:J

    .line 47
    .line 48
    cmp-long v0, v4, v2

    .line 49
    .line 50
    if-gtz v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    return v0

    .line 54
    :cond_3
    return v1
.end method

.method public final e()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/varbto/utils/performance/DevicePerformanceGrader;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v2, v0, v1

    .line 7
    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    const/high16 v2, 0x42c80000    # 100.0f

    .line 11
    .line 12
    cmpl-float v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_1

    .line 15
    .line 16
    :cond_0
    move v0, v1

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 18
    .line 19
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, Lcom/varbto/utils/performance/DevicePerformanceGrader;->a:Landroid/content/Context;

    .line 25
    .line 26
    const-string v4, "activity"

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/app/ActivityManager;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 40
    .line 41
    const-wide/16 v6, 0x0

    .line 42
    .line 43
    cmp-long v2, v4, v6

    .line 44
    .line 45
    if-gtz v2, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-wide v1, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 49
    .line 50
    sub-long v1, v4, v1

    .line 51
    .line 52
    long-to-float v1, v1

    .line 53
    long-to-float v2, v4

    .line 54
    div-float/2addr v1, v2

    .line 55
    :goto_0
    iput v0, p0, Lcom/varbto/utils/performance/b;->e:F

    .line 56
    .line 57
    iput v1, p0, Lcom/varbto/utils/performance/b;->f:F

    .line 58
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v1, 0x1d

    .line 62
    .line 63
    if-lt v0, v1, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/varbto/utils/performance/DevicePerformanceGrader;->a:Landroid/content/Context;

    .line 68
    .line 69
    const-string v1, "power"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/PowerManager;

    .line 76
    .line 77
    invoke-static {v0}, Ln1/a;->a(Landroid/os/PowerManager;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/varbto/utils/performance/b;->g:I

    .line 82
    .line 83
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    iput-wide v0, p0, Lcom/varbto/utils/performance/b;->d:J

    .line 88
    .line 89
    return-void
.end method
