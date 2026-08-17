.class public Lcom/umeng/analytics/pro/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/cm$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/cn$a;,
        Lcom/umeng/analytics/pro/cn$b;,
        Lcom/umeng/analytics/pro/cn$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "newver"

.field private static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/co;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:I = 0x0

.field private static e:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/co;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile f:I = 0x0

.field private static volatile g:Z = false

.field private static volatile h:Z = false

.field private static final i:Ljava/lang/Object;

.field private static final j:Ljava/lang/String; = ".um_ncc_init_beacon_987654321"

.field private static final k:Ljava/lang/String; = ".um_ncc_local_config"

.field private static volatile l:Lorg/json/JSONObject;

.field private static final m:Ljava/lang/Object;


# instance fields
.field private volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/umeng/analytics/pro/cn;->d:I

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    sput v1, Lcom/umeng/analytics/pro/cn;->f:I

    .line 20
    .line 21
    sput-boolean v0, Lcom/umeng/analytics/pro/cn;->g:Z

    .line 22
    .line 23
    sput-boolean v0, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/umeng/analytics/pro/cn;->m:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/umeng/analytics/pro/cn;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/cn;
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/cn$c;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/umeng/analytics/pro/cx;Lcom/umeng/analytics/pro/cx$b;)Lcom/umeng/analytics/pro/co;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 31
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Lcom/umeng/analytics/pro/cq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->d()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/umeng/analytics/pro/cq;-><init>(I)V

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    new-instance v3, Lcom/umeng/analytics/pro/cw;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/pro/cw;-><init>(Ljava/util/Set;)V

    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 40
    new-instance v3, Lcom/umeng/analytics/pro/cr;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/pro/cr;-><init>(Ljava/util/Set;)V

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 43
    new-instance v2, Lcom/umeng/analytics/pro/cv;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/umeng/analytics/pro/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 47
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 48
    :goto_1
    :try_start_2
    new-instance v2, Lcom/umeng/analytics/pro/ct;

    invoke-direct {v2, p1}, Lcom/umeng/analytics/pro/ct;-><init>(I)V

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->g()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 51
    :try_start_3
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    const-wide/16 v2, 0x0

    .line 52
    :goto_2
    :try_start_4
    new-instance p1, Lcom/umeng/analytics/pro/cs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4, v2, v3}, Lcom/umeng/analytics/pro/cs;-><init>(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_5
    new-instance p1, Lcom/umeng/analytics/pro/co;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cx$b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/umeng/analytics/pro/co;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p1

    .line 55
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ncc]: buildAction error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobclickRT"

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 5

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 124
    const-string v3, "id"

    const-string v4, "$$_umc_ev1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v3, "ts"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 126
    const-string v1, "tt"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string p1, "mock"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string p1, "result"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    new-instance p1, Lorg/json/JSONArray;

    const-string p2, "[\"uapp\"]"

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "uapp"

    invoke-static {p2, p1, p3}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 131
    const-string p2, "wkMode"

    sget p3, Lcom/umeng/analytics/pro/cn;->f:I

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 133
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 58
    const-string v0, "config_ts"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    const-string p1, "MobclickRT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ncc]: updateVersion : ts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 146
    const-string v2, "mock"

    const-string v3, "actionName"

    :try_start_0
    const-string v4, ""

    .line 147
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v5, v4

    .line 149
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const-string v1, "MobclickRT"

    const-string v2, "--->>>[ncc]: target is empty, ignore umc_cfg process"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-nez v1, :cond_4

    .line 153
    invoke-direct {v0}, Lcom/umeng/analytics/pro/cn;->d()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 154
    :cond_3
    const-string v3, "c"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "s"

    .line 155
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v8, "a"

    .line 156
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    .line 157
    invoke-static {v3, v6, v7, v9, v8}, Lcom/umeng/analytics/pro/ax;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 158
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 159
    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genSin()[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    move-result-object v6

    .line 161
    invoke-static {v6, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 162
    const-string v6, "ss"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "z"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/analytics/pro/ax;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 164
    const-string v4, "m"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "x"

    .line 165
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v9, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const-class v11, [Ljava/lang/String;

    const-class v12, Landroid/os/Bundle;

    const-class v13, Landroid/app/Activity;

    const-class v15, Landroid/os/Handler;

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Class;

    move-result-object v12

    const-string v6, "u20@24m_PS_DK_ANA"

    new-instance v10, Lcom/umeng/analytics/pro/cn$3;

    invoke-direct {v10, v0, v5, v1}, Lcom/umeng/analytics/pro/cn$3;-><init>(Lcom/umeng/analytics/pro/cn;Ljava/lang/String;I)V

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    .line 166
    invoke-static {v4, v2, v12, v3, v1}, Lcom/umeng/analytics/pro/ax;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_4
    invoke-direct {v0, v5, v1, v4}, Lcom/umeng/analytics/pro/cn;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 168
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    const-string v3, "https://cnlogs.umeng.com/ext_event"

    invoke-direct {v2, v3, v1}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 9
    :try_start_0
    const-string p1, "MobclickRT"

    const-string p2, "[ncc]: saveConfigFile: context is null!"

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 11
    :try_start_1
    const-string p1, "MobclickRT"

    const-string p2, "[ncc]: saveConfigFile: config is null!"

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_1
    :try_start_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    const-string p1, "MobclickRT"

    const-string p2, "[ncc]: saveConfigFile: version is empty!"

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_2
    :try_start_3
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 17
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 18
    sget-object p3, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 19
    array-length p3, p2

    const/4 v2, 0x1

    if-gt p3, v2, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".um_ncc_local_config"

    invoke-direct {p3, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :try_start_4
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 23
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :try_start_5
    invoke-static {v2}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/cn;->a(Landroid/content/Context;J)V

    .line 26
    const-string p1, "MobclickRT"

    const-string p2, "[ncc]: saveConfigFile success."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {v2}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V

    .line 28
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/umeng/analytics/pro/cx$a;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/analytics/pro/cx$a;",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/co;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 61
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0x14

    if-eqz p1, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx$a;->c()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    :cond_1
    move v3, v0

    .line 66
    :catch_1
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v4, p1

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-lez v4, :cond_4

    .line 68
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_1
    if-ge v6, p1, :cond_2

    .line 70
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    :cond_2
    sget p1, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne p1, v0, :cond_3

    .line 72
    sput v1, Lcom/umeng/analytics/pro/cn;->d:I

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batch_"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/umeng/analytics/pro/cn;->d:I

    add-int/2addr v6, v0

    sput v6, Lcom/umeng/analytics/pro/cn;->d:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object v6, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-direct {p0, p2, v3, v4}, Lcom/umeng/analytics/pro/cn;->a(Ljava/util/ArrayList;II)V

    .line 76
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string v5, "batchId"

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string p1, "appsPerBatch"

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string p1, "batchInterval"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string p1, "processedCount"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string p1, "currentBatchIndex"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string p1, "totalBatches"

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    const-string v2, "batchParams"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string p2, "currentIndex"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 87
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v2

    const/16 v3, 0xcc

    .line 88
    invoke-static {p2, v3, v2, p1}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    goto :goto_4

    .line 89
    :cond_4
    sget p1, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne p1, v0, :cond_6

    .line 90
    sget-object p1, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    sput-boolean v1, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 92
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    :goto_2
    const-string p2, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ncc]: processActions error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget p1, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne p1, v0, :cond_6

    .line 95
    sget-object p1, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_6
    sput-boolean v1, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 97
    monitor-exit p1

    goto :goto_4

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p2

    .line 98
    :cond_5
    :goto_3
    sget p1, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne p1, v0, :cond_6

    .line 99
    sget-object p1, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 100
    :try_start_7
    sput-boolean v1, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 101
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2

    :cond_6
    :goto_4
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ncc]: checkFetchCondition: online version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 110
    iget-object v0, p0, Lcom/umeng/analytics/pro/cn;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/umeng/analytics/pro/cn;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string p1, "[ncc]: local cache version == online version, ignore."

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    const-string v4, "config_ts"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 115
    iput-object p1, p0, Lcom/umeng/analytics/pro/cn;->b:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ncc]: local version != online version, send FETCH_NEW_CONFIG msg. local version = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 118
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v4

    const-wide/16 v6, 0x1388

    const/16 v3, 0x65

    move-object v5, p1

    .line 119
    invoke-static/range {v2 .. v7}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    return-void

    :cond_2
    move-object v5, p1

    .line 120
    iput-object v5, p0, Lcom/umeng/analytics/pro/cn;->b:Ljava/lang/String;

    .line 121
    const-string p1, "[ncc]: local version == online version, ignore."

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/co;",
            ">;II)V"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    mul-int v1, v0, p2

    add-int v2, v1, p2

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v2, :cond_0

    .line 105
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_0
    sget-object v1, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/umeng/analytics/pro/cx;)Z
    .locals 4

    .line 169
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx;->a()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const-string v3, "MobclickRT"

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-string p1, "[ncc]: invalid config version."

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 173
    const-string p1, "[ncc]: config data is null."

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cx$a;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 176
    :cond_4
    :goto_0
    const-string p1, "[ncc]: targets is empty"

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 177
    :cond_5
    :goto_1
    const-string p1, "[ncc]: invalid config file."

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    .line 8
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 37
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/cn;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/umeng/analytics/pro/cx;->a(Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/cx;

    move-result-object v2

    .line 39
    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: updateActionExecTime: parse ConfigData error. abort update."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cx$a;->e()Ljava/util/List;

    move-result-object v0

    .line 43
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/pro/cx$b;

    .line 45
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cx$b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cx$b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    :try_start_3
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cx$b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const-wide/16 v0, 0x0

    .line 48
    :goto_2
    new-instance v2, Lcom/umeng/analytics/pro/cs;

    invoke-direct {v2, p1, v0, v1}, Lcom/umeng/analytics/pro/cs;-><init>(Ljava/lang/String;J)V

    .line 49
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cs;->d()V

    :cond_2
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "MobclickRT"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v3, ".um_ncc_init_beacon_987654321"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    sput p1, Lcom/umeng/analytics/pro/cn;->f:I

    .line 4
    const-string p1, "[ncc]: Beacon file exists, work mode set to init dispatch"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    sput v1, Lcom/umeng/analytics/pro/cn;->f:I

    .line 6
    const-string p1, "[ncc]: Beacon file not exists, work mode set to foreground dispatch (default)"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 7
    :goto_0
    sput v1, Lcom/umeng/analytics/pro/cn;->f:I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ncc]: Error checking beacon file, work mode set to foreground dispatch (default): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Lorg/json/JSONObject;
    .locals 3

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genUmc()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/ay;->b([BLjava/io/OutputStream;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genSin()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    .line 10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "MobclickRT"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v2, ".um_ncc_init_beacon_987654321"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 4
    const-string p1, "[ncc]: Beacon file created"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ncc]: Error creating beacon file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v2, ".um_ncc_init_beacon_987654321"

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 21
    .line 22
    .line 23
    const-string p1, "[ncc]: Beacon file deleted"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "[ncc]: Error deleting beacon file: "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/umeng/analytics/pro/cn$4;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cn$4;-><init>(Lcom/umeng/analytics/pro/cn;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "newver"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lorg/json/JSONObject;
    .locals 3

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :try_start_0
    const-string v1, "id"

    const-string v2, "$$_umc_ev2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "ts"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    const-string p4, "tt"

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string p1, "flag"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string p1, "ss"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const-string p1, "cd"

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    .line 141
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 142
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const-string p3, ""

    invoke-static {p1, p2, p3}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 144
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 145
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cn;->c(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/umeng/analytics/pro/cn$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/pro/cn$1;-><init>(Lcom/umeng/analytics/pro/cn;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/cg;)V

    .line 4
    sget p1, Lcom/umeng/analytics/pro/cn;->f:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    new-instance p1, Lcom/umeng/analytics/pro/cn$2;

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/cn$2;-><init>(Lcom/umeng/analytics/pro/cn;)V

    invoke-static {p1}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/cj$a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x131

    const-wide/16 v8, 0x0

    if-eq v2, v5, :cond_31

    const/16 v5, 0x132

    if-eq v2, v5, :cond_30

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_13

    .line 179
    :pswitch_0
    :try_start_0
    const-string v2, "MobclickRT"

    const-string v4, "[ncc]: recv PROCESS_ONE_TASK msg."

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_32

    .line 181
    check-cast v0, Lorg/json/JSONObject;

    .line 182
    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 183
    const-string v4, "batchParams"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: batchParams is null"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 185
    :cond_0
    const-string v4, "batchId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string v5, "appsPerBatch"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 187
    const-string v7, "batchInterval"

    const/16 v8, 0x14

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 188
    const-string v8, "processedCount"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 189
    const-string v9, "currentBatchIndex"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 190
    const-string v10, "totalBatches"

    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 191
    sget-object v11, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 192
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move-object v3, v4

    goto/16 :goto_2

    .line 193
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v12, :cond_5

    .line 194
    :try_start_1
    const-string v12, "MobclickRT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 p1, 0x3e8

    const-string v13, "[ncc]: batch processing completed for batchId: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v12, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    invoke-interface {v12, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v9, 0x1

    if-ge v12, v10, :cond_4

    .line 196
    sget-object v13, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 197
    sget-object v13, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 198
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "batch_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/umeng/analytics/pro/cn;->d:I

    add-int/2addr v15, v6

    sput v15, Lcom/umeng/analytics/pro/cn;->d:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 199
    sget-object v15, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    invoke-interface {v15, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v15, "batchId"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v14, "appsPerBatch"

    invoke-virtual {v13, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v14, "batchInterval"

    invoke-virtual {v13, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v14, "processedCount"

    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v14, "currentBatchIndex"

    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 206
    const-string v12, "totalBatches"

    invoke-virtual {v13, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 208
    const-string v14, "batchParams"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v13, "currentIndex"

    invoke-virtual {v12, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    .line 211
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v13, v3

    move-object/from16 v20, v4

    int-to-long v3, v7

    mul-long v18, v3, p1

    const/16 v15, 0xcc

    move-object/from16 v17, v12

    .line 212
    :try_start_2
    invoke-static/range {v14 .. v19}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move v13, v3

    goto/16 :goto_3

    :cond_3
    move v13, v3

    move-object/from16 v20, v4

    goto :goto_0

    :cond_4
    move v13, v3

    move-object/from16 v20, v4

    .line 213
    const-string v3, "MobclickRT"

    const-string v4, "[ncc]: all batches processing completed"

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget v3, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne v3, v6, :cond_6

    .line 215
    sget-object v3, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    sput-boolean v13, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 217
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0

    :cond_5
    move v13, v3

    move-object/from16 v20, v4

    const-wide/16 p1, 0x3e8

    .line 218
    :cond_6
    :goto_0
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/pro/co;

    .line 219
    invoke-virtual {v3}, Lcom/umeng/analytics/pro/co;->b()Lorg/json/JSONObject;

    move-result-object v4

    add-int/2addr v8, v6

    .line 220
    const-string v12, "processedCount"

    invoke-virtual {v0, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    .line 221
    const-string v3, "actionName"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    const-string v8, "MobclickRT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ncc]: processing task: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8, v3, v4}, Lcom/umeng/analytics/pro/cn;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 224
    invoke-direct {v1, v3}, Lcom/umeng/analytics/pro/cn;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual {v3}, Lcom/umeng/analytics/pro/co;->a()Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string v4, "MobclickRT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ncc]: action "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not allowed to execute, skip"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/2addr v2, v6

    .line 227
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 228
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 229
    const-string v4, "batchParams"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v0, "currentIndex"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v2

    const/16 v4, 0xcc

    .line 233
    invoke-static {v0, v4, v2, v3}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    return-void

    .line 234
    :cond_8
    const-string v0, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ncc]: batch processing completed for batchId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v9, v6

    if-ge v9, v10, :cond_9

    .line 236
    sget-object v0, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_32

    .line 237
    sget-object v0, Lcom/umeng/analytics/pro/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/umeng/analytics/pro/cn;->d:I

    add-int/2addr v3, v6

    sput v3, Lcom/umeng/analytics/pro/cn;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    sget-object v3, Lcom/umeng/analytics/pro/cn;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    const-string v3, "batchId"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v2, "appsPerBatch"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string v2, "batchInterval"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v2, "processedCount"

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v2, "currentBatchIndex"

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string v2, "totalBatches"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 248
    const-string v3, "batchParams"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v0, "currentIndex"

    const/4 v13, 0x0

    invoke-virtual {v2, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    .line 251
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v16

    int-to-long v3, v7

    mul-long v18, v3, p1

    const/16 v15, 0xcc

    move-object/from16 v17, v2

    .line 252
    invoke-static/range {v14 .. v19}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    return-void

    .line 253
    :cond_9
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: all batches processing completed"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget v0, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne v0, v6, :cond_32

    .line 255
    sget-object v2, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x0

    .line 256
    :try_start_5
    sput-boolean v13, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 257
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0

    .line 258
    :goto_2
    const-string v0, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: actions is null or empty for batchId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 259
    :goto_3
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: PROCESS_ONE_TASK error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget v0, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne v0, v6, :cond_32

    .line 261
    sget-object v2, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v2

    const/4 v13, 0x0

    .line 262
    :try_start_7
    sput-boolean v13, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 263
    monitor-exit v2

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 264
    :pswitch_1
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv PROCESS_WHEN_TO_FRONT msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "umc_cfg"

    invoke-static {v2}, Lcom/umeng/ccg/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 266
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: Local switch of [umc_cfg] is off, ignore this command."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_a
    invoke-static {}, Lcom/umeng/analytics/pro/ck;->b()I

    move-result v2

    if-lez v2, :cond_b

    .line 268
    const-string v0, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: Ignore act up action because act up flag value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_b
    sget v2, Lcom/umeng/analytics/pro/cn;->f:I

    if-eq v2, v6, :cond_c

    .line 270
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: Work mode is not foreground dispatch, ignore PROCESS_WHEN_TO_FRONT"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v2, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v2

    const/4 v13, 0x0

    .line 272
    :try_start_8
    sput-boolean v13, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 273
    monitor-exit v2

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 274
    :cond_c
    :try_start_9
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_32

    .line 275
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/umeng/analytics/pro/cx;->a(Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/cx;

    move-result-object v0

    .line 276
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 277
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: invalid config data, just stop dispatch."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_6
    move-exception v0

    goto :goto_6

    .line 278
    :cond_d
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cx;->d()I

    move-result v2

    if-ne v2, v6, :cond_e

    .line 279
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: config status is 1, not allow dispatch when foreground"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_e
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object v2

    if-nez v2, :cond_f

    .line 281
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: config data is null when to foreground"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_f
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cx$a;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 283
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_5

    .line 284
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/analytics/pro/cx$b;

    .line 286
    invoke-direct {v1, v0, v5}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx;Lcom/umeng/analytics/pro/cx$b;)Lcom/umeng/analytics/pro/co;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 287
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 288
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 289
    invoke-direct {v1, v2, v4}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx$a;Ljava/util/ArrayList;)V

    goto/16 :goto_13

    .line 290
    :cond_13
    :goto_5
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: targets is empty when to foreground"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    return-void

    .line 291
    :goto_6
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: PROCESS_WHEN_TO_FRONT error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 292
    :pswitch_2
    :try_start_a
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv PROCESS_WHEN_INIT msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "umc_cfg"

    invoke-static {v2}, Lcom/umeng/ccg/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 294
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: Local switch of [umc_cfg] is off, ignore this command."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_7
    move-exception v0

    goto/16 :goto_8

    .line 295
    :cond_14
    sget v2, Lcom/umeng/analytics/pro/cn;->f:I

    if-eqz v2, :cond_15

    .line 296
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: Work mode is not init dispatch, ignore PROCESS_WHEN_INIT"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 297
    :cond_15
    invoke-static {}, Lcom/umeng/analytics/pro/ck;->b()I

    move-result v2

    if-lez v2, :cond_16

    .line 298
    const-string v0, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: Ignore act up action because act up flag value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 299
    :cond_16
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_32

    .line 300
    check-cast v0, Lorg/json/JSONObject;

    .line 301
    invoke-static {v0}, Lcom/umeng/analytics/pro/cx;->a(Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/cx;

    move-result-object v0

    .line 302
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 303
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: invalid config data, just stop dispatch."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 304
    :cond_17
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cx;->d()I

    move-result v2

    if-ne v2, v6, :cond_18

    .line 305
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: config status is 1, not allow dispatch when INIT"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_18
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object v2

    if-nez v2, :cond_19

    .line 307
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: config data is null when INIT, just stop dispatch."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cx;->e()Lcom/umeng/analytics/pro/cx$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/cx$a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/analytics/pro/cx$b;

    .line 310
    invoke-direct {v1, v0, v5}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx;Lcom/umeng/analytics/pro/cx$b;)Lcom/umeng/analytics/pro/co;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 311
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 312
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 313
    invoke-direct {v1, v2, v3}, Lcom/umeng/analytics/pro/cn;->a(Lcom/umeng/analytics/pro/cx$a;Ljava/util/ArrayList;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    return-void

    .line 314
    :goto_8
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: PROCESS_WHEN_INIT error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 315
    :pswitch_3
    :try_start_b
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv PARSE_CONFIG msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_32

    .line 316
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_32

    .line 317
    check-cast v0, Lorg/json/JSONObject;

    .line 318
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 319
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    :catchall_8
    move-exception v0

    goto/16 :goto_10

    :cond_1c
    move v2, v6

    :goto_9
    if-ne v2, v6, :cond_1d

    .line 320
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: status is 1, don\'t dispatch."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_1d
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 322
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 323
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_27

    .line 324
    const-string v3, "actWhen"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 325
    const-string v3, "actWhen"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 326
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 327
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 328
    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/cn;->d(Landroid/content/Context;)V

    .line 329
    :cond_1e
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: Init dispatch mode, beacon file will be created"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 330
    :cond_1f
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 331
    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/cn;->e(Landroid/content/Context;)V

    .line 332
    :cond_20
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: Foreground dispatch mode, beacon file will be deleted"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_a

    .line 333
    :catch_0
    :try_start_d
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 334
    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/cn;->e(Landroid/content/Context;)V

    .line 335
    :cond_21
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: Foreground dispatch mode (default), beacon file will be deleted"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 336
    :cond_22
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 337
    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/cn;->e(Landroid/content/Context;)V

    .line 338
    :cond_23
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: Foreground dispatch mode (default), beacon file will be deleted"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_a
    sget-object v2, Lcom/umeng/analytics/pro/cn;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 340
    :try_start_e
    sput-object v0, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    .line 341
    sget v0, Lcom/umeng/analytics/pro/cn;->f:I

    if-nez v0, :cond_24

    sget-object v0, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    .line 342
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 343
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v9

    sget-object v10, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    const-wide/16 v11, 0x7d0

    const/16 v8, 0xca

    .line 344
    invoke-static/range {v7 .. v12}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_f

    .line 345
    :cond_24
    :goto_b
    sget v0, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne v0, v6, :cond_26

    sget-boolean v0, Lcom/umeng/analytics/pro/cn;->g:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_26

    .line 346
    sget-object v3, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 347
    :try_start_f
    sget-boolean v0, Lcom/umeng/analytics/pro/cn;->h:Z

    if-nez v0, :cond_25

    .line 348
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 349
    sput-boolean v6, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 350
    const-string v4, "MobclickRT"

    const-string v5, "[ncc]: Supplement sending PROCESS_WHEN_TO_FRONT msg after PARSE_CONFIG"

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v4

    sget-object v5, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    const/16 v6, 0xcb

    .line 352
    invoke-static {v0, v6, v4, v5}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_d

    .line 353
    :cond_25
    :goto_c
    monitor-exit v3

    goto :goto_e

    :goto_d
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :try_start_10
    throw v0

    .line 354
    :cond_26
    :goto_e
    monitor-exit v2

    goto/16 :goto_13

    :goto_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    throw v0

    .line 355
    :cond_27
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: empty config value, don\'t dispatch."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_28
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: no data field, don\'t dispatch."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    return-void

    .line 357
    :goto_10
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: PARSE_CONFIG error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 358
    :pswitch_4
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv IMPRINT_NEWVER_CHANGED msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_32

    .line 359
    :try_start_12
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 360
    check-cast v0, Ljava/lang/String;

    .line 361
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: newver value changed newver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cn;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    .line 363
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[imprint] process error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_5
    move v13, v3

    if-eqz v0, :cond_32

    .line 364
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_32

    .line 365
    :try_start_13
    check-cast v0, Lorg/json/JSONObject;

    .line 366
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 367
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_2a

    .line 368
    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 369
    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 370
    invoke-static {v0}, Lcom/umeng/analytics/pro/ck;->b(Lorg/json/JSONObject;)V

    move v3, v6

    goto :goto_11

    :cond_29
    move v3, v13

    :goto_11
    if-nez v3, :cond_2a

    .line 371
    invoke-static {v5}, Lcom/umeng/analytics/pro/ck;->b(Lorg/json/JSONObject;)V

    .line 372
    :cond_2a
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cn;->f(Landroid/content/Context;)V

    .line 373
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "newver"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc]: manual check imprint newver value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cn;->a(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    return-void

    .line 376
    :pswitch_6
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: recv LOAD_CONFIG msg."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6a

    .line 377
    :try_start_14
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/cn;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 378
    invoke-direct {v1, v5}, Lcom/umeng/analytics/pro/cn;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 379
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 380
    :cond_2b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 381
    :try_start_15
    const-string v3, "result"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_2c

    .line 382
    const-string v3, "config"

    :goto_12
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 383
    :catchall_c
    :cond_2c
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 384
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v4

    .line 385
    invoke-static {v3, v0, v4, v2}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 386
    :catchall_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 387
    :try_start_16
    const-string v3, "result"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_2c

    .line 388
    const-string v3, "config"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    goto :goto_12

    .line 389
    :pswitch_7
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: recv FETCH_FAILED msg."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 390
    :pswitch_8
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv FETCH_SUCCESS msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_32

    .line 392
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_32

    .line 393
    :try_start_17
    check-cast v0, Lorg/json/JSONObject;

    .line 394
    const-string v3, "version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 396
    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/analytics/pro/cn;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 397
    :cond_2d
    const-string v0, "MobclickRT"

    const-string v2, "[ncc]: version field missing."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    goto/16 :goto_13

    .line 398
    :pswitch_9
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv FETCH_RESPONSE msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x68

    if-eqz v0, :cond_2f

    .line 399
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_2f

    .line 400
    :try_start_18
    check-cast v0, Lorg/json/JSONObject;

    .line 401
    const-string v3, "config"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 402
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cn;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 403
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 404
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v3

    const/16 v4, 0x67

    .line 405
    invoke-static {v2, v4, v3, v0}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    return-void

    .line 406
    :cond_2e
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v3

    .line 408
    invoke-static {v0, v2, v3, v5}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    return-void

    .line 409
    :cond_2f
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 410
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v3

    .line 411
    invoke-static {v0, v2, v3, v5}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    return-void

    :pswitch_a
    if-eqz v0, :cond_32

    .line 412
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 413
    check-cast v0, Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/umeng/analytics/pro/ap;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 415
    :try_start_19
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ncc] send request. body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v2, Lcom/umeng/analytics/pro/cy;

    const-string v3, "https://ulogs.umeng.com/push_cloud_activation"

    invoke-direct {v2, v3, v0}, Lcom/umeng/analytics/pro/cy;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v8, v9, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    goto :goto_13

    .line 417
    :cond_30
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv ACT_UP_EVENT msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :try_start_1a
    check-cast v0, Lcom/umeng/analytics/pro/cn$a;

    .line 419
    iget-object v2, v0, Lcom/umeng/analytics/pro/cn$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/umeng/analytics/pro/cn$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/umeng/analytics/pro/cn$a;->c:Ljava/lang/String;

    iget-wide v5, v0, Lcom/umeng/analytics/pro/cn$a;->d:J

    iget-boolean v7, v0, Lcom/umeng/analytics/pro/cn$a;->e:Z

    invoke-virtual/range {v1 .. v7}, Lcom/umeng/analytics/pro/cn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 420
    const-string v3, "MobclickRT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ncc]: umc_cfg: upload b a. cd_flag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/umeng/analytics/pro/cn$a;->e:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v0, Lcom/umeng/analytics/pro/ar;

    const-string v3, "https://cnlogs.umeng.com/ext_event"

    invoke-direct {v0, v3, v2}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v8, v9, v2}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v2, 0x7d0

    .line 422
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    return-void

    .line 423
    :cond_31
    const-string v2, "MobclickRT"

    const-string v3, "[ncc]: recv GET_UMC_PROCESS_RESULT msg."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :try_start_1b
    check-cast v0, Lcom/umeng/analytics/pro/cn$b;

    .line 425
    iget-object v2, v0, Lcom/umeng/analytics/pro/cn$b;->a:Ljava/lang/String;

    .line 426
    iget v3, v0, Lcom/umeng/analytics/pro/cn$b;->b:I

    .line 427
    iget v0, v0, Lcom/umeng/analytics/pro/cn$b;->c:I

    .line 428
    invoke-direct {v1, v2, v3, v0}, Lcom/umeng/analytics/pro/cn;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 429
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    const-string v3, "https://cnlogs.umeng.com/ext_event"

    invoke-direct {v2, v3, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v8, v9, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    :catchall_e
    :cond_32
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 28
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".um_ncc_local_config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    .line 30
    monitor-exit p0

    return-object v0

    .line 31
    :cond_0
    :try_start_1
    const-string v1, ".um_ncc_local_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 33
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    move-result-object v1

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    :try_start_3
    invoke-static {p1}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-object p1, v0

    :catchall_2
    :try_start_4
    invoke-static {p1}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 36
    :catchall_3
    :goto_0
    monitor-exit p0

    return-object v0
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/umeng/analytics/pro/cn;->g:Z

    .line 2
    const-string v1, "MobclickRT"

    const-string v2, "[ncc]: App switched to foreground"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v1, Lcom/umeng/analytics/pro/cn;->f:I

    if-ne v1, v0, :cond_3

    .line 4
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget-object v3, Lcom/umeng/analytics/pro/cn;->m:Ljava/lang/Object;

    monitor-enter v3

    .line 6
    :try_start_0
    sget-object v4, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 7
    sget-object v2, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    sget-boolean v4, Lcom/umeng/analytics/pro/cn;->h:Z

    if-eqz v4, :cond_0

    .line 9
    const-string v0, "MobclickRT"

    const-string v1, "[ncc]: Foreground processing is already in progress, ignore new foreground event"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_3
    sput-boolean v0, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 12
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :try_start_4
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/cn;->l:Lorg/json/JSONObject;

    const/16 v4, 0xcb

    .line 14
    invoke-static {v1, v4, v0, v2}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 15
    :goto_0
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 16
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 17
    :try_start_7
    sput-boolean v2, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 18
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 19
    :goto_1
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :catchall_2
    move-exception v1

    .line 20
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    .line 21
    :goto_2
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    .line 22
    :cond_2
    sget-object v1, Lcom/umeng/analytics/pro/cn;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_b
    sput-boolean v2, Lcom/umeng/analytics/pro/cn;->h:Z

    .line 24
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 25
    :cond_3
    sget v1, Lcom/umeng/analytics/pro/cn;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 26
    sput v0, Lcom/umeng/analytics/pro/cn;->f:I

    .line 27
    const-string v0, "MobclickRT"

    const-string v1, "[ncc]: Work mode set to foreground dispatch"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 2

    .line 9
    const-string v0, "MobclickRT"

    const-string v1, "[ncc]: App switched to background"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
