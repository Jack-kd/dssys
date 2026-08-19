.class public Lcom/umeng/analytics/pro/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/p$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/pro/p;


# instance fields
.field private final b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/q;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/umeng/analytics/pro/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/umeng/analytics/pro/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/analytics/pro/p;->a:Lcom/umeng/analytics/pro/p;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xbb8

    .line 5
    .line 6
    iput v0, p0, Lcom/umeng/analytics/pro/p;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/p;->c:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/p;->d:Z

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/umeng/analytics/pro/p;->e:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/umeng/analytics/pro/p;->f:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Lcom/umeng/analytics/pro/p$a;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/p$a;-><init>(Lcom/umeng/analytics/pro/p;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/umeng/analytics/pro/p;->g:Lcom/umeng/analytics/pro/p$a;

    .line 38
    .line 39
    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/p;
    .locals 1

    .line 5
    sget-object v0, Lcom/umeng/analytics/pro/p;->a:Lcom/umeng/analytics/pro/p;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 3
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/app/Application;

    sget-object v0, Lcom/umeng/analytics/pro/p;->a:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/p;->c:Z

    return p0
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/p;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/p;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/umeng/analytics/pro/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/p;->d:Z

    return p0
.end method

.method public static synthetic c(Lcom/umeng/analytics/pro/p;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/umeng/analytics/pro/p;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/umeng/analytics/pro/q;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/umeng/analytics/pro/q;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/umeng/analytics/pro/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/umeng/analytics/pro/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_1
    monitor-exit p0

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
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/p;->d:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/umeng/analytics/pro/p;->g:Lcom/umeng/analytics/pro/p$a;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->e:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/umeng/analytics/pro/p;->e:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->g:Lcom/umeng/analytics/pro/p$a;

    .line 16
    .line 17
    const-wide/16 v1, 0xbb8

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/p;->d:Z

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/p;->c:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/umeng/analytics/pro/p;->g:Lcom/umeng/analytics/pro/p$a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->e:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
