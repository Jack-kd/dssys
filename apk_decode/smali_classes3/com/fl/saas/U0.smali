.class public Lcom/fl/saas/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/fl/saas/U0;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
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
    iput-object v0, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lcom/fl/saas/U0;
    .locals 2

    .line 2
    sget-object v0, Lcom/fl/saas/U0;->b:Lcom/fl/saas/U0;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/U0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/U0;

    invoke-direct {v1}, Lcom/fl/saas/U0;-><init>()V

    sput-object v1, Lcom/fl/saas/U0;->b:Lcom/fl/saas/U0;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/U0;->b:Lcom/fl/saas/U0;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/fl/saas/adx/base/widget/ShakeView;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/base/widget/ShakeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/ShakeView;->unRegisterAccelerometer(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/fl/saas/adx/base/widget/ShakeView;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/fl/saas/U0;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/fl/saas/adx/base/widget/ShakeView;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->registerAccelerometer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
