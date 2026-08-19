.class public Lcom/umeng/analytics/pro/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/cj$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ForegroundBackgroundListener"

.field private static final b:J = 0x1f4L


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/pro/cj$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/umeng/analytics/pro/cj;->c:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/cj;->d:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/umeng/analytics/pro/cj;->e:I

    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/umeng/analytics/pro/cj;->f:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v0, Lcom/umeng/analytics/pro/cj$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cj$1;-><init>(Lcom/umeng/analytics/pro/cj;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/umeng/analytics/pro/cj;->g:Ljava/lang/Runnable;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/cj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/umeng/analytics/pro/cj;->e:I

    return p0
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/cj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/cj;->d:Z

    return p1
.end method

.method private b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/pro/cj$a;

    .line 4
    :try_start_0
    invoke-interface {v1}, Lcom/umeng/analytics/pro/cj$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ncc]: Error in onSwitchForeground callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/umeng/analytics/pro/cj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/cj;->d:Z

    return p0
.end method

.method private c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/pro/cj$a;

    .line 3
    :try_start_0
    invoke-interface {v1}, Lcom/umeng/analytics/pro/cj$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ncc]: Error in onSwitchBackground callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/umeng/analytics/pro/cj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cj;->c()V

    return-void
.end method

.method public static synthetic d(Lcom/umeng/analytics/pro/cj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cj;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/cj$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/cj;->d:Z

    return v0
.end method

.method public b(Lcom/umeng/analytics/pro/cj$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

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
    .locals 3

    .line 1
    iget p1, p0, Lcom/umeng/analytics/pro/cj;->e:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/umeng/analytics/pro/cj;->e:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/umeng/analytics/pro/cj;->f:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->g:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/umeng/analytics/pro/cj;->f:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->g:Ljava/lang/Runnable;

    .line 17
    .line 18
    const-wide/16 v1, 0x1f4

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/umeng/analytics/pro/cj;->e:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/umeng/analytics/pro/cj;->e:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/umeng/analytics/pro/cj;->f:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->g:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/umeng/analytics/pro/cj;->f:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->g:Ljava/lang/Runnable;

    .line 17
    .line 18
    const-wide/16 v1, 0x1f4

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
