.class public Lcom/umeng/analytics/pro/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/cg;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/ci;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:I

.field private static volatile f:J

.field private static g:Lcom/umeng/analytics/pro/cj;

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/cj$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/analytics/pro/ck;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/umeng/analytics/pro/ck;->b:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/umeng/analytics/pro/ck;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/umeng/analytics/pro/ck;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    sput v0, Lcom/umeng/analytics/pro/ck;->e:I

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    sput-wide v0, Lcom/umeng/analytics/pro/ck;->f:J

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/umeng/analytics/pro/ck;->h:Ljava/util/ArrayList;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    sget v1, Lcom/umeng/analytics/pro/ck;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-wide v1, Lcom/umeng/analytics/pro/ck;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-static {p0}, Lcom/umeng/analytics/pro/ck;->b(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/cn;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/cg;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/ck;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/ch;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 11
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/cn;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Lcom/umeng/analytics/pro/ch;->a(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/ci;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Lcom/umeng/analytics/pro/ck;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/cj$a;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 15
    sget-object v0, Lcom/umeng/analytics/pro/ck;->h:Ljava/util/ArrayList;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    sget-object v1, Lcom/umeng/analytics/pro/ck;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v0, Lcom/umeng/analytics/pro/ck;->g:Lcom/umeng/analytics/pro/cj;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/cj;->a(Lcom/umeng/analytics/pro/cj$a;)V

    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 25
    const-string v0, "[ncc]: umc_cfg: call b a."

    const-string v1, "MobclickRT"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 27
    :cond_0
    :try_start_0
    const-string v0, ""

    if-eqz p2, :cond_1

    .line 28
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    const/4 p2, 0x1

    .line 29
    sput p2, Lcom/umeng/analytics/pro/ck;->e:I

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/umeng/analytics/pro/ck;->f:J

    .line 31
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitCompleteTs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    :goto_0
    move v7, p2

    goto :goto_1

    .line 32
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1770

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    .line 33
    :goto_1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 34
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/pro/cn$a;

    sget-wide v5, Lcom/umeng/analytics/pro/ck;->f:J

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/umeng/analytics/pro/cn$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    const/16 p0, 0x132

    .line 35
    invoke-static {p2, p0, v0, v1}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 36
    :cond_4
    :goto_2
    const-string p0, "[ncc]: onActUpEvent: type or token agument is empty string, pls check!"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 4

    .line 7
    sget-object v0, Lcom/umeng/analytics/pro/ck;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    sget-object v3, Lcom/umeng/analytics/pro/ck;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/pro/ci;

    invoke-interface {v3, p0}, Lcom/umeng/analytics/pro/ci;->a(Lorg/json/JSONObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()I
    .locals 1

    .line 22
    sget v0, Lcom/umeng/analytics/pro/ck;->e:I

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/umeng/analytics/pro/ck;->g:Lcom/umeng/analytics/pro/cj;

    if-nez v0, :cond_3

    .line 6
    const-class v0, Lcom/umeng/analytics/pro/ck;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->g:Lcom/umeng/analytics/pro/cj;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcom/umeng/analytics/pro/cj;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/cj;-><init>()V

    sput-object v1, Lcom/umeng/analytics/pro/ck;->g:Lcom/umeng/analytics/pro/cj;

    .line 9
    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 10
    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 12
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 13
    check-cast p0, Landroid/app/Application;

    sget-object v1, Lcom/umeng/analytics/pro/ck;->g:Lcom/umeng/analytics/pro/cj;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 14
    :cond_1
    const-string p0, "MobclickRT"

    const-string v1, "[ncc]: Failed to register ActivityLifecycleCallbacks, context is not Application"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public static b(Lcom/umeng/analytics/pro/cj$a;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 16
    sget-object v0, Lcom/umeng/analytics/pro/ck;->h:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v0, Lcom/umeng/analytics/pro/ck;->g:Lcom/umeng/analytics/pro/cj;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/cj;->b(Lcom/umeng/analytics/pro/cj$a;)V

    return-void

    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/ck;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/ck;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    sget-object v3, Lcom/umeng/analytics/pro/ck;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/pro/cg;

    invoke-interface {v3, p0}, Lcom/umeng/analytics/pro/cg;->a(Lorg/json/JSONObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
