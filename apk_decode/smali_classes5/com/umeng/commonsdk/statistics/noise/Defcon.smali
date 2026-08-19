.class public Lcom/umeng/commonsdk/statistics/noise/Defcon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static final LEVEL_0:I = 0x0

.field private static final LEVEL_1:I = 0x1

.field private static final LEVEL_2:I = 0x2

.field private static final LEVEL_3:I = 0x3

.field private static final MILLIS_24_HOURS:J = 0x5265c00L

.field private static final MILLIS_4_HOURS:J = 0xdbba00L

.field private static final MILLIS_8_HOURS:J = 0x1b77400L

.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    .line 6
    .line 7
    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;
    .locals 3

    .line 1
    const-class v0, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 14
    .line 15
    const-string v1, "defcon"

    .line 16
    .line 17
    const-string v2, "0"

    .line 18
    .line 19
    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v1, p0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->setLevel(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object p0

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getReqInterval()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 16
    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_1
    const-wide/32 v0, 0x1b77400

    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_2
    const-wide/32 v0, 0xdbba00

    .line 24
    .line 25
    .line 26
    return-wide v0
.end method

.method public getRetryInterval()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/32 v0, 0x493e0

    .line 9
    .line 10
    .line 11
    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "defcon"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->setLevel(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setLevel(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method
