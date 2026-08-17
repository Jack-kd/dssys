.class public final Lcom/kwad/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/f$a;
    }
.end annotation


# static fields
.field private static aFQ:Z = true

.field private static volatile aFR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/m;",
            ">;"
        }
    .end annotation
.end field


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
    sput-object v0, Lcom/kwad/sdk/f;->aFR:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/sdk/f;->aFQ:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/kwad/sdk/f$1;

    invoke-direct {v0}, Lcom/kwad/sdk/f$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V

    .line 3
    :cond_0
    new-instance p0, Lcom/kwad/sdk/f$5;

    invoke-direct {p0}, Lcom/kwad/sdk/f$5;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/f;->e(Lcom/kwad/sdk/g/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/api/SdkConfig;J)V
    .locals 1

    .line 4
    new-instance v0, Lcom/kwad/sdk/f$8;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/f$8;-><init>(J)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksInitCallback:Lcom/kwad/sdk/api/KsInitCallback;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/kwad/sdk/monitor/a;->d(Lcom/kwad/sdk/api/SdkConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_0
    new-instance p0, Lcom/kwad/sdk/f$9;

    invoke-direct {p0}, Lcom/kwad/sdk/f$9;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/f;->e(Lcom/kwad/sdk/g/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/kwad/sdk/f;->aFQ:Z

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/kwad/sdk/f$10;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/f$10;-><init>(Lcom/kwad/sdk/e;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V

    .line 11
    :cond_0
    new-instance p0, Lcom/kwad/sdk/f$11;

    invoke-direct {p0}, Lcom/kwad/sdk/f$11;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/f;->e(Lcom/kwad/sdk/g/a;)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/kwad/sdk/api/SdkConfig;->ksInitCallback:Lcom/kwad/sdk/api/KsInitCallback;

    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/kwad/sdk/api/SdkConfig;->ksStartCallback:Lcom/kwad/sdk/api/KsInitCallback;

    :goto_0
    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p2, p0}, Lcom/kwad/sdk/f$a;->a(Lcom/kwad/sdk/api/KsInitCallback;)V

    .line 16
    invoke-static {}, Lcom/kwad/sdk/f;->isMainThread()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/kwad/sdk/utils/bi;->run()V

    return-void

    .line 18
    :cond_1
    invoke-static {p2}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static a(Lcom/kwad/sdk/m;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/kwad/sdk/f;->aFR:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/kwad/sdk/f;->aFQ:Z

    .line 2
    .line 3
    return v0
.end method

.method public static b(Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/sdk/f;->aFQ:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/kwad/sdk/f$6;

    invoke-direct {v0}, Lcom/kwad/sdk/f$6;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V

    .line 3
    :cond_0
    new-instance p0, Lcom/kwad/sdk/f$7;

    invoke-direct {p0}, Lcom/kwad/sdk/f$7;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/f;->e(Lcom/kwad/sdk/g/a;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/kwad/sdk/f;->aFQ:Z

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/kwad/sdk/f$3;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/f$3;-><init>(Lcom/kwad/sdk/e;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V

    .line 6
    :cond_0
    new-instance p0, Lcom/kwad/sdk/f$4;

    invoke-direct {p0}, Lcom/kwad/sdk/f$4;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/f;->e(Lcom/kwad/sdk/g/a;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/sdk/f;->aFQ:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/f$12;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/sdk/f$12;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v1, v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;ZLcom/kwad/sdk/f$a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance p0, Lcom/kwad/sdk/f$2;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/kwad/sdk/f$2;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/kwad/sdk/f;->e(Lcom/kwad/sdk/g/a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static e(Lcom/kwad/sdk/g/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/g/a<",
            "Lcom/kwad/sdk/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/f;->aFR:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/kwad/sdk/m;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, v2}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Lcom/kwad/sdk/m;->isDone()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v2

    .line 40
    :try_start_2
    invoke-static {v2}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lcom/kwad/sdk/f;->aFR:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method
