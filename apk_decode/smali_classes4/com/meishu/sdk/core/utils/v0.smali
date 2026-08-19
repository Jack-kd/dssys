.class public Lcom/meishu/sdk/core/utils/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/v0$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/utils/v0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/gson/Gson;

.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/utils/RecordBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/meishu/sdk/core/utils/v0;->b:Lcom/google/gson/Gson;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/utils/RecordBean;",
            ">;"
        }
    .end annotation

    .line 35
    const-string v0, "record_data"

    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 36
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    sget-object v1, Lcom/meishu/sdk/core/utils/v0;->b:Lcom/google/gson/Gson;

    const-class v2, Lcom/meishu/sdk/core/utils/RecordMapBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/RecordMapBean;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/RecordMapBean;->getDateRecordMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 42
    const-string v2, "%04d-%02d-%02d"

    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 44
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    .line 45
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/v0;->a()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/utils/RecordBean;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/meishu/sdk/core/utils/RecordBean;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/RecordBean;-><init>()V

    .line 5
    :cond_1
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/utils/RecordBean;->setPid(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "last_click_time"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastClickTime(J)V

    .line 8
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastDynamicClickTime(J)V

    .line 11
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastClickTime(J)V

    .line 12
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p1

    const-string v5, "last_dynamic_time"

    invoke-virtual {p1, v5, v3, v4}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 13
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 14
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastDynamicLoadedTime(J)V

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/RecordBean;->getDynamicClickNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/utils/RecordBean;->setDynamicClickNum(I)V

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/RecordBean;->getClickNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/utils/RecordBean;->setClickNum(I)V

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/RecordBean;->getExposureNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/utils/RecordBean;->setExposureNum(I)V

    goto :goto_0

    .line 18
    :pswitch_6
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/RecordBean;->getLoadSucc()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/utils/RecordBean;->setLoadSucc(I)V

    goto :goto_0

    .line 19
    :pswitch_7
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/RecordBean;->getLoadNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/utils/RecordBean;->setLoadNum(I)V

    .line 20
    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/utils/RecordBean;",
            ">;)V"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    const-string v3, "GMT+8:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/meishu/sdk/core/utils/v0;->c:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/meishu/sdk/core/utils/v0;->c:Ljava/util/HashMap;

    .line 29
    :cond_0
    sget-object v1, Lcom/meishu/sdk/core/utils/v0;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance p0, Lcom/meishu/sdk/core/utils/RecordMapBean;

    invoke-direct {p0}, Lcom/meishu/sdk/core/utils/RecordMapBean;-><init>()V

    .line 31
    sget-object v0, Lcom/meishu/sdk/core/utils/v0;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/utils/RecordMapBean;->setDateRecordMap(Ljava/util/HashMap;)V

    .line 32
    sget-object v0, Lcom/meishu/sdk/core/utils/v0;->b:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    const-string v1, "record_data"

    invoke-virtual {v0, v1, p0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
