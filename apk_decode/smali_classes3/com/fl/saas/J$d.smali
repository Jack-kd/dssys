.class Lcom/fl/saas/J$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/J;


# direct methods
.method private constructor <init>(Lcom/fl/saas/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/J;Lcom/fl/saas/J$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/J$d;-><init>(Lcom/fl/saas/J;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fl/saas/J;->c(Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/J;->f(Lcom/fl/saas/J;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/fl/saas/J;->g(Lcom/fl/saas/J;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Z)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fl/saas/J;->c(Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/fl/saas/J;->f(Lcom/fl/saas/J;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p1, v0}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/fl/saas/J$d;->a:Lcom/fl/saas/J;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/fl/saas/J;->h(Lcom/fl/saas/J;)V
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
