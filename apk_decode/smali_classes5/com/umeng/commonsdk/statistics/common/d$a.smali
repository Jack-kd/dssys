.class Lcom/umeng/commonsdk/statistics/common/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ins_referrer"


# instance fields
.field private b:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/common/d$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    move-object v6, p3

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_0

    .line 27
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p2

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p2, v0

    move-object p1, v1

    .line 30
    :goto_1
    :try_start_4
    const-string p3, "MobclickRT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[iReferrer] failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->se(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_3
    :cond_1
    :goto_2
    return-object v1

    :catchall_4
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_2

    .line 31
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 32
    :catchall_5
    :cond_2
    throw p2
.end method

.method private a(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 6

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 38
    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[iReferrer] failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobclickRT"

    invoke-static {v4, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->se(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()Z
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 33
    const-string v0, "MobclickRT"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[iReferrer] pi: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    .line 35
    :catchall_0
    :cond_0
    const-string p1, "[iReferrer] pi: null"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private varargs a([Ljava/lang/String;)Z
    .locals 7

    .line 40
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 41
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 42
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v3
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    const-string v1, "[iReferrer] start"

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->f()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/umeng/analytics/pro/bt;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    const-string v1, "honor"

    .line 7
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    const-string v1, "xiaomi"

    .line 10
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    const-string v1, "vivo"

    .line 13
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    const-string v1, "samsung"

    .line 16
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_4
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    const-string v1, "oppo"

    .line 19
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move-object p1, v1

    goto :goto_1

    .line 20
    :cond_6
    :goto_0
    const-string v1, "huawei"

    .line 21
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 23
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const-string v6, "source"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "referrer"

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[iReferrer] get:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 28
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[iReferrer] failed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->se(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[iReferrer] result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cost: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private b()Z
    .locals 3

    .line 30
    const-string v0, "REDMI"

    const-string v1, "BLACKSHARK"

    const-string v2, "XIAOMI"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0x3b

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x3at
        0x2ft
        0x2ft
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x68t
        0x69t
        0x68t
        0x6ft
        0x6et
        0x6ft
        0x72t
        0x2et
        0x61t
        0x70t
        0x70t
        0x6dt
        0x61t
        0x72t
        0x6bt
        0x65t
        0x74t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x6dt
        0x6ft
        0x6et
        0x64t
        0x61t
        0x74t
        0x61t
        0x2ft
        0x69t
        0x74t
        0x65t
        0x6dt
        0x2ft
        0x77t
        0x69t
        0x73t
        0x65t
        0x70t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
    .end array-data
.end method

.method private c()Z
    .locals 1

    .line 7
    const-string v0, "VIVO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0x30

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x3at
        0x2ft
        0x2ft
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x68t
        0x75t
        0x61t
        0x77t
        0x65t
        0x69t
        0x2et
        0x61t
        0x70t
        0x70t
        0x6dt
        0x61t
        0x72t
        0x6bt
        0x65t
        0x74t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x6dt
        0x6ft
        0x6et
        0x64t
        0x61t
        0x74t
        0x61t
        0x2ft
        0x69t
        0x74t
        0x65t
        0x6dt
        0x2ft
        0x35t
    .end array-data
.end method

.method private d()Z
    .locals 3

    .line 7
    const-string v0, "REALME"

    const-string v1, "ONEPLUS"

    const-string v2, "OPPO"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0x43

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0, p1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x3at
        0x2ft
        0x2ft
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x6dt
        0x61t
        0x72t
        0x6bt
        0x65t
        0x74t
        0x2et
        0x70t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
        0x2et
        0x44t
        0x69t
        0x72t
        0x65t
        0x63t
        0x74t
        0x4dt
        0x61t
        0x69t
        0x6ct
        0x50t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
        0x2ft
        0x72t
        0x65t
        0x66t
        0x65t
        0x72t
        0x72t
        0x65t
        0x72t
        0x2ft
        0x76t
        0x33t
    .end array-data
.end method

.method private e()Z
    .locals 1

    .line 6
    const-string v0, "SAMSUNG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private f(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v3, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "read_channel"

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1

    .line 13
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[iReferrer] failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->se(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x3at
        0x2ft
        0x2ft
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x62t
        0x62t
        0x6bt
        0x2et
        0x61t
        0x70t
        0x70t
        0x73t
        0x74t
        0x6ft
        0x72t
        0x65t
        0x2et
        0x70t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
        0x2et
        0x61t
        0x70t
        0x70t
        0x73t
        0x74t
        0x61t
        0x74t
        0x75t
        0x73t
    .end array-data
.end method

.method private f()Z
    .locals 1

    .line 14
    const-string v0, "HUAWEI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private g(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    const/16 v0, 0x29

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "getTrackInfo"

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1

    .line 11
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[iReferrer] failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->se(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x3at
        0x2ft
        0x2ft
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x68t
        0x65t
        0x79t
        0x74t
        0x61t
        0x70t
        0x2et
        0x6dt
        0x61t
        0x72t
        0x6bt
        0x65t
        0x74t
        0x2et
        0x54t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x50t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
    .end array-data
.end method

.method private g()Z
    .locals 1

    .line 12
    const-string v0, "HONOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private h(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, p1, v1}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0, p1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/d$a;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    return-object v2

    .line 34
    nop

    .line 35
    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x3at
        0x2ft
        0x2ft
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x73t
        0x65t
        0x63t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x61t
        0x70t
        0x70t
        0x2et
        0x73t
        0x61t
        0x6dt
        0x73t
        0x75t
        0x6et
        0x67t
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x72t
        0x65t
        0x66t
        0x65t
        0x72t
        0x72t
        0x65t
        0x72t
    .end array-data
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    return-object p1

    :cond_0
    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    return-object v1

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    const-string v2, "ins_referrer"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "ref"

    const/4 v5, 0x1

    const-string v6, "ver"

    const-string v7, "MobclickRT"

    const/4 v8, 0x2

    if-eqz v3, :cond_5

    .line 8
    new-instance v9, Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[iReferrer] cache: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 11
    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_5

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    if-nez v3, :cond_3

    .line 13
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iput-object v3, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    .line 14
    :cond_3
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_4

    return-object v1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 16
    :catchall_0
    :cond_5
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    .line 17
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[iReferrer] failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->se(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Lorg/json/JSONArray;

    :cond_6
    return-object v1
.end method
