.class public Lcom/meishu/sdk/platform/duomeng/DmInitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/duomeng/DmInitManager$InitCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DmInitManager"

.field private static sInstance:Lcom/meishu/sdk/platform/duomeng/DmInitManager;


# instance fields
.field private isInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/meishu/sdk/platform/duomeng/DmInitManager;
    .locals 2

    .line 1
    const-class v0, Lcom/meishu/sdk/platform/duomeng/DmInitManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->sInstance:Lcom/meishu/sdk/platform/duomeng/DmInitManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/meishu/sdk/platform/duomeng/DmInitManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/meishu/sdk/platform/duomeng/DmInitManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->sInstance:Lcom/meishu/sdk/platform/duomeng/DmInitManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->sInstance:Lcom/meishu/sdk/platform/duomeng/DmInitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public declared-synchronized initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/duomeng/DmInitManager$InitCallback;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->isInit:Z

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3}, Lcom/meishu/sdk/platform/duomeng/DmInitManager$InitCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/domob/sdk/platform/DMAdSdk;->getInstance()Lcom/domob/sdk/platform/interfaces/PlatformAdTemplate;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/domob/sdk/common/config/DMConfig;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/domob/sdk/common/config/DMConfig;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/domob/sdk/common/config/DMConfig;->debug(Z)Lcom/domob/sdk/common/config/DMConfig;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/meishu/sdk/platform/duomeng/DmInitManager$1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/duomeng/DmInitManager$1;-><init>(Lcom/meishu/sdk/platform/duomeng/DmInitManager;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/domob/sdk/common/config/DMConfig;->setPermission(Lcom/domob/sdk/common/config/PermissionConfig;)Lcom/domob/sdk/common/config/DMConfig;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p2, p1, v0}, Lcom/domob/sdk/platform/interfaces/PlatformAdTemplate;->init(Landroid/content/Context;Lcom/domob/sdk/common/config/DMConfig;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->isInit:Z

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-interface {p3}, Lcom/meishu/sdk/platform/duomeng/DmInitManager$InitCallback;->onSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw p1
.end method
