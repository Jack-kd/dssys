.class public final Lcom/kwad/components/ad/feed/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/feed/d$b;,
        Lcom/kwad/components/ad/feed/d$d;,
        Lcom/kwad/components/ad/feed/d$a;,
        Lcom/kwad/components/ad/feed/d$c;
    }
.end annotation


# static fields
.field private static hu:Lcom/kwad/sdk/core/g/d;

.field private static hv:Lcom/kwad/sdk/core/g/c;

.field private static hw:Landroid/os/Vibrator;

.field private static hx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/ad/feed/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private static hy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/ad/feed/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static hz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/kwad/components/ad/feed/d;->hy:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static D(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hv:Lcom/kwad/sdk/core/g/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/g/c;->cc(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    sput-object p0, Lcom/kwad/components/ad/feed/d;->hv:Lcom/kwad/sdk/core/g/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/g/d;->cc(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    sput-object p0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static F(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hw:Landroid/os/Vibrator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "vibrator"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/os/Vibrator;

    .line 12
    .line 13
    sput-object p0, Lcom/kwad/components/ad/feed/d;->hw:Landroid/os/Vibrator;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/kwad/components/ad/feed/d;->hw:Landroid/os/Vibrator;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic G(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/components/ad/feed/d;->F(Landroid/content/Context;)Landroid/os/Vibrator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static a(Lcom/kwad/components/ad/feed/d$b;)V
    .locals 3

    .line 20
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/components/ad/feed/d$a;

    if-eqz v1, :cond_0

    .line 21
    invoke-static {v1}, Lcom/kwad/components/ad/feed/d$a;->a(Lcom/kwad/components/ad/feed/d$a;)Lcom/kwad/components/ad/feed/d$b;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 22
    sget-object v2, Lcom/kwad/components/ad/feed/d;->hy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sRotateItems size "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/components/ad/feed/d;->hy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KSFeedRotateAndShakeManager"

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/kwad/components/ad/feed/d$d;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/components/ad/feed/d$c;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Lcom/kwad/components/ad/feed/d$c;->a(Lcom/kwad/components/ad/feed/d$c;)Lcom/kwad/components/ad/feed/d$d;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 7
    sget-object v2, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sShakeItems size "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KSFeedRotateAndShakeManager"

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/kwad/sdk/core/g/c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/g/c;-><init>(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    .line 25
    sput-object v0, Lcom/kwad/components/ad/feed/d;->hv:Lcom/kwad/sdk/core/g/c;

    new-instance p0, Lcom/kwad/components/ad/feed/d$2;

    invoke-direct {p0}, Lcom/kwad/components/ad/feed/d$2;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/g/c;->a(Lcom/kwad/sdk/core/g/a;)V

    .line 26
    sget-object p0, Lcom/kwad/components/ad/feed/d;->hv:Lcom/kwad/sdk/core/g/c;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/g/c;->cb(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;Lcom/kwad/components/ad/feed/d$b;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hv:Lcom/kwad/sdk/core/g/c;

    if-nez v0, :cond_0

    .line 16
    invoke-static {p0, p1}, Lcom/kwad/components/ad/feed/d;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/g/c;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    .line 18
    :goto_0
    new-instance p0, Lcom/kwad/components/ad/feed/d$a;

    invoke-direct {p0, p2, p1}, Lcom/kwad/components/ad/feed/d$a;-><init>(Lcom/kwad/components/ad/feed/d$b;Landroid/content/Context;)V

    .line 19
    sget-object p1, Lcom/kwad/components/ad/feed/d;->hy:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(ZFLandroid/content/Context;Lcom/kwad/components/ad/feed/d$d;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p4}, Lcom/kwad/components/ad/feed/d;->a(ZFLandroid/content/Context;Z)V

    .line 3
    :cond_0
    new-instance p0, Lcom/kwad/components/ad/feed/d$c;

    invoke-direct {p0, p3, p2}, Lcom/kwad/components/ad/feed/d$c;-><init>(Lcom/kwad/components/ad/feed/d$d;Landroid/content/Context;)V

    .line 4
    sget-object p1, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(ZFLandroid/content/Context;Z)V
    .locals 1

    .line 9
    new-instance v0, Lcom/kwad/sdk/core/g/d;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/core/g/d;-><init>(ZF)V

    sput-object v0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    .line 10
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object p0, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    .line 11
    sget-object p0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/core/g/d;->bG(Z)V

    .line 12
    sget-object p0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    new-instance p3, Lcom/kwad/components/ad/feed/d$1;

    invoke-direct {p3}, Lcom/kwad/components/ad/feed/d$1;-><init>()V

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/b;)V

    .line 13
    sget-object p0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/g/d;->m(F)V

    .line 14
    sget-object p0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/g/d;->cb(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized ce()Z
    .locals 7

    .line 1
    const-class v0, Lcom/kwad/components/ad/feed/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    sget-wide v3, Lcom/kwad/components/ad/feed/d;->hz:J

    .line 9
    .line 10
    sub-long v3, v1, v3

    .line 11
    .line 12
    const-wide/16 v5, 0x1f4

    .line 13
    .line 14
    cmp-long v3, v3, v5

    .line 15
    .line 16
    if-lez v3, :cond_0

    .line 17
    .line 18
    sput-wide v1, Lcom/kwad/components/ad/feed/d;->hz:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method

.method public static synthetic cf()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hx:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic cg()Lcom/kwad/sdk/core/g/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hu:Lcom/kwad/sdk/core/g/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic ch()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hy:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic ci()Lcom/kwad/sdk/core/g/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/feed/d;->hv:Lcom/kwad/sdk/core/g/c;

    .line 2
    .line 3
    return-object v0
.end method
