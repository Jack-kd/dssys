.class public final Lcom/byazt/wp/jx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0xcf,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CANCELED:I = -0x4

.field public static final DOWNLOAD_COMPLETE_HANDLE:I = 0xb

.field public static final FAILED:I = -0x1

.field public static final START:I = 0x2

.field public static final SUCCESSED:I = -0x3

.field public static final TYPE_ACTIVE:I = 0x1

.field public static final TYPE_COMPLETE:I = 0x3

.field public static final TYPE_PREPARE:I = 0x4

.field public static final TYPE_WAITING:I = 0x2

.field public static volatile hp:Lcom/byazt/wp/jx;


# instance fields
.field public jx:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstance()Lcom/byazt/wp/jx;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/wp/jx;->hp:Lcom/byazt/wp/jx;

    .line 2
    .line 3
    return-object v0
.end method

.method private hp(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 72
    invoke-static {}, Lcom/byazt/wp/hp;->b()I

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 73
    invoke-static {}, Lcom/byazt/wp/hp;->cx()I

    move-result p1

    return p1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 74
    invoke-static {}, Lcom/byazt/wp/hp;->b()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 75
    :cond_4
    :goto_0
    invoke-static {}, Lcom/byazt/wp/hp;->ns()I

    move-result p1

    return p1
.end method

.method private hp(Landroid/content/Context;Landroid/util/Pair;I)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 68
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0xc000000

    if-eqz v0, :cond_0

    .line 69
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p3, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p3, p2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private hp(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/byazt/wp/jx;->hp(Landroid/content/Context;JZ)Landroid/util/Pair;

    move-result-object p4

    .line 50
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string p1, "extra_click_download_ids"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string p1, "extra_click_download_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string p1, "extra_package_name"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object p1, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-direct {p0, p1, p4, p3}, Lcom/byazt/wp/jx;->hp(Landroid/content/Context;Landroid/util/Pair;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private hp(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/byazt/wp/jx;->hp(Landroid/content/Context;JZ)Landroid/util/Pair;

    move-result-object p4

    .line 58
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string p1, "extra_click_download_ids"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string p1, "extra_click_download_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string p1, "extra_package_name"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string p1, "extra_tag"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string p1, "extra_value"

    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string p1, "extra_log_extra"

    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-direct {p0, p1, p4, p3}, Lcom/byazt/wp/jx;->hp(Landroid/content/Context;Landroid/util/Pair;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private hp(Landroid/content/Context;JZ)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 45
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/byazt/wp/ApiDownloadHandleNotificationActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    new-instance p1, Landroid/util/Pair;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 47
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/byazt/wp/ApiDownloadHandlerService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    new-instance p1, Landroid/util/Pair;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private hp(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 7
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9
    :catch_0
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private hp(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 10
    const-string v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/wp/jx;->jx(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 12
    const-string v1, "remote_views"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    const-string v2, "builder_content_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    const-string v3, "notification_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 15
    const-string v4, "channel_id"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    const-string v5, "download_status"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 17
    invoke-direct {p0, v4}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 18
    const-string v6, "first_time"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 19
    invoke-virtual {v4, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    const-string v6, "notification_group"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 21
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 22
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    :cond_0
    new-instance v6, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v6, -0x3

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    const/4 v10, 0x2

    if-ne v3, v10, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v8, :cond_4

    .line 25
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    if-ne v5, v6, :cond_2

    .line 26
    const-string v9, "auto_cancel"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    instance-of v9, p1, Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    :cond_2
    const-string p1, "complete_click_content_intent"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    const-string p1, "hide_click_content_intent"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 33
    :cond_3
    :goto_0
    const-string p1, "apa_click_content_intent"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    :goto_1
    if-ne v3, v8, :cond_5

    if-ne v5, v6, :cond_5

    .line 36
    instance-of p1, v2, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 37
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    :cond_5
    const-string p1, "builder_small_icon"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 40
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 41
    :cond_6
    check-cast v1, Landroid/widget/RemoteViews;

    .line 42
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 43
    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 44
    const-string v1, "notification"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private hp(Ljava/lang/Object;)Z
    .locals 1

    .line 71
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static instance(Landroid/content/Context;)Lcom/byazt/wp/jx;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/wp/jx;->hp:Lcom/byazt/wp/jx;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/wp/jx;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/wp/jx;->hp:Lcom/byazt/wp/jx;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/wp/jx;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/wp/jx;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/wp/jx;->hp:Lcom/byazt/wp/jx;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/byazt/wp/jx;->hp:Lcom/byazt/wp/jx;

    .line 27
    .line 28
    return-object p0
.end method

.method public static isMaterialNotification(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "#7f0b0198"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Lcom/byazt/wp/hp;->hp()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {}, Lcom/byazt/wp/hp;->l()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    filled-new-array {v2, v3}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {}, Lcom/byazt/wp/hp;->jx()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    :catchall_0
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    const/4 p0, 0x0

    .line 47
    :catchall_2
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_3
    :cond_2
    :goto_1
    return v0
.end method

.method private jx(Ljava/util/Map;)Ljava/util/Map;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "tt_adl_notification_layout"

    .line 18
    .line 19
    const-string v4, "layout"

    .line 20
    .line 21
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-instance v7, Landroid/widget/RemoteViews;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v7, v2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    new-instance v8, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "csj_enable_target_34"

    .line 42
    .line 43
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v9, 0x0

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    move v4, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v4, v9

    .line 59
    :goto_0
    invoke-static {}, Lcom/byazt/wp/hp;->e()I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v1, "notification_type"

    .line 64
    .line 65
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const-string v1, "notification_opt_2"

    .line 70
    .line 71
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-static {}, Lcom/byazt/wp/hp;->di()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    move v2, v1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v2, v9

    .line 84
    :goto_1
    instance-of v3, v11, Ljava/lang/Integer;

    .line 85
    .line 86
    const/4 v13, 0x1

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    instance-of v3, v12, Ljava/lang/Integer;

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    move-object v3, v11

    .line 94
    check-cast v3, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    move-object v5, v12

    .line 101
    check-cast v5, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-ne v5, v13, :cond_2

    .line 108
    .line 109
    move v5, v13

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move v5, v9

    .line 112
    :goto_2
    invoke-direct {v0, v3, v5}, Lcom/byazt/wp/jx;->hp(IZ)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v7, v10, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    if-nez v1, :cond_3

    .line 122
    .line 123
    move v2, v3

    .line 124
    :cond_3
    const-string v1, "builder_small_icon"

    .line 125
    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v1, "click_type"

    .line 134
    .line 135
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    instance-of v2, v1, Ljava/lang/Integer;

    .line 140
    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    check-cast v1, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    move v2, v1

    .line 150
    goto :goto_3

    .line 151
    :cond_4
    move v2, v9

    .line 152
    :goto_3
    const-string v1, "click_download_id"

    .line 153
    .line 154
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    instance-of v3, v1, Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    check-cast v1, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    move v3, v1

    .line 169
    goto :goto_4

    .line 170
    :cond_5
    move v3, v9

    .line 171
    :goto_4
    invoke-static {}, Lcom/byazt/wp/hp;->q()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    instance-of v15, v12, Ljava/lang/Integer;

    .line 176
    .line 177
    const/16 v16, 0x0

    .line 178
    .line 179
    if-eqz v15, :cond_7

    .line 180
    .line 181
    move-object v1, v12

    .line 182
    check-cast v1, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eq v1, v13, :cond_7

    .line 189
    .line 190
    const-string v1, "action_click_btn"

    .line 191
    .line 192
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    instance-of v5, v1, Ljava/lang/String;

    .line 197
    .line 198
    if-eqz v5, :cond_6

    .line 199
    .line 200
    check-cast v1, Ljava/lang/String;

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    move-object/from16 v1, v16

    .line 204
    .line 205
    :goto_5
    const/4 v5, 0x0

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v7, v14, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    const-string v0, "action_apa"

    .line 214
    .line 215
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    instance-of v1, v0, Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v1, :cond_8

    .line 222
    .line 223
    move-object v1, v0

    .line 224
    check-cast v1, Ljava/lang/String;

    .line 225
    .line 226
    const/4 v5, 0x0

    .line 227
    move-object/from16 v0, p0

    .line 228
    .line 229
    invoke-direct/range {v0 .. v5}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const-string v0, "apa_click_content_intent"

    .line 234
    .line 235
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    :cond_8
    const-string v0, "action_complete"

    .line 239
    .line 240
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    instance-of v1, v0, Ljava/lang/String;

    .line 245
    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    move-object v1, v0

    .line 249
    check-cast v1, Ljava/lang/String;

    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    move-object/from16 v0, p0

    .line 253
    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v0, "complete_click_content_intent"

    .line 259
    .line 260
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    :cond_9
    const-string v0, "action_hide"

    .line 264
    .line 265
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    instance-of v1, v0, Ljava/lang/String;

    .line 270
    .line 271
    if-eqz v1, :cond_a

    .line 272
    .line 273
    move-object v1, v0

    .line 274
    check-cast v1, Ljava/lang/String;

    .line 275
    .line 276
    const/4 v5, 0x0

    .line 277
    move-object/from16 v0, p0

    .line 278
    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const-string v2, "hide_click_content_intent"

    .line 284
    .line 285
    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_a
    move-object/from16 v0, p0

    .line 290
    .line 291
    :goto_6
    const-string v1, "enable_notification_ui"

    .line 292
    .line 293
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->hp(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    const-string v3, "setBackgroundResource"

    .line 302
    .line 303
    const/4 v4, -0x1

    .line 304
    if-eqz v2, :cond_b

    .line 305
    .line 306
    invoke-static {}, Lcom/byazt/wp/hp;->n()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-virtual {v7, v14, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v14, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 314
    .line 315
    .line 316
    :cond_b
    const-string v2, "show_title"

    .line 317
    .line 318
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    if-nez v2, :cond_c

    .line 323
    .line 324
    const-string v2, "\u672a\u547d\u540d"

    .line 325
    .line 326
    :cond_c
    instance-of v5, v2, Ljava/lang/String;

    .line 327
    .line 328
    if-eqz v5, :cond_d

    .line 329
    .line 330
    invoke-static {}, Lcom/byazt/wp/hp;->gu()I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    check-cast v2, Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v7, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    :cond_d
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->hp(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-eqz v2, :cond_e

    .line 344
    .line 345
    invoke-static {}, Lcom/byazt/wp/hp;->a()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    goto :goto_7

    .line 350
    :cond_e
    invoke-static {}, Lcom/byazt/wp/hp;->w()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    :goto_7
    invoke-virtual {v7, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 355
    .line 356
    .line 357
    const-string v5, "percent"

    .line 358
    .line 359
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    const-string v4, "indeterminate"

    .line 364
    .line 365
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    if-eqz v5, :cond_f

    .line 370
    .line 371
    if-eqz v4, :cond_f

    .line 372
    .line 373
    move-object/from16 v17, v5

    .line 374
    .line 375
    check-cast v17, Ljava/lang/Integer;

    .line 376
    .line 377
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    check-cast v4, Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    const/16 v9, 0x64

    .line 388
    .line 389
    invoke-virtual {v7, v2, v9, v13, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 390
    .line 391
    .line 392
    :cond_f
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->hp(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    const-string v9, "setBackgroundColor"

    .line 397
    .line 398
    if-eqz v4, :cond_11

    .line 399
    .line 400
    const-string v4, "bitmap"

    .line 401
    .line 402
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    if-eqz v4, :cond_10

    .line 407
    .line 408
    const/4 v13, 0x0

    .line 409
    invoke-virtual {v7, v10, v9, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    check-cast v4, Landroid/graphics/Bitmap;

    .line 413
    .line 414
    invoke-virtual {v7, v10, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 415
    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_10
    invoke-static {}, Lcom/byazt/wp/hp;->n()I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    invoke-virtual {v7, v10, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 423
    .line 424
    .line 425
    :cond_11
    :goto_8
    invoke-static {}, Lcom/byazt/wp/hp;->s()I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    invoke-static {}, Lcom/byazt/wp/hp;->eb()I

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    invoke-static {}, Lcom/byazt/wp/hp;->vv()I

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    const-string v13, "is_bind_app"

    .line 438
    .line 439
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v13

    .line 443
    move-object/from16 v18, v5

    .line 444
    .line 445
    instance-of v5, v13, Ljava/lang/Boolean;

    .line 446
    .line 447
    if-eqz v5, :cond_12

    .line 448
    .line 449
    check-cast v13, Ljava/lang/Boolean;

    .line 450
    .line 451
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_12

    .line 456
    .line 457
    const/4 v13, 0x1

    .line 458
    goto :goto_9

    .line 459
    :cond_12
    const/4 v13, 0x0

    .line 460
    :goto_9
    check-cast v11, Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    const-string v11, "download_status"

    .line 467
    .line 468
    const-string v19, ""

    .line 469
    .line 470
    move-object/from16 v20, v12

    .line 471
    .line 472
    const-string v12, "download_size"

    .line 473
    .line 474
    move/from16 v21, v13

    .line 475
    .line 476
    const/4 v13, 0x1

    .line 477
    if-eq v5, v13, :cond_13

    .line 478
    .line 479
    const/4 v13, 0x4

    .line 480
    if-ne v5, v13, :cond_14

    .line 481
    .line 482
    :cond_13
    move-object/from16 v24, v8

    .line 483
    .line 484
    move-object/from16 v25, v9

    .line 485
    .line 486
    move/from16 v20, v10

    .line 487
    .line 488
    goto/16 :goto_1e

    .line 489
    .line 490
    :cond_14
    const/4 v13, 0x2

    .line 491
    const-string v22, "\u7ee7\u7eed"

    .line 492
    .line 493
    if-ne v5, v13, :cond_1c

    .line 494
    .line 495
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    instance-of v11, v5, Ljava/lang/String;

    .line 500
    .line 501
    if-eqz v11, :cond_15

    .line 502
    .line 503
    move-object/from16 v19, v5

    .line 504
    .line 505
    check-cast v19, Ljava/lang/String;

    .line 506
    .line 507
    :cond_15
    if-eqz v15, :cond_19

    .line 508
    .line 509
    move-object/from16 v5, v20

    .line 510
    .line 511
    check-cast v5, Ljava/lang/Integer;

    .line 512
    .line 513
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    const/4 v13, 0x1

    .line 518
    if-ne v5, v13, :cond_17

    .line 519
    .line 520
    const-string v5, "progress_70"

    .line 521
    .line 522
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    move-object/from16 v11, v18

    .line 527
    .line 528
    check-cast v11, Ljava/lang/Integer;

    .line 529
    .line 530
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 531
    .line 532
    .line 533
    move-result v11

    .line 534
    check-cast v5, Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    if-lt v11, v5, :cond_16

    .line 541
    .line 542
    const/4 v13, 0x0

    .line 543
    invoke-virtual {v7, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 544
    .line 545
    .line 546
    move v2, v3

    .line 547
    const/16 v5, 0x8

    .line 548
    .line 549
    goto :goto_a

    .line 550
    :cond_16
    const/16 v5, 0x8

    .line 551
    .line 552
    const/4 v13, 0x0

    .line 553
    invoke-virtual {v7, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v7, v4, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v7, v10, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 563
    .line 564
    .line 565
    const-string v2, "\u4e0b\u8f7d\u6682\u505c\u4e2d\uff0c\u70b9\u51fb\u7ee7\u7eed\u3002"

    .line 566
    .line 567
    goto :goto_b

    .line 568
    :cond_17
    const/16 v5, 0x8

    .line 569
    .line 570
    const/4 v13, 0x0

    .line 571
    invoke-virtual {v7, v3, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 572
    .line 573
    .line 574
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->l(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    if-eqz v3, :cond_18

    .line 579
    .line 580
    const/4 v13, 0x0

    .line 581
    goto :goto_a

    .line 582
    :cond_18
    move v13, v5

    .line 583
    :goto_a
    invoke-virtual {v7, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v7, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 587
    .line 588
    .line 589
    :cond_19
    const-string v2, "\u6682\u505c\u4e2d"

    .line 590
    .line 591
    :goto_b
    if-nez v21, :cond_1b

    .line 592
    .line 593
    const/4 v13, 0x0

    .line 594
    invoke-virtual {v7, v14, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 595
    .line 596
    .line 597
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->l(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    if-eqz v1, :cond_1a

    .line 602
    .line 603
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    instance-of v3, v1, Ljava/lang/String;

    .line 608
    .line 609
    if-eqz v3, :cond_1a

    .line 610
    .line 611
    check-cast v1, Ljava/lang/String;

    .line 612
    .line 613
    move-object/from16 v19, v1

    .line 614
    .line 615
    :cond_1a
    move-object/from16 v24, v8

    .line 616
    .line 617
    move-object/from16 v25, v9

    .line 618
    .line 619
    move/from16 v20, v10

    .line 620
    .line 621
    move-object/from16 v1, v16

    .line 622
    .line 623
    move-object/from16 v8, v19

    .line 624
    .line 625
    move-object/from16 v3, v22

    .line 626
    .line 627
    goto/16 :goto_25

    .line 628
    .line 629
    :cond_1b
    move-object/from16 v24, v8

    .line 630
    .line 631
    move-object/from16 v25, v9

    .line 632
    .line 633
    move/from16 v20, v10

    .line 634
    .line 635
    move-object/from16 v8, v19

    .line 636
    .line 637
    move-object/from16 v19, v22

    .line 638
    .line 639
    :goto_c
    const/16 v10, 0x8

    .line 640
    .line 641
    goto/16 :goto_1d

    .line 642
    .line 643
    :cond_1c
    const/4 v13, 0x3

    .line 644
    if-ne v5, v13, :cond_34

    .line 645
    .line 646
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    instance-of v11, v5, Ljava/lang/Integer;

    .line 651
    .line 652
    const-string v13, "is_wait_wifi_and_in_net"

    .line 653
    .line 654
    const-string v15, "is_insufficient_space_error"

    .line 655
    .line 656
    move-object/from16 v18, v5

    .line 657
    .line 658
    const-string v5, "is_network_error"

    .line 659
    .line 660
    if-eqz v11, :cond_2e

    .line 661
    .line 662
    move-object/from16 v21, v18

    .line 663
    .line 664
    check-cast v21, Ljava/lang/Integer;

    .line 665
    .line 666
    move/from16 v23, v11

    .line 667
    .line 668
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    .line 669
    .line 670
    .line 671
    move-result v11

    .line 672
    move-object/from16 v24, v8

    .line 673
    .line 674
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v8

    .line 678
    move-object/from16 v25, v9

    .line 679
    .line 680
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v9

    .line 684
    move-object/from16 v21, v15

    .line 685
    .line 686
    const/4 v15, -0x1

    .line 687
    if-eq v11, v15, :cond_24

    .line 688
    .line 689
    const/4 v15, -0x4

    .line 690
    if-ne v11, v15, :cond_1d

    .line 691
    .line 692
    goto/16 :goto_12

    .line 693
    .line 694
    :cond_1d
    const/4 v8, -0x3

    .line 695
    if-ne v11, v8, :cond_23

    .line 696
    .line 697
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v8

    .line 701
    instance-of v9, v8, Ljava/lang/String;

    .line 702
    .line 703
    if-eqz v9, :cond_1e

    .line 704
    .line 705
    check-cast v8, Ljava/lang/String;

    .line 706
    .line 707
    goto :goto_d

    .line 708
    :cond_1e
    move-object/from16 v8, v19

    .line 709
    .line 710
    :goto_d
    const-string v9, "is_mime_apk"

    .line 711
    .line 712
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    instance-of v11, v9, Ljava/lang/Boolean;

    .line 717
    .line 718
    if-eqz v11, :cond_20

    .line 719
    .line 720
    check-cast v9, Ljava/lang/Boolean;

    .line 721
    .line 722
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 723
    .line 724
    .line 725
    move-result v9

    .line 726
    if-eqz v9, :cond_20

    .line 727
    .line 728
    const-string v9, "is_apk_installed"

    .line 729
    .line 730
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    instance-of v11, v9, Ljava/lang/Boolean;

    .line 735
    .line 736
    if-eqz v11, :cond_1f

    .line 737
    .line 738
    check-cast v9, Ljava/lang/Boolean;

    .line 739
    .line 740
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 741
    .line 742
    .line 743
    move-result v9

    .line 744
    if-eqz v9, :cond_1f

    .line 745
    .line 746
    const-string v9, "\u5b89\u88c5\u5b8c\u6210\uff0c\u70b9\u51fb\u6253\u5f00\u3002"

    .line 747
    .line 748
    const-string v19, "\u6253\u5f00"

    .line 749
    .line 750
    :goto_e
    move-object/from16 v16, v9

    .line 751
    .line 752
    move-object/from16 v9, v19

    .line 753
    .line 754
    goto :goto_f

    .line 755
    :cond_1f
    const-string v9, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5\u3002"

    .line 756
    .line 757
    const-string v19, "\u5b89\u88c5"

    .line 758
    .line 759
    goto :goto_e

    .line 760
    :cond_20
    const-string v9, "is_have_notification_click_callback"

    .line 761
    .line 762
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    instance-of v11, v9, Ljava/lang/Boolean;

    .line 767
    .line 768
    if-eqz v11, :cond_21

    .line 769
    .line 770
    check-cast v9, Ljava/lang/Boolean;

    .line 771
    .line 772
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 773
    .line 774
    .line 775
    move-result v9

    .line 776
    if-eqz v9, :cond_21

    .line 777
    .line 778
    const-string v9, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u6253\u5f00\u3002"

    .line 779
    .line 780
    goto :goto_e

    .line 781
    :cond_21
    const-string v9, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 782
    .line 783
    goto :goto_e

    .line 784
    :goto_f
    move-object/from16 v11, v20

    .line 785
    .line 786
    check-cast v11, Ljava/lang/Integer;

    .line 787
    .line 788
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 789
    .line 790
    .line 791
    move-result v11

    .line 792
    const/4 v15, 0x1

    .line 793
    if-ne v11, v15, :cond_22

    .line 794
    .line 795
    invoke-virtual {v7, v14, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 796
    .line 797
    .line 798
    const/16 v11, 0x8

    .line 799
    .line 800
    invoke-virtual {v7, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 801
    .line 802
    .line 803
    goto :goto_10

    .line 804
    :cond_22
    const/16 v11, 0x8

    .line 805
    .line 806
    invoke-virtual {v7, v14, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 807
    .line 808
    .line 809
    :goto_10
    move-object/from16 v19, v9

    .line 810
    .line 811
    move/from16 v20, v10

    .line 812
    .line 813
    move-object/from16 v9, v16

    .line 814
    .line 815
    :goto_11
    const/16 v10, 0x8

    .line 816
    .line 817
    goto/16 :goto_16

    .line 818
    .line 819
    :cond_23
    move/from16 v20, v10

    .line 820
    .line 821
    move-object/from16 v8, v19

    .line 822
    .line 823
    move-object v9, v8

    .line 824
    goto :goto_11

    .line 825
    :cond_24
    :goto_12
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->l(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v15

    .line 829
    if-eqz v15, :cond_27

    .line 830
    .line 831
    const/4 v15, -0x1

    .line 832
    if-ne v11, v15, :cond_27

    .line 833
    .line 834
    instance-of v15, v8, Ljava/lang/Boolean;

    .line 835
    .line 836
    if-eqz v15, :cond_25

    .line 837
    .line 838
    check-cast v8, Ljava/lang/Boolean;

    .line 839
    .line 840
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 841
    .line 842
    .line 843
    move-result v8

    .line 844
    if-nez v8, :cond_26

    .line 845
    .line 846
    :cond_25
    instance-of v8, v9, Ljava/lang/Boolean;

    .line 847
    .line 848
    if-eqz v8, :cond_27

    .line 849
    .line 850
    move-object v8, v9

    .line 851
    check-cast v8, Ljava/lang/Boolean;

    .line 852
    .line 853
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 854
    .line 855
    .line 856
    move-result v8

    .line 857
    if-eqz v8, :cond_27

    .line 858
    .line 859
    :cond_26
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    instance-of v15, v8, Ljava/lang/String;

    .line 864
    .line 865
    if-eqz v15, :cond_27

    .line 866
    .line 867
    move-object/from16 v19, v8

    .line 868
    .line 869
    check-cast v19, Ljava/lang/String;

    .line 870
    .line 871
    :cond_27
    const/16 v8, 0x8

    .line 872
    .line 873
    invoke-virtual {v7, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 874
    .line 875
    .line 876
    const-string v8, "is_error_code_insufficient_space_error"

    .line 877
    .line 878
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v8

    .line 882
    const-string v15, "is_need_show_wait_net_text"

    .line 883
    .line 884
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v15

    .line 888
    move/from16 v20, v10

    .line 889
    .line 890
    instance-of v10, v8, Ljava/lang/Boolean;

    .line 891
    .line 892
    if-eqz v10, :cond_28

    .line 893
    .line 894
    check-cast v8, Ljava/lang/Boolean;

    .line 895
    .line 896
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 897
    .line 898
    .line 899
    move-result v8

    .line 900
    if-eqz v8, :cond_28

    .line 901
    .line 902
    const-string v8, "SdCard\u7a7a\u95f4\u4e0d\u8db3, \u4e0b\u8f7d\u5931\u8d25\u3002"

    .line 903
    .line 904
    :goto_13
    const/16 v10, 0x8

    .line 905
    .line 906
    goto :goto_14

    .line 907
    :cond_28
    instance-of v8, v15, Ljava/lang/Boolean;

    .line 908
    .line 909
    if-eqz v8, :cond_2a

    .line 910
    .line 911
    check-cast v15, Ljava/lang/Boolean;

    .line 912
    .line 913
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 914
    .line 915
    .line 916
    move-result v8

    .line 917
    if-eqz v8, :cond_2a

    .line 918
    .line 919
    const-string v8, "is_wait_wifi"

    .line 920
    .line 921
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v8

    .line 925
    instance-of v10, v8, Ljava/lang/Boolean;

    .line 926
    .line 927
    if-eqz v10, :cond_29

    .line 928
    .line 929
    check-cast v8, Ljava/lang/Boolean;

    .line 930
    .line 931
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 932
    .line 933
    .line 934
    move-result v8

    .line 935
    if-eqz v8, :cond_29

    .line 936
    .line 937
    const-string v8, "\u7b49\u5f85wifi\u5f00\u59cb\u4e0b\u8f7d"

    .line 938
    .line 939
    goto :goto_13

    .line 940
    :cond_29
    const-string v8, "\u7b49\u5f85\u7f51\u7edc\u7ee7\u7eed\u4e0b\u8f7d"

    .line 941
    .line 942
    goto :goto_13

    .line 943
    :cond_2a
    const-string v8, "\u4e0b\u8f7d\u5931\u8d25\u3002"

    .line 944
    .line 945
    goto :goto_13

    .line 946
    :goto_14
    invoke-virtual {v7, v14, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 947
    .line 948
    .line 949
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->l(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    move-result v10

    .line 953
    const-string v15, "\u91cd\u65b0\u4e0b\u8f7d"

    .line 954
    .line 955
    if-eqz v10, :cond_2c

    .line 956
    .line 957
    const/4 v10, -0x1

    .line 958
    if-ne v11, v10, :cond_2c

    .line 959
    .line 960
    const-string v10, "is_net_work_error"

    .line 961
    .line 962
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v10

    .line 966
    instance-of v11, v10, Ljava/lang/Boolean;

    .line 967
    .line 968
    if-eqz v11, :cond_2d

    .line 969
    .line 970
    check-cast v10, Ljava/lang/Boolean;

    .line 971
    .line 972
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 973
    .line 974
    .line 975
    move-result v10

    .line 976
    if-eqz v10, :cond_2d

    .line 977
    .line 978
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v8

    .line 982
    instance-of v9, v8, Ljava/lang/Boolean;

    .line 983
    .line 984
    if-eqz v9, :cond_2b

    .line 985
    .line 986
    check-cast v8, Ljava/lang/Boolean;

    .line 987
    .line 988
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 989
    .line 990
    .line 991
    move-result v8

    .line 992
    if-eqz v8, :cond_2b

    .line 993
    .line 994
    const-string v8, "\u65e0Wi-Fi \u5df2\u6682\u505c"

    .line 995
    .line 996
    move-object v9, v8

    .line 997
    move-object/from16 v8, v19

    .line 998
    .line 999
    move-object/from16 v19, v22

    .line 1000
    .line 1001
    goto/16 :goto_11

    .line 1002
    .line 1003
    :cond_2b
    const-string v8, "\u4e0b\u8f7d\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 1004
    .line 1005
    :cond_2c
    :goto_15
    move-object v9, v8

    .line 1006
    move-object/from16 v8, v19

    .line 1007
    .line 1008
    const/16 v10, 0x8

    .line 1009
    .line 1010
    move-object/from16 v19, v15

    .line 1011
    .line 1012
    goto :goto_16

    .line 1013
    :cond_2d
    instance-of v10, v9, Ljava/lang/Boolean;

    .line 1014
    .line 1015
    if-eqz v10, :cond_2c

    .line 1016
    .line 1017
    check-cast v9, Ljava/lang/Boolean;

    .line 1018
    .line 1019
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v9

    .line 1023
    if-eqz v9, :cond_2c

    .line 1024
    .line 1025
    const-string v9, "download_size_diff"

    .line 1026
    .line 1027
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v9

    .line 1031
    instance-of v10, v9, Ljava/lang/String;

    .line 1032
    .line 1033
    if-eqz v10, :cond_2c

    .line 1034
    .line 1035
    check-cast v9, Ljava/lang/String;

    .line 1036
    .line 1037
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v8

    .line 1041
    const-string v9, "\u7a7a\u95f4\u4e0d\u8db3 \u8fd8\u9700%s"

    .line 1042
    .line 1043
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v8

    .line 1047
    goto :goto_15

    .line 1048
    :goto_16
    invoke-virtual {v7, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1049
    .line 1050
    .line 1051
    const/4 v11, 0x0

    .line 1052
    invoke-virtual {v7, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v7, v3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1056
    .line 1057
    .line 1058
    goto :goto_17

    .line 1059
    :cond_2e
    move-object/from16 v24, v8

    .line 1060
    .line 1061
    move-object/from16 v25, v9

    .line 1062
    .line 1063
    move/from16 v20, v10

    .line 1064
    .line 1065
    move/from16 v23, v11

    .line 1066
    .line 1067
    move-object/from16 v21, v15

    .line 1068
    .line 1069
    move-object/from16 v8, v19

    .line 1070
    .line 1071
    move-object v9, v8

    .line 1072
    :goto_17
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    move-object/from16 v10, v21

    .line 1077
    .line 1078
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v10

    .line 1082
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->l(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    if-eqz v1, :cond_32

    .line 1087
    .line 1088
    if-eqz v23, :cond_32

    .line 1089
    .line 1090
    move-object/from16 v1, v18

    .line 1091
    .line 1092
    check-cast v1, Ljava/lang/Integer;

    .line 1093
    .line 1094
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    const/4 v15, -0x1

    .line 1099
    if-ne v1, v15, :cond_32

    .line 1100
    .line 1101
    instance-of v1, v5, Ljava/lang/Boolean;

    .line 1102
    .line 1103
    if-eqz v1, :cond_30

    .line 1104
    .line 1105
    check-cast v5, Ljava/lang/Boolean;

    .line 1106
    .line 1107
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v1

    .line 1111
    if-nez v1, :cond_2f

    .line 1112
    .line 1113
    goto :goto_19

    .line 1114
    :cond_2f
    :goto_18
    const/4 v11, 0x0

    .line 1115
    goto :goto_1a

    .line 1116
    :cond_30
    :goto_19
    instance-of v1, v10, Ljava/lang/Boolean;

    .line 1117
    .line 1118
    if-eqz v1, :cond_32

    .line 1119
    .line 1120
    check-cast v10, Ljava/lang/Boolean;

    .line 1121
    .line 1122
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    if-eqz v1, :cond_32

    .line 1127
    .line 1128
    goto :goto_18

    .line 1129
    :goto_1a
    invoke-virtual {v7, v2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1130
    .line 1131
    .line 1132
    const/16 v10, 0x8

    .line 1133
    .line 1134
    invoke-virtual {v7, v4, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v7, v3, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1138
    .line 1139
    .line 1140
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 1145
    .line 1146
    if-eqz v2, :cond_33

    .line 1147
    .line 1148
    check-cast v1, Ljava/lang/Boolean;

    .line 1149
    .line 1150
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v1

    .line 1154
    if-eqz v1, :cond_33

    .line 1155
    .line 1156
    invoke-virtual {v7, v14, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1157
    .line 1158
    .line 1159
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    instance-of v2, v1, Ljava/lang/String;

    .line 1164
    .line 1165
    if-eqz v2, :cond_31

    .line 1166
    .line 1167
    check-cast v1, Ljava/lang/String;

    .line 1168
    .line 1169
    goto :goto_1b

    .line 1170
    :cond_31
    move-object v1, v8

    .line 1171
    :goto_1b
    move-object v8, v1

    .line 1172
    :cond_32
    move-object v2, v9

    .line 1173
    :goto_1c
    move-object/from16 v1, v16

    .line 1174
    .line 1175
    move-object/from16 v3, v19

    .line 1176
    .line 1177
    goto/16 :goto_25

    .line 1178
    .line 1179
    :cond_33
    move-object v2, v9

    .line 1180
    goto/16 :goto_c

    .line 1181
    .line 1182
    :goto_1d
    invoke-virtual {v7, v14, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_1c

    .line 1186
    :cond_34
    move-object/from16 v24, v8

    .line 1187
    .line 1188
    move-object/from16 v25, v9

    .line 1189
    .line 1190
    move/from16 v20, v10

    .line 1191
    .line 1192
    move-object/from16 v1, v16

    .line 1193
    .line 1194
    move-object/from16 v2, v19

    .line 1195
    .line 1196
    move-object v3, v2

    .line 1197
    move-object v8, v3

    .line 1198
    goto :goto_25

    .line 1199
    :goto_1e
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v8

    .line 1203
    instance-of v9, v8, Ljava/lang/String;

    .line 1204
    .line 1205
    if-eqz v9, :cond_35

    .line 1206
    .line 1207
    check-cast v8, Ljava/lang/String;

    .line 1208
    .line 1209
    :goto_1f
    const/4 v13, 0x1

    .line 1210
    goto :goto_20

    .line 1211
    :cond_35
    move-object/from16 v8, v19

    .line 1212
    .line 1213
    goto :goto_1f

    .line 1214
    :goto_20
    if-ne v5, v13, :cond_38

    .line 1215
    .line 1216
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v5

    .line 1220
    instance-of v6, v5, Ljava/lang/Integer;

    .line 1221
    .line 1222
    if-eqz v6, :cond_36

    .line 1223
    .line 1224
    check-cast v5, Ljava/lang/Integer;

    .line 1225
    .line 1226
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1227
    .line 1228
    .line 1229
    move-result v5

    .line 1230
    const/16 v6, 0xb

    .line 1231
    .line 1232
    if-ne v5, v6, :cond_37

    .line 1233
    .line 1234
    const-string v5, "\u5904\u7406\u4e2d"

    .line 1235
    .line 1236
    :goto_21
    move-object/from16 v19, v5

    .line 1237
    .line 1238
    :cond_36
    :goto_22
    const/4 v13, 0x0

    .line 1239
    goto :goto_23

    .line 1240
    :cond_37
    const-string v19, "\u6b63\u5728\u4e0b\u8f7d"

    .line 1241
    .line 1242
    goto :goto_22

    .line 1243
    :cond_38
    const-string v5, "\u51c6\u5907\u4e2d"

    .line 1244
    .line 1245
    goto :goto_21

    .line 1246
    :goto_23
    invoke-virtual {v7, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1247
    .line 1248
    .line 1249
    const/16 v10, 0x8

    .line 1250
    .line 1251
    invoke-virtual {v7, v4, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v7, v3, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1255
    .line 1256
    .line 1257
    if-eqz v21, :cond_39

    .line 1258
    .line 1259
    move v9, v10

    .line 1260
    goto :goto_24

    .line 1261
    :cond_39
    move v9, v13

    .line 1262
    :goto_24
    invoke-virtual {v7, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1263
    .line 1264
    .line 1265
    invoke-direct {v0, v1}, Lcom/byazt/wp/jx;->l(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v1

    .line 1269
    if-eqz v1, :cond_3a

    .line 1270
    .line 1271
    invoke-virtual {v7, v14, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1272
    .line 1273
    .line 1274
    :cond_3a
    const-string v1, "\u6682\u505c"

    .line 1275
    .line 1276
    move-object v3, v1

    .line 1277
    move-object/from16 v1, v16

    .line 1278
    .line 1279
    move-object/from16 v2, v19

    .line 1280
    .line 1281
    :goto_25
    invoke-static {}, Lcom/byazt/wp/hp;->xs()I

    .line 1282
    .line 1283
    .line 1284
    move-result v4

    .line 1285
    invoke-virtual {v7, v4, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-static {}, Lcom/byazt/wp/hp;->ec()I

    .line 1289
    .line 1290
    .line 1291
    move-result v4

    .line 1292
    invoke-virtual {v7, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1293
    .line 1294
    .line 1295
    move/from16 v4, v20

    .line 1296
    .line 1297
    invoke-virtual {v7, v4, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-static {}, Lcom/byazt/wp/hp;->sz()I

    .line 1301
    .line 1302
    .line 1303
    move-result v4

    .line 1304
    invoke-virtual {v7, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1308
    .line 1309
    .line 1310
    move-result v2

    .line 1311
    if-eqz v2, :cond_3b

    .line 1312
    .line 1313
    const/16 v10, 0x8

    .line 1314
    .line 1315
    invoke-virtual {v7, v14, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1316
    .line 1317
    .line 1318
    goto :goto_26

    .line 1319
    :cond_3b
    invoke-virtual {v7, v14, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1320
    .line 1321
    .line 1322
    :goto_26
    :try_start_0
    iget-object v2, v0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    .line 1323
    .line 1324
    invoke-static {v2}, Lcom/byazt/wp/jx;->isMaterialNotification(Landroid/content/Context;)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v2

    .line 1328
    if-eqz v2, :cond_3c

    .line 1329
    .line 1330
    invoke-static {}, Lcom/byazt/wp/hp;->j()I

    .line 1331
    .line 1332
    .line 1333
    move-result v2

    .line 1334
    const-string v3, "#fffafafa"

    .line 1335
    .line 1336
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1337
    .line 1338
    .line 1339
    move-result v3

    .line 1340
    move-object/from16 v4, v25

    .line 1341
    .line 1342
    invoke-virtual {v7, v2, v4, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    .line 1344
    .line 1345
    :catchall_0
    :cond_3c
    const-string v2, "remote_views"

    .line 1346
    .line 1347
    move-object/from16 v3, v24

    .line 1348
    .line 1349
    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    const-string v2, "builder_content_type"

    .line 1353
    .line 1354
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    return-object v3
.end method

.method private l(Ljava/util/Map;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    const-string v10, "notification"

    if-eqz v0, :cond_6

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v2, "install_app_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    const-string v3, "install_icon_bitmap"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 5
    const-string v4, "install_action_type"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    const-string v5, "install_click_type"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    const-string v6, "install_package_name"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8
    const-string v7, "install_tag"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 9
    const-string v8, "install_value"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 10
    const-string v9, "install_log_extra"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 11
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    .line 12
    :goto_0
    const-string v13, "install_download_id"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 13
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_1

    :cond_1
    const/4 v13, -0x1

    .line 14
    :goto_1
    const-string v14, "install_enable_target_34"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 16
    :goto_2
    iget-object v14, v1, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v1, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v12, "tt_install_notification_layout"

    move/from16 p1, v0

    const-string v0, "layout"

    invoke-virtual {v14, v12, v0, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 17
    new-instance v12, Landroid/widget/RemoteViews;

    iget-object v14, v1, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 18
    invoke-static {}, Lcom/byazt/wp/hp;->zy()I

    move-result v0

    .line 19
    invoke-static {}, Lcom/byazt/wp/hp;->jl()I

    move-result v14

    .line 20
    invoke-static {}, Lcom/byazt/wp/hp;->k()I

    move-result v15

    move/from16 v16, v13

    .line 21
    invoke-static {}, Lcom/byazt/wp/hp;->v()I

    move-result v13

    move-object/from16 v17, v11

    .line 22
    invoke-static {}, Lcom/byazt/wp/hp;->u()I

    move-result v11

    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-ne v5, v10, :cond_3

    .line 23
    const-string v10, "\u6253\u5f00"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    const-string v10, "\u5e94\u7528\u5df2\u5b89\u88c5\u5b8c\u6210"

    const-string v19, "\u53bb\u6253\u5f00"

    :goto_3
    move-object v1, v10

    move-object v10, v2

    move-object v2, v1

    move-object/from16 v1, v19

    goto :goto_4

    .line 25
    :cond_3
    const-string v10, "\u5b89\u88c5"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    const-string v10, "\u5e94\u7528\u5df2\u4e0b\u8f7d\u5b8c\u6210"

    const-string v19, "\u53bb\u5b89\u88c5"

    goto :goto_3

    .line 27
    :goto_4
    invoke-virtual {v12, v14, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v12, v15, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v12, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 30
    invoke-static {}, Lcom/byazt/wp/hp;->di()I

    move-result v1

    if-nez v1, :cond_4

    .line 31
    invoke-static {}, Lcom/byazt/wp/hp;->b()I

    move-result v1

    if-nez v1, :cond_4

    .line 32
    invoke-static {}, Lcom/byazt/wp/hp;->ns()I

    move-result v1

    :cond_4
    move v14, v1

    .line 33
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    move-object/from16 v1, p0

    move-object v15, v2

    move-object v2, v4

    move v3, v5

    move/from16 v4, v16

    move/from16 v5, p1

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 35
    invoke-virtual {v12, v11, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 36
    invoke-virtual {v12, v13, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "csj_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_5

    .line 39
    invoke-static {}, LT/d;->a()V

    const-string v0, "csj_install"

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v4, 0x1

    .line 40
    invoke-static {v0, v4}, LT/c;->a(Landroid/app/NotificationChannel;Z)V

    .line 41
    invoke-static {v0, v4}, Ld0/a;->a(Landroid/app/NotificationChannel;Z)V

    .line 42
    iget-object v4, v1, Lcom/byazt/wp/jx;->l:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, v18

    :try_start_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 43
    invoke-static {v4, v0}, Landroidx/browser/trusted/d;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_5

    :cond_5
    move-object/from16 v5, v18

    goto :goto_6

    .line 44
    :goto_5
    invoke-static {v0}, Lcom/byazt/ik/a;->hp(Ljava/lang/Throwable;)V

    .line 45
    :goto_6
    invoke-direct {v1, v3}, Lcom/byazt/wp/jx;->hp(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 46
    new-instance v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v15}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 51
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 52
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 55
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 56
    iput-object v12, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v2, v17

    .line 57
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private l(Ljava/lang/Object;)Z
    .locals 1

    .line 58
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/byazt/xi/jx;->hp(Landroid/util/SparseArray;)Lcom/byazt/xi/jx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/xi/jx;->l()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    const v0, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    const v1, -0x5f5e0f1

    .line 4
    const-class v2, Ljava/lang/Class;

    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const v2, -0x5f5e0f2

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/xi/jx;->hp()Lcom/byazt/xi/jx;

    move-result-object p1

    const/16 v0, 0x2710

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/byazt/xi/jx;->hp(II)Lcom/byazt/xi/jx;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/byazt/xi/jx;->l()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x0

    .line 9
    const-class v3, Ljava/util/Map;

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/byazt/wp/jx;->callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/wp/jx;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    const-string p1, "api:"

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "xgc_dl"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/byazt/ik/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_5

    .line 17
    .line 18
    const/16 p1, 0x9f

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eq p2, p1, :cond_3

    .line 22
    .line 23
    const/16 p1, 0xa1

    .line 24
    .line 25
    if-eq p2, p1, :cond_2

    .line 26
    .line 27
    const/16 p1, 0x9b

    .line 28
    .line 29
    if-eq p2, p1, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x9c

    .line 32
    .line 33
    if-eq p2, p1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-direct {p0, p3}, Lcom/byazt/wp/jx;->hp(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    const-string p1, "custom_authority"

    .line 42
    .line 43
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    const-string p2, "custom_file_path"

    .line 50
    .line 51
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wp/jx;->getCustomUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_2
    invoke-direct {p0, p3}, Lcom/byazt/wp/jx;->l(Ljava/util/Map;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_3
    if-eqz p3, :cond_4

    .line 68
    .line 69
    const-string p1, "n"

    .line 70
    .line 71
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    instance-of p2, p1, Ljava/util/function/Function;

    .line 76
    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    check-cast p1, Ljava/util/function/Function;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/byazt/wp/jx;->jx:Ljava/util/function/Function;

    .line 82
    .line 83
    :cond_4
    return-object v0

    .line 84
    :cond_5
    iget-object p1, p0, Lcom/byazt/wp/jx;->jx:Ljava/util/function/Function;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    new-instance p1, Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 91
    .line 92
    .line 93
    const p2, -0x5f5e0f3

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/byazt/wp/jx;->jx:Ljava/util/function/Function;

    .line 108
    .line 109
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    return-object p1
.end method

.method public getCustomUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/wp/jx;->l:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public hp(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const v1, -0x5f5e0f3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/wp/jx;->jx:Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
