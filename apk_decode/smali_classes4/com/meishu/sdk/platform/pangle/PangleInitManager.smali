.class public Lcom/meishu/sdk/platform/pangle/PangleInitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PangleInitManager"

.field private static sInstance:Lcom/meishu/sdk/platform/pangle/PangleInitManager;


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

.method public static synthetic access$002(Lcom/meishu/sdk/platform/pangle/PangleInitManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->isInit:Z

    .line 2
    .line 3
    return p1
.end method

.method private static buildNewConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
    .locals 0

    .line 1
    new-instance p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->debugLog(Z)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/meishu/sdk/platform/pangle/PangleInitManager;
    .locals 2

    .line 1
    const-class v0, Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->sInstance:Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->sInstance:Lcom/meishu/sdk/platform/pangle/PangleInitManager;

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
    sget-object v1, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->sInstance:Lcom/meishu/sdk/platform/pangle/PangleInitManager;
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
.method public declared-synchronized initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->isInit:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3}, Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;->onSuccess()V
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
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->buildNewConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance v0, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;-><init>(Lcom/meishu/sdk/platform/pangle/PangleInitManager;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p1
.end method
