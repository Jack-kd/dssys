.class public Lcom/meishu/sdk/core/utils/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Lcom/meishu/sdk/core/utils/t0;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static E:Ljava/lang/Integer;

.field public static F:Ljava/lang/String;

.field public static volatile G:Z

.field public static H:Ljava/lang/String;

.field public static I:I

.field public static J:Ljava/lang/Boolean;

.field public static K:[Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Landroid/util/DisplayMetrics;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/core/utils/t0;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/t0;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->C:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/meishu/sdk/core/utils/y0;->D:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    sput v1, Lcom/meishu/sdk/core/utils/y0;->I:I

    .line 25
    .line 26
    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->J:Ljava/lang/Boolean;

    .line 27
    .line 28
    const-string v0, "/dev/socket/qemud"

    .line 29
    .line 30
    const-string v1, "/dev/qemu_pipe"

    .line 31
    .line 32
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->K:[Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/meishu/sdk/core/utils/y0;

    monitor-enter v0

    .line 480
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/meishu/sdk/core/utils/y0;->G:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 481
    sput-boolean v1, Lcom/meishu/sdk/core/utils/y0;->G:Z

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 483
    :cond_0
    :goto_0
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 484
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    const/16 v0, 0x400

    .line 485
    new-array v0, v0, [B

    .line 486
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 487
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    .line 488
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 489
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdType;JJ)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/ad/AdType;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    const-string v4, ""

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    const-string v7, "cache_params"

    invoke-virtual {v0, v7, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v8, v6

    goto :goto_2

    .line 5
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v7, v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 10
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 11
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 12
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v8, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v6

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_2
    :goto_2
    sput-object v8, Lcom/meishu/sdk/core/utils/y0;->D:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v7, 0x1

    const-string v9, "."

    if-eqz v8, :cond_7

    .line 16
    const-string v0, "app_y"

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 17
    sget-object v8, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;

    if-eqz v8, :cond_6

    .line 18
    invoke-virtual {v8}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object v10

    .line 19
    invoke-virtual {v8}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 21
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 22
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 23
    :cond_3
    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 27
    :cond_5
    const-string v0, "app_n"

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_6
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 29
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 30
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 31
    new-instance v8, Lcom/meishu/sdk/core/utils/x0;

    invoke-direct {v8, v1, v3}, Lcom/meishu/sdk/core/utils/x0;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdType;)V

    invoke-virtual {v0, v8}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 32
    :cond_7
    invoke-static {v1, v3}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdType;)V

    .line 33
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->D:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_8

    .line 34
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 35
    :cond_8
    :goto_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    .line 36
    const-string v0, "version"

    const-string v10, "20251125"

    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 38
    const-string v0, "pid"

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_9
    const-string v0, "is_mobile"

    const-string v10, "1"

    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    move-result-object v0

    const-string v11, "init_uuid"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "hidp"

    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x10000000

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "iflag_ant"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x800000

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "iflag_aefr"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x20000000

    .line 44
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "iflag_ast"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x8000

    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "iflag_act"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getInitTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "init_time"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getInitSuccTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "init_succ"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "all_times"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "type_times"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->isUseMediation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    :try_start_2
    invoke-static/range {p0 .. p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBManager;->getAdByPid(Landroid/content/Context;Ljava/lang/String;)Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;

    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBUtil;->getS2SBJson(Landroid/content/Context;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v6

    .line 54
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 55
    const-string v11, "s2sb"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_a
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->secure()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "secure"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->l()Z

    move-result v0

    const-string v11, "0"

    if-eqz v0, :cond_b

    move-object v0, v10

    goto :goto_5

    :cond_b
    move-object v0, v11

    :goto_5
    const-string v12, "dtc_net_http"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 59
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userKeywords()Ljava/lang/String;

    move-result-object v0

    const-string v12, "keywords"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_c
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userExt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 61
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userExt()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ext"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_d
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 63
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "user_type"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_e
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->appId()Ljava/lang/String;

    move-result-object v0

    const-string v12, "app_id"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userDenyCats()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 66
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userDenyCats()Ljava/lang/String;

    move-result-object v0

    const-string v12, "deny_cats"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_f
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userDenyCids()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 68
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userDenyCids()Ljava/lang/String;

    move-result-object v0

    const-string v12, "deny_cids"

    invoke-virtual {v5, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_10
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userDenyAderIds()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 70
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userDenyAderIds()Ljava/lang/String;

    move-result-object v0

    const-string v8, "deny_ader_ids"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 72
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseLocation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 73
    invoke-static {v5, v1}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_6

    .line 74
    :cond_12
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 75
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "device_geo_lat"

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "device_geo_lon"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 78
    :cond_13
    invoke-static {v5, v1}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 79
    :cond_14
    :goto_6
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    const-string v8, "unknown"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 80
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 81
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/t0;->s:Ljava/lang/String;

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v8

    .line 84
    iput-object v8, v0, Lcom/meishu/sdk/core/utils/t0;->s:Ljava/lang/String;

    .line 85
    :cond_15
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    const-string v8, "device_oaid"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "honor"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->enableOaid()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 87
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v8

    const-string v12, "honor_oaid"

    invoke-virtual {v8, v12, v6}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 89
    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_17
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->enableOaid()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 91
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v8

    const-string v12, "m_oaid"

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_18
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 93
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    move-result-object v8

    const-string v12, "user_id"

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_19
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 95
    const-string v12, "device_type_os"

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "device_apiLevel"

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/y0;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "device_battery_level"

    if-eqz v8, :cond_1b

    .line 99
    sget-object v13, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 102
    const-string v8, "device_manufacturer"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1c
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 104
    const-string v8, "device_brand"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 106
    const-string v8, "device_model"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1e
    :try_start_3
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->m:Ljava/lang/String;

    if-nez v0, :cond_20

    invoke-static {}, Lcom/meishu/sdk/core/utils/u1;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 108
    invoke-static {}, Lcom/meishu/sdk/core/utils/u1;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->m:Ljava/lang/String;

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v8, "deviceModelVivo"

    if-eqz v0, :cond_1f

    .line 110
    :try_start_4
    invoke-static {v8, v6}, Lcom/meishu/sdk/core/utils/f1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->m:Ljava/lang/String;

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 111
    :cond_1f
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->m:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/meishu/sdk/core/utils/f1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    .line 112
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :cond_20
    :goto_8
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->m:Ljava/lang/String;

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 115
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->m:Ljava/lang/String;

    const-string v8, "device_model_vivo"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_21
    const-string v0, "device_os"

    const-string v8, "Android"

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 118
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v7, :cond_23

    const/4 v8, 0x2

    if-eq v0, v8, :cond_22

    .line 119
    const-string v0, "-1"

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->i:Ljava/lang/String;

    goto :goto_9

    .line 120
    :cond_22
    sput-object v10, Lcom/meishu/sdk/core/utils/y0;->i:Ljava/lang/String;

    goto :goto_9

    .line 121
    :cond_23
    sput-object v11, Lcom/meishu/sdk/core/utils/y0;->i:Ljava/lang/String;

    .line 122
    :cond_24
    :goto_9
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->i:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 124
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->i:Ljava/lang/String;

    const-string v8, "device_orientation"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_26

    .line 126
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v13, "country"

    invoke-virtual {v5, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v8, "language"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_26
    const-string v0, "2.5.13.0"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 129
    const-string v8, "sdk_version"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v13, 0x1f4ce4

    .line 130
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v8, "sdk_version_code"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz v3, :cond_28

    .line 131
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "accept_ad_type"

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_28
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->d:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    if-eqz v0, :cond_29

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/meishu/sdk/core/utils/r0;->d:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$DClick;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dclk_s"

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_29
    :try_start_5
    invoke-static {}, Lcom/meishu/sdk/core/utils/v0;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/RecordBean;

    if-eqz v0, :cond_2a

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getLoadNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getLoadSucc()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getExposureNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getClickNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getDynamicClickNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getLastDynamicLoadedTime()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getLastDynamicClickTime()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordBean;->getLastClickTime()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2a
    move-object v0, v6

    :goto_a
    if-eqz v0, :cond_2b

    .line 154
    const-string v2, "dclk_p"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2b
    :try_start_6
    invoke-static {}, Lcom/meishu/sdk/core/utils/v0;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    const-string v3, "last_dynamic_time"

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v3, v13, v14}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 157
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v8

    const-string v15, "last_click_time"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v16, v7

    :try_start_7
    invoke-virtual {v8, v15, v13, v14}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v8, 0x0

    if-eqz v0, :cond_2e

    .line 158
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 159
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v0, v8

    move/from16 v17, v0

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move-wide/from16 p1, v13

    move-wide/from16 v21, p1

    .line 160
    :goto_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_2d

    .line 161
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meishu/sdk/core/utils/RecordBean;

    if-eqz v13, :cond_2c

    .line 162
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getLoadNum()I

    move-result v14

    add-int/2addr v0, v14

    .line 163
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getLoadSucc()I

    move-result v14

    add-int v17, v17, v14

    .line 164
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getExposureNum()I

    move-result v14

    add-int v18, v18, v14

    .line 165
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getClickNum()I

    move-result v14

    add-int v19, v19, v14

    .line 166
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getDynamicClickNum()I

    move-result v14

    add-int v20, v20, v14

    .line 167
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getLastDynamicLoadedTime()J

    move-result-wide v23

    cmp-long v14, v23, v21

    if-lez v14, :cond_2c

    .line 168
    invoke-virtual {v13}, Lcom/meishu/sdk/core/utils/RecordBean;->getLastDynamicLoadedTime()J

    move-result-wide v21
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    :goto_c
    move-object/from16 p3, v11

    move-object/from16 p4, v12

    goto/16 :goto_10

    :cond_2c
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_2d
    move v8, v0

    move-object/from16 p3, v11

    move-object/from16 p4, v12

    move/from16 v0, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v15, v20

    move-wide/from16 v11, v21

    goto :goto_e

    :cond_2e
    move-wide/from16 p1, v13

    move v0, v8

    move v13, v0

    move v14, v13

    move v15, v14

    move-object/from16 p3, v11

    move-object/from16 p4, v12

    move-wide/from16 v11, p1

    :goto_e
    if-nez v8, :cond_2f

    if-nez v0, :cond_2f

    if-nez v13, :cond_2f

    if-nez v14, :cond_2f

    if-nez v15, :cond_2f

    cmp-long v17, v11, p1

    if-nez v17, :cond_2f

    cmp-long v17, v2, p1

    if-eqz v17, :cond_30

    :cond_2f
    move-object/from16 v17, v4

    goto :goto_f

    :cond_30
    move-object/from16 v17, v4

    goto :goto_11

    .line 169
    :goto_f
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v16, v7

    goto :goto_c

    .line 186
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_31

    .line 187
    const-string v2, "dclk_a"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_31
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 189
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/t0;->c:Ljava/lang/String;

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 191
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 192
    sget v2, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 193
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    iput-object v2, v0, Lcom/meishu/sdk/core/utils/t0;->c:Ljava/lang/String;

    .line 195
    :cond_32
    :try_start_9
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    const/16 v2, 0x2a3

    if-ne v0, v2, :cond_33

    .line 196
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    const/4 v2, 0x4

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 198
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/16 v2, 0x9

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v0, :cond_34

    goto :goto_13

    :catch_5
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    :cond_33
    :goto_13
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "accept_act_type"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_34
    invoke-static {}, Lcom/meishu/sdk/core/oaid/c;->a()Z

    move-result v0

    if-eqz v0, :cond_39

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_39

    .line 204
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "isulad"

    if-eqz v0, :cond_38

    .line 205
    :try_start_a
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/proc/self/cgroup"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v3, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 206
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    :goto_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 209
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 210
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_16

    :catchall_3
    move-object v6, v0

    goto :goto_15

    :catchall_4
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_36

    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :catch_6
    :cond_36
    move-object/from16 v4, v17

    .line 211
    :catch_7
    :goto_16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 212
    sput-object v10, Lcom/meishu/sdk/core/utils/y0;->H:Ljava/lang/String;

    goto :goto_17

    .line 213
    :cond_37
    sput-object p3, Lcom/meishu/sdk/core/utils/y0;->H:Ljava/lang/String;

    .line 214
    :cond_38
    :goto_17
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->H:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 215
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->H:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_39
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->isSplashClickToClosed()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 217
    const-string v0, "close_on_click"

    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_3a
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 219
    sget-object v1, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 220
    sget-object v1, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 221
    new-instance v2, Lcom/meishu/sdk/core/utils/w0;

    invoke-direct {v2, v0}, Lcom/meishu/sdk/core/utils/w0;-><init>(Ljava/lang/ref/SoftReference;)V

    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 222
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->f:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_3b

    .line 223
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_x_width"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->f:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_x_height"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_3b
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->E:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    .line 226
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->E:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_3c
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 229
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->F:Ljava/lang/String;

    const-string v1, "device_network"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_3d
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 232
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 233
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/t0;->n:Ljava/lang/String;

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 235
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->t:Ljava/lang/String;

    .line 236
    iput-object v1, v0, Lcom/meishu/sdk/core/utils/t0;->n:Ljava/lang/String;

    .line 237
    :cond_3e
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->t:Ljava/lang/String;

    const-string v1, "device_disk_free"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_3f
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 239
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 240
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/t0;->r:Ljava/lang/String;

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 242
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->u:Ljava/lang/String;

    .line 243
    iput-object v1, v0, Lcom/meishu/sdk/core/utils/t0;->r:Ljava/lang/String;

    .line 244
    :cond_40
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->u:Ljava/lang/String;

    const-string v1, "device_font_size"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    return-object v5
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdType;)V
    .locals 9

    const-string v0, "dtc_net_proxy"

    const-string v1, "1"

    const-string v2, "0"

    .line 245
    :try_start_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 246
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 247
    sget-object v8, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_1

    .line 249
    :cond_0
    :goto_0
    sget-object v8, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    .line 250
    invoke-virtual {v7, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 251
    iget-wide v7, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 252
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v7, v4

    :goto_2
    cmp-long v4, v7, v4

    if-lez v4, :cond_1

    .line 253
    const-string v4, "dtc_app_cvit"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 254
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/MSAdConfig;->enableDebug()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v5, "dtc_sdk_debug"

    if-eqz v4, :cond_2

    .line 255
    :try_start_4
    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception v4

    goto :goto_3

    .line 256
    :cond_2
    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 257
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :goto_4
    const/4 v4, -0x1

    .line 258
    :try_start_6
    const-string v5, "http.proxyHost"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    const-string v7, "http.proxyPort"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_5

    .line 260
    :cond_3
    const-string v7, "-1"

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 261
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v5, :cond_4

    if-eq v7, v4, :cond_4

    .line 262
    :try_start_7
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v5

    .line 263
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    :cond_4
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    .line 265
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :goto_7
    const/4 v0, 0x1

    .line 266
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "adb_enabled"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const-string v7, "dtc_console"

    if-ne v5, v0, :cond_5

    .line 267
    :try_start_a
    invoke-virtual {v3, v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catchall_4
    move-exception v5

    goto :goto_8

    .line 268
    :cond_5
    invoke-virtual {v3, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    .line 269
    :goto_8
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 270
    :goto_9
    :try_start_c
    const-string v5, "dtc_app_debug"

    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v5

    .line 271
    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 272
    :goto_a
    :try_start_e
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->m()Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const-string v7, "dtc_emulator"

    if-eqz v5, :cond_6

    .line 273
    :try_start_f
    invoke-virtual {v3, v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :catchall_6
    move-exception v1

    goto :goto_b

    .line 274
    :cond_6
    invoke-virtual {v3, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_c

    .line 275
    :goto_b
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    :goto_c
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const-string v2, ""

    if-eq p1, v1, :cond_7

    :try_start_11
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->FEED_PRE_RENDER:Lcom/meishu/sdk/core/ad/AdType;

    if-ne p1, v1, :cond_8

    .line 277
    :cond_7
    sget-object p1, Lcom/meishu/sdk/core/utils/c$a;->a:Lcom/meishu/sdk/core/utils/c;

    invoke-virtual {p1, p0}, Lcom/meishu/sdk/core/utils/c;->a(Landroid/content/Context;)Lcom/meishu/sdk/core/domain/LayoutBean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 278
    invoke-virtual {p1, p0}, Lcom/meishu/sdk/core/utils/c;->a(Landroid/content/Context;)Lcom/meishu/sdk/core/domain/LayoutBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/LayoutBean;->getMtime()I

    move-result p1

    int-to-long v7, p1

    .line 279
    const-string p1, "fel_mtime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_8
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    const-string v1, "install_time"

    if-eqz p1, :cond_9

    .line 281
    :try_start_12
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->z:Ljava/lang/String;

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 283
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    :cond_9
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->o(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v4, :cond_b

    .line 285
    sget-object v2, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 286
    iget-object v2, v2, Lcom/meishu/sdk/core/utils/t0;->a:Ljava/lang/String;

    .line 287
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 288
    sget-object v2, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    iput-object v4, v2, Lcom/meishu/sdk/core/utils/t0;->a:Ljava/lang/String;

    .line 290
    :cond_a
    const-string v2, "wxapi"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_b
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->z:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->isUseMediation()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 293
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->i()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 295
    const-string v1, "third_party_sdk"

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_c
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    .line 298
    :cond_d
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 300
    const-string p1, "app_package"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_e
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 302
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 303
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 304
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/t0;->b:Ljava/lang/String;

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 306
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;

    .line 307
    iput-object v1, p1, Lcom/meishu/sdk/core/utils/t0;->b:Ljava/lang/String;

    .line 308
    :cond_f
    const-string p1, "h5_app_type"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_10
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 310
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 311
    const-string p1, "app_name"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->b:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getWxVersionName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->C:Ljava/lang/String;

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 314
    const-string p1, "wx_sdk_name"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->C:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_12
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->c:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-nez p1, :cond_13

    .line 316
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 318
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->c:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p1

    .line 319
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 320
    :cond_13
    :goto_d
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->c:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 322
    const-string p1, "app_ver"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_14
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 324
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 325
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 326
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/t0;->d:Ljava/lang/String;

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 328
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;

    .line 329
    iput-object v1, p1, Lcom/meishu/sdk/core/utils/t0;->d:Ljava/lang/String;

    .line 330
    :cond_15
    const-string p1, "device_appstore_ver"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_16
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 332
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 333
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;

    goto :goto_e

    .line 334
    :cond_17
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseAndroidId()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 335
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_e

    .line 336
    :cond_18
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 337
    :cond_19
    :goto_e
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 338
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 339
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/t0;->e:Ljava/lang/String;

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 341
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;

    .line 342
    iput-object v1, p1, Lcom/meishu/sdk/core/utils/t0;->e:Ljava/lang/String;

    .line 343
    :cond_1a
    const-string p1, "device_adid"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->e:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1b
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 345
    const-string p1, "user_id"

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_1c
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 347
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseImsi()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 348
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    goto :goto_f

    .line 349
    :cond_1d
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    .line 350
    :cond_1e
    :goto_f
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 351
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 352
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/t0;->f:Ljava/lang/String;

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 354
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    .line 355
    iput-object v1, p1, Lcom/meishu/sdk/core/utils/t0;->f:Ljava/lang/String;

    .line 356
    :cond_1f
    const-string p1, "device_imsi"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_20
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 358
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 359
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 360
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/t0;->g:Ljava/lang/String;

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 362
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;

    .line 363
    iput-object v1, p1, Lcom/meishu/sdk/core/utils/t0;->g:Ljava/lang/String;

    .line 364
    :cond_21
    const-string p1, "device_hmscore"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_22
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->f:Landroid/util/DisplayMetrics;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    if-nez p1, :cond_23

    .line 366
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/y0;->f:Landroid/util/DisplayMetrics;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_10

    :catch_0
    move-exception p1

    .line 367
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    :cond_23
    :goto_10
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->f:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_24

    .line 369
    const-string v1, "device_x_width"

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string p1, "device_x_height"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->f:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_24
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->l(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 372
    const-string v1, "device_ppi"

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "device_width"

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "device_height"

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v1, "device_density"

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 377
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 378
    const-string p1, "device_type"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->g:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_25
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 380
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 381
    :cond_26
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 382
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 383
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/t0;->h:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 385
    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    .line 386
    iput-object v1, p1, Lcom/meishu/sdk/core/utils/t0;->h:Ljava/lang/String;

    .line 387
    :cond_27
    const-string p1, "device_ua"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_28
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 389
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->j:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 390
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 391
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->i:Ljava/lang/String;

    .line 392
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 393
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->j:Ljava/lang/String;

    .line 394
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->i:Ljava/lang/String;

    .line 395
    :cond_29
    const-string p0, "app_signature"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->j:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_2a
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->f()Ljava/lang/String;

    .line 397
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->k:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 398
    const-string p0, "device_performance"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->k:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2b
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->g()Ljava/lang/String;

    .line 400
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 401
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 402
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->k:Ljava/lang/String;

    .line 403
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 404
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    .line 405
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->k:Ljava/lang/String;

    .line 406
    :cond_2c
    const-string p0, "device_rom_version"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_2d
    invoke-static {}, Lcom/meishu/sdk/core/utils/u1;->a()Ljava/lang/String;

    .line 408
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 409
    const-string p0, "device_rom_version_vivo"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->n:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_2e
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->h()Ljava/lang/String;

    .line 411
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->o:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_30

    .line 412
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 413
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->l:Ljava/lang/String;

    .line 414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 415
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->o:Ljava/lang/String;

    .line 416
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->l:Ljava/lang/String;

    .line 417
    :cond_2f
    const-string p0, "device_syscmp_time"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->o:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_30
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->j()V

    .line 419
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->s:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_32

    .line 420
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 421
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->m:Ljava/lang/String;

    .line 422
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 423
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->s:Ljava/lang/String;

    .line 424
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->m:Ljava/lang/String;

    .line 425
    :cond_31
    const-string p0, "device_disk_total"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->s:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_32
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->d()V

    .line 427
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->v:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_34

    .line 428
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 429
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->o:Ljava/lang/String;

    .line 430
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 431
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->v:Ljava/lang/String;

    .line 432
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->o:Ljava/lang/String;

    .line 433
    :cond_33
    const-string p0, "device_cpu_model"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->v:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_34
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->k()Ljava/lang/String;

    .line 435
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_36

    .line 436
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 437
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->p:Ljava/lang/String;

    .line 438
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 439
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    .line 440
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->p:Ljava/lang/String;

    .line 441
    :cond_35
    const-string p0, "device_update_mark"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_36
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p1, "xiaomi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_11

    .line 443
    :cond_37
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->b()Ljava/lang/String;

    .line 444
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->y:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_39

    .line 445
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 446
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/t0;->q:Ljava/lang/String;

    .line 447
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 448
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->y:Ljava/lang/String;

    .line 449
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t0;->q:Ljava/lang/String;

    .line 450
    :cond_38
    const-string p0, "device_boot_mark"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->y:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_39
    :goto_11
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->c()Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 453
    const-string p1, "device_boot_time"

    invoke-virtual {v3, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_3a
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->x:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3b

    .line 455
    const-string p0, "device_sys_update"

    sget-object p1, Lcom/meishu/sdk/core/utils/y0;->x:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_3b
    sget-object p0, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;

    if-eqz p0, :cond_3f

    .line 457
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    const-string v2, "."

    if-nez v1, :cond_3d

    .line 460
    :try_start_17
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 462
    :cond_3c
    const-string v1, "app_y"

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_3d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 464
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 465
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 466
    :cond_3e
    const-string p1, "app_n"

    invoke-virtual {v3, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_3f
    sput-object v3, Lcom/meishu/sdk/core/utils/y0;->D:Ljava/util/concurrent/ConcurrentHashMap;

    .line 468
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 469
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p1

    const-string v0, "cache_params"

    invoke-virtual {p0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_12

    :catchall_8
    move-exception p0

    .line 470
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public static a(Ljava/util/Map;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 471
    :try_start_0
    const-class v0, Lcom/meishu/sdk/core/utils/GPSUtils;

    .line 472
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 474
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 475
    const-string v1, "getL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 476
    aget-wide v0, p1, v0

    .line 477
    aget-wide v2, p1, v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v0, v4

    if-lez p1, :cond_0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_0

    .line 478
    const-string p1, "device_geo_lat"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string p1, "device_geo_lon"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 3

    .line 491
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    const-string v1, "cpuInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->A:Ljava/lang/String;

    .line 493
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->A:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 496
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 497
    new-instance v1, Lcom/meishu/sdk/core/utils/z0;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/z0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 498
    :cond_1
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->A:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_3

    .line 499
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "amd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->isEnableBootId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    .line 13
    :try_start_0
    new-array v1, v0, [C

    .line 14
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 6
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdType;JJ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/ad/AdType;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->appId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 3
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "wrapParams pid or appId or ad Type is empty: %s %s %s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "RequestUtil"

    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static/range {p0 .. p6}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdType;JJ)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 12
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 13
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "com.oppo.market"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "meizu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "honor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_3
    const-string v3, "vivo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "oppo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v3, "huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v3, "oneplus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 2
    :pswitch_0
    const-string v0, "com.sec.android.app.samsungapps"

    goto :goto_3

    .line 3
    :pswitch_1
    const-string v0, "com.oneplus.market"

    goto :goto_3

    .line 4
    :pswitch_2
    const-string v0, "com.meizu.mstore"

    goto :goto_3

    .line 5
    :pswitch_3
    const-string v1, "com.heytap.market"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    return-object v1

    .line 7
    :pswitch_4
    :try_start_2
    const-string v0, "com.bbk.appstore"

    goto :goto_3

    .line 8
    :pswitch_5
    const-string v0, "com.xiaomi.market"

    goto :goto_3

    .line 9
    :pswitch_6
    const-string v0, "com.huawei.appmarket"

    goto :goto_3

    .line 10
    :pswitch_7
    const-string v0, "com.hihonor.appmarket"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 11
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :catch_0
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4eb36700 -> :sswitch_7
        -0x47e95e19 -> :sswitch_6
        -0x2d450b45 -> :sswitch_5
        0x3427a0 -> :sswitch_4
        0x373cac -> :sswitch_3
        0x5edac6a -> :sswitch_2
        0x62f84cc -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 4
    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;

    .line 5
    :cond_0
    :goto_0
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static d()V
    .locals 3

    .line 6
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    const-string v1, "device_cpuname"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->v:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 11
    new-instance v1, Lcom/meishu/sdk/core/utils/y0$a;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/y0$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()V
    .locals 5

    .line 4
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 6
    const-string v1, "android.app.ActivityManagerNative"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 8
    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getConfiguration"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 9

    .line 6
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->k:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 11
    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 12
    sget-object v7, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    .line 13
    iget-object v7, v7, Lcom/meishu/sdk/core/utils/t0;->j:Ljava/lang/String;

    .line 14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 15
    sget-object v7, Lcom/meishu/sdk/core/utils/y0;->B:Lcom/meishu/sdk/core/utils/t0;

    aget-object v8, v0, v3

    .line 16
    iput-object v8, v7, Lcom/meishu/sdk/core/utils/t0;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 18
    :catch_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_4

    :goto_1
    move-object v2, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-object v6, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v2

    :goto_2
    if-eqz v2, :cond_1

    .line 19
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_1
    if-eqz v5, :cond_2

    .line 20
    :try_start_6
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 21
    :catch_3
    :cond_2
    throw v0

    :catch_4
    move-object v5, v2

    move-object v6, v5

    :catch_5
    :goto_3
    if-eqz v6, :cond_3

    .line 22
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    if-eqz v5, :cond_4

    .line 23
    :try_start_8
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 24
    :catch_7
    :cond_4
    :goto_4
    :try_start_9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/MSAdConfig;->isUseMediation()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 25
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getBDVersionName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 26
    :cond_5
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getCSJVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    add-int/lit8 v1, v1, 0x2

    .line 27
    :cond_6
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getGDTVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    add-int/lit8 v1, v1, 0x4

    .line 28
    :cond_7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getKSVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    add-int/lit8 v1, v1, 0x10

    .line 29
    :cond_8
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getOPPOVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    add-int/lit8 v1, v1, 0x20

    .line 30
    :cond_9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getMimoVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    add-int/lit8 v1, v1, 0x40

    .line 31
    :cond_a
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getJDVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    add-int/lit16 v1, v1, 0x80

    .line 32
    :cond_b
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSGMVersionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    add-int/lit16 v1, v1, 0x400

    .line 33
    :cond_c
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getHWVersionName()Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_d

    add-int/lit16 v1, v1, 0x1000

    goto :goto_5

    :catchall_3
    move-exception v2

    goto :goto_6

    .line 34
    :cond_d
    :goto_5
    :try_start_a
    const-string v3, "com.meishu.sdk.core.LiveAdSdk"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getLoadedPlatforms"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    .line 35
    :catch_8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_7

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 36
    throw v2

    .line 37
    :catch_9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 38
    :goto_7
    const-string v1, "|"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->k:Ljava/lang/String;

    .line 39
    :cond_e
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/meishu/sdk/platform/ms/splash/k;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_1
    :goto_1
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 6
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "lemobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "smartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 8
    const-string v0, "getprop ro.build.version.release"

    .line 9
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_2

    .line 10
    :pswitch_0
    const-string v0, "getprop ro.build.display.id"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_2

    .line 11
    :pswitch_1
    const-string v0, "getprop ro.build.version.ota"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_2

    .line 12
    :pswitch_2
    const-string v0, "getprop ro.vivo.product.version"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_2

    .line 13
    :pswitch_3
    const-string v0, "getprop ro.letv.release.version"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_2

    .line 14
    :pswitch_4
    const-string v0, "getprop ro.build.version.incremental"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_2

    .line 15
    :pswitch_5
    const-string v0, "getprop ro.smartisan.version"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    .line 16
    :goto_2
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "romVersion"

    if-eqz v0, :cond_1

    .line 17
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    goto :goto_3

    .line 18
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_2
    :goto_3
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->l:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5608ffe0 -> :sswitch_6
        -0x47e95e19 -> :sswitch_5
        -0x2d450b45 -> :sswitch_4
        0x3427a0 -> :sswitch_3
        0x373cac -> :sswitch_2
        0x62f84cc -> :sswitch_1
        0x721edf5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    const-string v0, "hap://app/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    const-string p0, "1"

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    const-string p0, ""

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :cond_1
    :goto_0
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 10
    const-string v0, "getprop ro.vendor.build.date.utc"

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->o:Ljava/lang/String;

    .line 11
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "com.huawei.hwid"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x4000

    .line 4
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 5
    :try_start_2
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ltz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_0
    sput-object v1, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :catchall_1
    :cond_1
    :goto_1
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getBDVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "="

    if-nez v1, :cond_0

    .line 3
    const-string v1, "BAIDU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getBDVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getCSJVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "&"

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "CSJ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getCSJVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getGDTVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "GDT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getGDTVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getJDVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "JD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getJDVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getKSVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "KS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getKSVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSGMVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "SGM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSGMVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_5
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getHWVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "HW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getHWVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 37
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p0, :cond_1

    goto :goto_0

    .line 43
    :catch_1
    :cond_1
    :try_start_3
    const-string p0, ""

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    .line 44
    :goto_0
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 45
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-le p0, v0, :cond_2

    .line 46
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_2
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    .line 48
    :catch_2
    :cond_3
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "-1"

    .line 1
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    const-string p0, "1"

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "3"

    packed-switch v1, :pswitch_data_0

    .line 7
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v3, "WCDMA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CDMA2000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v2

    .line 10
    :pswitch_1
    const-string p0, "6"

    return-object p0

    .line 11
    :pswitch_2
    const-string p0, "2"

    return-object p0

    :pswitch_3
    return-object v2

    .line 12
    :pswitch_4
    const-string p0, "4"

    return-object p0

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_5

    .line 14
    const-string p0, "7"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :cond_5
    return-object v0

    .line 15
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static j()V
    .locals 3

    .line 16
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x100000

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 9

    .line 17
    const-string v0, "update_time"

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "stat /data/data"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 21
    const-string v5, "Modify:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    .line 22
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 23
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 24
    aget-object v5, v3, v1

    .line 25
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    aget-object v3, v3, v7

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    goto :goto_1

    :cond_2
    const-string v3, "0"

    .line 26
    :goto_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v5, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    goto :goto_3

    :catchall_2
    move-exception v3

    move-object v4, v2

    .line 32
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v4, :cond_4

    .line 33
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 34
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :cond_4
    :goto_4
    sget-object v3, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 36
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    .line 37
    :cond_5
    :try_start_5
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_7

    .line 38
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->x:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catchall_4
    move-exception v0

    if-eqz v4, :cond_6

    .line 40
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_6
    :goto_5
    throw v0

    .line 43
    :cond_7
    :goto_6
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 9
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 14
    :goto_0
    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->j:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_0
    :goto_1
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    :try_start_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static l()Z
    .locals 2

    .line 6
    sget-object v0, Lcom/meishu/sdk/core/utils/y0;->J:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/meishu/sdk/core/utils/y0;->J:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meishu/sdk/core/utils/y0;->J:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 4

    .line 9
    sget v0, Lcom/meishu/sdk/core/utils/y0;->I:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/meishu/sdk/core/utils/y0;->I:I

    .line 13
    :cond_2
    sget p0, Lcom/meishu/sdk/core/utils/y0;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 14
    :catchall_0
    sget p0, Lcom/meishu/sdk/core/utils/y0;->I:I

    return p0
.end method

.method public static m()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcom/meishu/sdk/core/utils/y0;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    move v1, v0

    .line 3
    :goto_0
    :try_start_1
    sget-object v2, Lcom/meishu/sdk/core/utils/y0;->K:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 4
    aget-object v2, v2, v1

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 8
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return v0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "user_agent"

    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v1, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    :cond_0
    sget-object p0, Lcom/meishu/sdk/core/utils/y0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static n()Z
    .locals 4

    .line 5
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vbox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    const-string v2, "google_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    const-string v3, "Emulator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    const-string v3, "Android SDK built for x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 11
    const-string v3, "Genymotion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static o(Landroid/content/Context;)I
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getWxAppid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "com.tencent.mm.opensdk.openapi.BaseWXApiImplV10"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-class v2, Landroid/content/Context;

    const-class v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p0, v0, v3, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    const-string v0, "getWXAppSupportAPI"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static o()Z
    .locals 2

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isStorageCollectEnable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
