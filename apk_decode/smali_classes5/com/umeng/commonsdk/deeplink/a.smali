.class public final Lcom/umeng/commonsdk/deeplink/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/umeng/commonsdk/deeplink/a;


# instance fields
.field private volatile b:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

.field private volatile c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/umeng/commonsdk/deeplink/a;->d:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/deeplink/a;
    .locals 2

    .line 3
    sget-object v0, Lcom/umeng/commonsdk/deeplink/a;->a:Lcom/umeng/commonsdk/deeplink/a;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/umeng/commonsdk/deeplink/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/deeplink/a;->a:Lcom/umeng/commonsdk/deeplink/a;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/umeng/commonsdk/deeplink/a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/deeplink/a;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/deeplink/a;->a:Lcom/umeng/commonsdk/deeplink/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_2
    sget-object v0, Lcom/umeng/commonsdk/deeplink/a;->a:Lcom/umeng/commonsdk/deeplink/a;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a;->b:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/commonsdk/deeplink/a$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/umeng/commonsdk/deeplink/a$3;-><init>(Lcom/umeng/commonsdk/deeplink/a;Lcom/umeng/commonsdk/deeplink/OnAttributionListener;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 3

    .line 32
    const-string v0, "MobclickRT"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> [attribution] success: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p3, v1}, Lcom/umeng/commonsdk/deeplink/a;->a(Landroid/content/Context;Lorg/json/JSONObject;I)V

    .line 35
    invoke-direct {p0, p3}, Lcom/umeng/commonsdk/deeplink/a;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 36
    const-string p2, "--->>> [attribution] failed: status=-1"

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/commonsdk/deeplink/a;->a(Landroid/content/Context;Lorg/json/JSONObject;I)V

    .line 38
    invoke-direct {p0, p3}, Lcom/umeng/commonsdk/deeplink/a;->a(I)V

    return-void

    .line 39
    :cond_2
    const-string p2, "--->>> [attribution] pending: status=0, retry in 1s"

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 2

    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string v1, "status"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    .line 44
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "um_attribution_result_cache"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    const-string p1, "MobclickRT"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->>> [attribution] cache saved: status="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/umeng/commonsdk/deeplink/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/umeng/commonsdk/deeplink/a;Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/commonsdk/deeplink/a;->a(Landroid/content/Context;ILorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string p1, "status"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 49
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 51
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/deeplink/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a;->b:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/commonsdk/deeplink/a$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/umeng/commonsdk/deeplink/a$2;-><init>(Lcom/umeng/commonsdk/deeplink/a;Lcom/umeng/commonsdk/deeplink/OnAttributionListener;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    const-string v1, "--->>> [attribution] scheduleRetry: delay 1000ms"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const-wide/16 v5, 0x3e8

    .line 18
    .line 19
    const v2, 0x8029

    .line 20
    .line 21
    .line 22
    move-object v1, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private d(Landroid/content/Context;)J
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-string v0, "um_attribution_first_launch_time"

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    cmp-long v1, v3, v1

    .line 21
    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    return-wide v3

    .line 25
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v0, "--->>> [attribution] firstLaunchTime created: "

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "MobclickRT"

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-wide v1
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v1, "um_attribution_result_cache"

    .line 10
    .line 11
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a;->b:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    const-string v1, "MobclickRT"

    if-nez v0, :cond_0

    .line 20
    const-string p1, "--->>> [attribution] triggerQuery: no listener, skip"

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    const-string p1, "--->>> [attribution] triggerQuery: not main process, skip"

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_2
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/a;->c:Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    const-string p1, "--->>> [attribution] triggerQuery: cache hit, dispatch cached result"

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/deeplink/a;->a(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_3
    const-string v0, "--->>> [attribution] triggerQuery: dispatch query message"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x8029

    .line 31
    invoke-static {p1, v2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/umeng/commonsdk/deeplink/OnAttributionListener;)V
    .locals 2

    .line 9
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/a;->b:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> [attribution] setListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "registered"

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/umeng/commonsdk/deeplink/a;->c:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/umeng/commonsdk/deeplink/a;->c:Landroid/content/Context;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 14
    const-string p1, "--->>> [attribution] setListener: context is null, will handle in triggerQuery"

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_4
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    const-string p2, "--->>> [attribution] setListener: cache hit, dispatch immediately"

    invoke-static {v1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->a(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->d(Landroid/content/Context;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v6, "--->>> [attribution] executeQuery: appkey="

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v6, ", umid="

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v6, ", firstLaunchTime="

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v0, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    const-string v1, "--->>> [attribution] umid is empty, retry in 1s"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/deeplink/a;->c(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lcom/umeng/commonsdk/deeplink/a$1;

    .line 76
    .line 77
    invoke-direct {v0, p0, p1}, Lcom/umeng/commonsdk/deeplink/a$1;-><init>(Lcom/umeng/commonsdk/deeplink/a;Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v4, v1, v2, v0}, Lcom/umeng/commonsdk/deeplink/b;->a(Ljava/lang/String;Ljava/lang/String;JLcom/umeng/commonsdk/deeplink/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_0
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
