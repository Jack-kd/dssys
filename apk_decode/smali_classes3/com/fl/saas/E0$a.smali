.class Lcom/fl/saas/E0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/E0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/E0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/E0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/E0$a;->a:Lcom/fl/saas/E0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/E0$a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/E0$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 13

    .line 2
    const-string v0, ""

    iget-object v1, p0, Lcom/fl/saas/E0$a;->a:Lcom/fl/saas/E0;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/fl/saas/E0;->a(Lcom/fl/saas/E0;I)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    :try_start_0
    invoke-static {p1}, Lcom/fl/saas/l0;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://t.funlinkads.com/log/initialization init_response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/String;)V

    const-string v1, "app_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    sput-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->appList:Lorg/json/JSONArray;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_f

    :cond_0
    :goto_0
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    const-string v2, "collect_webview_wakeup"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setCollectWebviewWakeup(I)V

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    const-string v2, "webview_wakeup_limit"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setWebviewWakeupLimit(I)V

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    const-string v2, "quick_app_block_ratio"

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setQuickAppBlockRatio(D)V

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    const-string v2, "quick_app_interception_type"

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setQuickAppInterceptionType(I)V

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    const-string v2, "quick_app_freq_day"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setQuickAppFreqDay(I)V

    const-string v1, "whitelist_headers"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setWhitelistHeaders(Ljava/util/List;)V

    :cond_1
    const-string v1, "device_permisson_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_b

    :try_start_1
    new-instance v2, Lcom/fl/saas/r0;

    invoke-direct {v2}, Lcom/fl/saas/r0;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "androidId"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "mac"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "iemi"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "imsi"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "oaid"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "bootId"

    invoke-virtual {v5, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "sensor"

    invoke-virtual {v5, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "location"

    invoke-virtual {v5, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    sput-boolean v5, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseLocation:Z

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->a(Z)V

    if-ne v6, v4, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->e(Z)V

    if-ne v7, v4, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->c(Z)V

    if-ne v9, v4, :cond_6

    move v1, v4

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->f(Z)V

    if-ne v10, v4, :cond_7

    move v1, v4

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->b(Z)V

    if-ne v11, v4, :cond_8

    move v1, v4

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->g(Z)V

    if-ne v8, v4, :cond_9

    move v1, v4

    goto :goto_8

    :cond_9
    move v1, v3

    :goto_8
    invoke-virtual {v2, v1}, Lcom/fl/saas/r0;->d(Z)V

    sput-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    sget-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSensor:Z

    if-nez v1, :cond_a

    if-ne v11, v4, :cond_a

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->checkAccelerometerSensor(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/fl/saas/T0;->b()Lcom/fl/saas/T0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fl/saas/T0;->a()V

    goto :goto_9

    :catchall_1
    move-exception v1

    goto :goto_a

    :cond_a
    :goto_9
    invoke-static {}, Lcom/fl/saas/adx/util/OaidUtils;->isIsCanUseOAID()Z

    move-result v1

    if-nez v1, :cond_b

    if-ne v9, v4, :cond_b

    invoke-static {}, Lcom/fl/saas/adx/util/OaidUtils;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :goto_a
    :try_start_2
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_b
    :goto_b
    const-string v1, "keyword_ad_sts"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/fl/saas/E0$a;->a:Lcom/fl/saas/E0;

    const-string v5, "has_bg_wake_up"

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/fl/saas/E0;->b(Lcom/fl/saas/E0;I)I

    if-ne v1, v4, :cond_c

    new-instance v1, Lcom/fl/saas/d0;

    invoke-direct {v1}, Lcom/fl/saas/d0;-><init>()V

    const-string v2, "keyword_url"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/d0;->c(Ljava/lang/String;)V

    const-string v2, "keyword_regex"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/d0;->b(Ljava/lang/String;)V

    const-string v2, "device_keyword_freq"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/d0;->a(I)V

    const-string v2, "device_keyword_interval"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/d0;->b(I)V

    const-string v2, "keyword_use_time_range"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/d0;->c(I)V

    const-string v2, "kcs"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fl/saas/d0;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/e0;->a()Lcom/fl/saas/e0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fl/saas/e0;->a(Lcom/fl/saas/d0;)V

    :cond_c
    const-string v0, "quickapp_block_domains"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/i1;

    invoke-direct {v2}, Lcom/fl/saas/i1;-><init>()V

    invoke-static {v0, v2}, Lcom/fl/saas/c0;->a(Lorg/json/JSONArray;Landroidx/arch/core/util/Function;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fl/saas/Y;->a(Ljava/util/List;)V

    const-string v0, "quickapp_whitelist_domains"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/j1;

    invoke-direct {v2}, Lcom/fl/saas/j1;-><init>()V

    invoke-static {v0, v2}, Lcom/fl/saas/c0;->a(Lorg/json/JSONArray;Landroidx/arch/core/util/Function;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fl/saas/Y;->b(Ljava/util/List;)V

    const-string v0, "filling_timing"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    const-string v0, "enable_quick_app"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setEnableQuickApp(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "quick_app_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_2
    move-exception p1

    goto :goto_e

    :cond_d
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->addListQuickKey(Ljava/util/List;)V

    :cond_e
    const-string v0, "quickapp_match_rule_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_10

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Lcom/fl/saas/B0;

    invoke-direct {v2}, Lcom/fl/saas/B0;-><init>()V

    const-string v4, "prefix"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/fl/saas/B0;->b(Ljava/lang/String;)V

    const-string v4, "contains_str"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fl/saas/B0;->a(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_10
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->addListQuickMatch(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_10

    :goto_e
    :try_start_4
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_10

    :goto_f
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_11
    :goto_10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u4e0a\u62a5\u5931\u8d25:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "FLSDK"

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/fl/saas/E0$a;->a:Lcom/fl/saas/E0;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    invoke-static {p1, v0}, Lcom/fl/saas/E0;->a(Lcom/fl/saas/E0;I)I

    .line 31
    .line 32
    .line 33
    return-void
.end method
