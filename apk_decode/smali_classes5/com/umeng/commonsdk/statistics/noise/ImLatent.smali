.class public Lcom/umeng/commonsdk/statistics/noise/ImLatent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;


# instance fields
.field private final LATENT_MAX:I

.field private final LATENT_WINDOW:I

.field private final _360HOURS_IN_MS:J

.field private final _36HOURS_IN_MS:J

.field private final _DEFAULT_HOURS:I

.field private final _DEFAULT_MAX_LATENT:I

.field private final _DEFAULT_MIN_HOURS:I

.field private final _DEFAULT_MIN_LATENT:I

.field private final _ONE_HOURS_IN_MS:J

.field private context:Landroid/content/Context;

.field private latentHour:J

.field private latentWindow:I

.field private mDelay:J

.field private mElapsed:J

.field private mLatentActivite:Z

.field private mLatentLock:Ljava/lang/Object;

.field private statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private storeHelper:Lcom/umeng/commonsdk/statistics/common/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x168

    .line 5
    .line 6
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_HOURS:I

    .line 7
    .line 8
    const/16 v0, 0x24

    .line 9
    .line 10
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_HOURS:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_LATENT:I

    .line 14
    .line 15
    const/16 v0, 0x708

    .line 16
    .line 17
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MAX_LATENT:I

    .line 18
    .line 19
    const-wide/32 v0, 0x36ee80

    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_ONE_HOURS_IN_MS:J

    .line 23
    .line 24
    const-wide/32 v0, 0x4d3f6400

    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_360HOURS_IN_MS:J

    .line 28
    .line 29
    const-wide/32 v2, 0x7b98a00

    .line 30
    .line 31
    .line 32
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_36HOURS_IN_MS:J

    .line 33
    .line 34
    const v2, 0x1b7740

    .line 35
    .line 36
    .line 37
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_MAX:I

    .line 38
    .line 39
    const/16 v2, 0xa

    .line 40
    .line 41
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_WINDOW:I

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 44
    .line 45
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 46
    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 55
    .line 56
    new-instance v0, Ljava/lang/Object;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/e;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/e;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 72
    .line 73
    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .locals 2

    .line 1
    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method


# virtual methods
.method public getDelayTime()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getElapsedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isLatentActivite()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public latentDeactivite()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 4

    .line 1
    const/16 v0, 0x168

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "latent_hours"

    .line 8
    .line 9
    invoke-virtual {p1, v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x24

    .line 22
    .line 23
    if-gt v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    int-to-long v0, v0

    .line 28
    const-wide/32 v2, 0x36ee80

    .line 29
    .line 30
    .line 31
    mul-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 33
    .line 34
    const-string v0, "latent"

    .line 35
    .line 36
    const-string v1, "0"

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x1

    .line 51
    if-lt p1, v0, :cond_1

    .line 52
    .line 53
    const/16 v0, 0x708

    .line 54
    .line 55
    if-le p1, v0, :cond_2

    .line 56
    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    :cond_2
    if-nez p1, :cond_5

    .line 59
    .line 60
    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    .line 61
    .line 62
    if-lez p1, :cond_4

    .line 63
    .line 64
    const v0, 0x1b7740

    .line 65
    .line 66
    .line 67
    if-le p1, v0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    :goto_1
    const/16 p1, 0xa

    .line 74
    .line 75
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 79
    .line 80
    return-void
.end method

.method public shouldStartLatency()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/e;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->isFirstRequest()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    sub-long/2addr v4, v2

    .line 43
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 44
    .line 45
    cmp-long v0, v4, v2

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-lez v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v3

    .line 59
    :try_start_1
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 60
    .line 61
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->random(ILjava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    int-to-long v0, v0

    .line 66
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 67
    .line 68
    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 71
    .line 72
    monitor-exit v3

    .line 73
    return v2

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    throw v0

    .line 77
    :cond_3
    const-wide/32 v6, 0x7b98a00

    .line 78
    .line 79
    .line 80
    cmp-long v0, v4, v6

    .line 81
    .line 82
    if-lez v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v0

    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    :try_start_2
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 90
    .line 91
    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    return v2

    .line 97
    :catchall_2
    move-exception v1

    .line 98
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    throw v1

    .line 100
    :cond_4
    return v1

    .line 101
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    throw v1
.end method
