.class public final Lcom/kwad/components/ad/nativead/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/nativead/b$c;,
        Lcom/kwad/components/ad/nativead/b$e;,
        Lcom/kwad/components/ad/nativead/b$b;,
        Lcom/kwad/components/ad/nativead/b$d;,
        Lcom/kwad/components/ad/nativead/b$a;
    }
.end annotation


# static fields
.field private static hz:J


# instance fields
.field private hu:Lcom/kwad/sdk/core/g/d;

.field private hv:Lcom/kwad/sdk/core/g/c;

.field private pf:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/kwad/components/ad/nativead/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private pg:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/kwad/components/ad/nativead/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private ph:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/b;->pg:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/kwad/sdk/core/g/c;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/g/c;-><init>(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/b;->hv:Lcom/kwad/sdk/core/g/c;

    .line 28
    new-instance p1, Lcom/kwad/components/ad/nativead/b$2;

    invoke-direct {p1, p0}, Lcom/kwad/components/ad/nativead/b$2;-><init>(Lcom/kwad/components/ad/nativead/b;)V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/g/c;->a(Lcom/kwad/sdk/core/g/a;)V

    .line 29
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/b;->hv:Lcom/kwad/sdk/core/g/c;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/g/c;->cb(Landroid/content/Context;)V

    return-void
.end method

.method private a(ZFLandroid/content/Context;Z)V
    .locals 1

    .line 12
    new-instance v0, Lcom/kwad/sdk/core/g/d;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/core/g/d;-><init>(ZF)V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    invoke-virtual {p1, p4}, Lcom/kwad/sdk/core/g/d;->bG(Z)V

    .line 15
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    new-instance p4, Lcom/kwad/components/ad/nativead/b$1;

    invoke-direct {p4, p0}, Lcom/kwad/components/ad/nativead/b$1;-><init>(Lcom/kwad/components/ad/nativead/b;)V

    invoke-virtual {p1, p4}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/b;)V

    .line 16
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/g/d;->m(F)V

    .line 17
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    invoke-virtual {p1, p3}, Lcom/kwad/sdk/core/g/d;->cb(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/nativead/b;)Lcom/kwad/sdk/core/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/nativead/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/b;->pg:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static declared-synchronized ce()Z
    .locals 7

    .line 1
    const-class v0, Lcom/kwad/components/ad/nativead/b;

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
    sget-wide v3, Lcom/kwad/components/ad/nativead/b;->hz:J

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
    sput-wide v1, Lcom/kwad/components/ad/nativead/b;->hz:J
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

.method public static ft()Lcom/kwad/components/ad/nativead/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/nativead/b$a;->fu()Lcom/kwad/components/ad/nativead/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final D(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->hv:Lcom/kwad/sdk/core/g/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/g/c;->cc(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final N(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->hv:Lcom/kwad/sdk/core/g/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/g/c;->cb(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final a(Lcom/kwad/components/ad/nativead/b$c;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->pg:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/components/ad/nativead/b$b;

    if-eqz v1, :cond_0

    .line 24
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/b$b;->a(Lcom/kwad/components/ad/nativead/b$b;)Lcom/kwad/components/ad/nativead/b$c;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 25
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/b;->pg:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sRotateItems size "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->pg:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KSNativeAdRotateAndShakeManager"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/kwad/components/ad/nativead/b$e;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/components/ad/nativead/b$d;

    .line 9
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/b$d;->a(Lcom/kwad/components/ad/nativead/b$d;)Lcom/kwad/components/ad/nativead/b$e;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sShakeItems size "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KSNativeAdRotateAndShakeManager"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;Lcom/kwad/components/ad/nativead/b$c;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->hv:Lcom/kwad/sdk/core/g/c;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/nativead/b;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/g/c;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    .line 21
    :goto_0
    new-instance p1, Lcom/kwad/components/ad/nativead/b$b;

    invoke-direct {p1, p3, p2}, Lcom/kwad/components/ad/nativead/b$b;-><init>(Lcom/kwad/components/ad/nativead/b$c;Landroid/content/Context;)V

    .line 22
    iget-object p2, p0, Lcom/kwad/components/ad/nativead/b;->pg:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(ZFLandroid/view/View;Lcom/kwad/components/ad/nativead/b$e;Z)V
    .locals 1

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b;->hu:Lcom/kwad/sdk/core/g/d;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->bA(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/ad/nativead/b;->ph:I

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/kwad/components/ad/nativead/b;->a(ZFLandroid/content/Context;Z)V

    .line 6
    :cond_1
    new-instance p1, Lcom/kwad/components/ad/nativead/b$d;

    invoke-direct {p1, p4, p3}, Lcom/kwad/components/ad/nativead/b$d;-><init>(Lcom/kwad/components/ad/nativead/b$e;Landroid/view/View;)V

    .line 7
    iget-object p2, p0, Lcom/kwad/components/ad/nativead/b;->pf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
