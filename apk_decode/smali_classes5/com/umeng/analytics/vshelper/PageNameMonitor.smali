.class public Lcom/umeng/analytics/vshelper/PageNameMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/vshelper/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/vshelper/PageNameMonitor$a;
    }
.end annotation


# static fields
.field private static currentActivity:Ljava/lang/String;

.field private static currentCustomPage:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/vshelper/PageNameMonitor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/vshelper/PageNameMonitor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor$a;->a()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public activityPause(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 6
    .line 7
    monitor-exit p1

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public activityResume(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public customPageBegin(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public customPageEnd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 6
    .line 7
    monitor-exit p1

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public getCurrenPageName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

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
