.class public Lcom/fl/saas/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/h1$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/fl/saas/h1;


# instance fields
.field private a:Lcom/fl/saas/V;

.field private b:J

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x12c00000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/fl/saas/h1;->b:J

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/fl/saas/h1;->c:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method public static a()Lcom/fl/saas/h1;
    .locals 2

    .line 2
    sget-object v0, Lcom/fl/saas/h1;->d:Lcom/fl/saas/h1;

    if-nez v0, :cond_1

    const-class v0, Lcom/fl/saas/h1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/h1;->d:Lcom/fl/saas/h1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fl/saas/h1;

    invoke-direct {v1}, Lcom/fl/saas/h1;-><init>()V

    sput-object v1, Lcom/fl/saas/h1;->d:Lcom/fl/saas/h1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/fl/saas/h1;->d:Lcom/fl/saas/h1;

    return-object v0
.end method

.method public static synthetic a(Lcom/fl/saas/h1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/h1;->c:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroid/content/Context;)Lcom/fl/saas/V;
    .locals 6

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/FLImageLoader;->getAvailableStorageSpace()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/fl/saas/adx/util/FLImageLoader;->getTotalStorageSpace()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/32 v4, 0x12c00000

    .line 10
    .line 11
    .line 12
    cmp-long v4, v0, v4

    .line 13
    .line 14
    if-gez v4, :cond_0

    .line 15
    .line 16
    long-to-double v2, v2

    .line 17
    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double/2addr v2, v4

    .line 23
    double-to-long v2, v2

    .line 24
    const-wide/16 v4, 0x5

    .line 25
    .line 26
    mul-long/2addr v0, v4

    .line 27
    const-wide/16 v4, 0xa

    .line 28
    .line 29
    div-long/2addr v0, v4

    .line 30
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/fl/saas/h1;->b:J

    .line 35
    .line 36
    :cond_0
    new-instance v0, Lcom/fl/saas/V$b;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/fl/saas/V$b;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/fl/saas/r;->a(Landroid/content/Context;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/fl/saas/V$b;->a(Ljava/io/File;)Lcom/fl/saas/V$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lcom/fl/saas/h1$a;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/fl/saas/h1$a;-><init>(Lcom/fl/saas/h1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/fl/saas/V$b;->a(Lcom/fl/saas/Q;)Lcom/fl/saas/V$b;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-wide v0, p0, Lcom/fl/saas/h1;->b:J

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/V$b;->a(J)Lcom/fl/saas/V$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/fl/saas/V$b;->a()Lcom/fl/saas/V;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/fl/saas/V;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fl/saas/h1;->a:Lcom/fl/saas/V;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/fl/saas/h1;->b(Landroid/content/Context;)Lcom/fl/saas/V;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/h1;->a:Lcom/fl/saas/V;

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/h1;->a:Lcom/fl/saas/V;

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/fl/saas/g1;)Ljava/lang/String;
    .locals 2

    .line 4
    invoke-static {}, Lcom/fl/saas/h1;->a()Lcom/fl/saas/h1;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fl/saas/h1;->a(Landroid/content/Context;)Lcom/fl/saas/V;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fl/saas/g1;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/V;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/fl/saas/v0;->a()Lcom/fl/saas/v0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fl/saas/g1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fl/saas/g1;->b()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/fl/saas/v0;->a(Ljava/lang/String;I)Z

    return-object p1
.end method
