.class public final Lcom/kwad/sdk/core/download/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/b/a$c;,
        Lcom/kwad/sdk/core/download/b/a$b;,
        Lcom/kwad/sdk/core/download/b/a$a;
    }
.end annotation


# static fields
.field private static aSl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static aSm:Lcom/kwad/sdk/core/download/b/a$c;

.field private static final aSn:Landroid/os/Handler;


# instance fields
.field private aSo:Z

.field private aSp:Z

.field private aSq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/core/download/b/a;->aSl:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Lcom/kwad/sdk/core/download/b/a$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/kwad/sdk/core/download/b/a$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/kwad/sdk/core/download/b/a;->aSn:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    .line 10
    .line 11
    return-void
.end method

.method private static J(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/download/b/a;->aSl:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/Bitmap;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return-object v0

    .line 29
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/kwad/sdk/utils/bc;->dN(Landroid/content/Context;)Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/bc;->aD(Landroid/content/Context;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v0, Lcom/kwad/sdk/core/download/b/a;->aSl:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method private static LE()V
    .locals 4

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/download/b/a;->aSm:Lcom/kwad/sdk/core/download/b/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/download/b/a$c;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/kwad/sdk/core/download/b/a$c;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/kwad/sdk/core/download/b/a;->aSm:Lcom/kwad/sdk/core/download/b/a$c;

    .line 12
    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "com.ksad.action.ACTION_NOTIFICATION_CLICK_CONTROL_BTN"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "com.ksad.action.ACTION_NOTIFICATION_REMOVED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x21

    .line 31
    .line 32
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/kwad/sdk/core/download/b/a;->aSm:Lcom/kwad/sdk/core/download/b/a$c;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-static {v1, v2, v0, v3}, Lcom/beizi/fusion/asnp/adn/ad/download/service/b;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Lcom/kwad/sdk/core/download/b/a;->aSm:Lcom/kwad/sdk/core/download/b/a$c;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static P(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    long-to-float p0, p0

    .line 2
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 3
    .line 4
    div-float/2addr p0, p1

    .line 5
    div-float/2addr p0, p1

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "%.2fMB"

    .line 15
    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static a(ILandroid/app/Notification;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/download/b/a;->LE()V

    .line 2
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5
    invoke-static {}, LT/d;->a()V

    const-string v1, "download_channel"

    const-string v2, "ksad"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/fl/saas/B2;->a(Landroid/app/NotificationChannel;Z)V

    .line 7
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/download/b/d;->a(Landroid/app/NotificationChannel;Z)V

    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v3, v3}, LT/b;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 9
    invoke-static {v1, v2}, LT/c;->a(Landroid/app/NotificationChannel;Z)V

    .line 10
    invoke-static {v0, v1}, Landroidx/browser/trusted/d;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 11
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/RemoteViews;ZZLandroid/app/PendingIntent;III)V
    .locals 2
    .param p5    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    new-instance p3, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    const-string v0, "download_channel"

    invoke-direct {p3, p1, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setWhen(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOngoing(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setAutoCancel(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOnlyAlertOnce(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setPriority(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p5}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p5

    .line 48
    invoke-static {p1}, Lcom/kwad/sdk/utils/bc;->getAppIconId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setSmallIcon(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    .line 49
    invoke-static {p3, p2}, Lcom/kwad/sdk/core/download/b/a;->a(Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;Landroid/widget/RemoteViews;)V

    if-eqz p4, :cond_0

    .line 50
    new-instance p2, Landroid/content/Intent;

    const-string p4, "com.ksad.action.ACTION_NOTIFICATION_REMOVED"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const-string p4, "taskId"

    invoke-virtual {p2, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-static {p1, p6, p2}, Lcom/kwad/sdk/utils/av;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    .line 53
    :cond_0
    sget-object p1, Lcom/kwad/sdk/core/download/b/a;->aSn:Landroid/os/Handler;

    invoke-virtual {p1, p6}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    invoke-virtual {p3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p6, p7, p8, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/download/b/a$b;)V
    .locals 2

    .line 71
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/download/b/b;->setName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LJ()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-direct {p0, p2, v0}, Lcom/kwad/sdk/core/download/b/a;->a(Lcom/kwad/sdk/core/download/b/b;Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/kwad/sdk/core/download/b/a$b;->LF()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/b;Ljava/lang/String;)Z

    .line 77
    :cond_1
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->setStatus(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->setSize(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->setInstallText(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/c;Lcom/kwad/sdk/core/download/b/a$b;)V
    .locals 3

    .line 60
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/download/b/c;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LJ()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-direct {p0, p2, v0}, Lcom/kwad/sdk/core/download/b/a;->a(Lcom/kwad/sdk/core/download/b/c;Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcom/kwad/sdk/core/download/b/a$b;->LF()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/c;Ljava/lang/String;)Z

    .line 66
    :cond_1
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/c;->setStatus(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/c;->setSize(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->LK()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/c;->setPercentNum(Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 69
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->getProgress()I

    move-result v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/kwad/sdk/core/download/b/c;->setProgress(IIZ)V

    .line 70
    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/a$b;->isPaused()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/c;->setControlBtnPaused(Z)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;Landroid/widget/RemoteViews;)V
    .locals 1

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setDecoratedCustomStyle()Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 59
    :catchall_0
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/b;Ljava/lang/String;)Z
    .locals 0

    .line 38
    :try_start_0
    invoke-static {p1, p3}, Lcom/kwad/sdk/core/download/b/a;->J(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 40
    invoke-static {p1}, Lcom/kwad/sdk/service/d;->gatherException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/c;Ljava/lang/String;)Z
    .locals 0

    .line 31
    :try_start_0
    invoke-static {p1, p3}, Lcom/kwad/sdk/core/download/b/a;->J(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/c;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 33
    invoke-static {p1}, Lcom/kwad/sdk/service/d;->gatherException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/kwad/sdk/core/download/b/b;Ljava/io/File;)Z
    .locals 0

    .line 34
    :try_start_0
    invoke-static {p2}, Lcom/kwad/sdk/core/download/b/a;->q(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/download/b/b;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 37
    invoke-static {p1}, Lcom/kwad/sdk/service/d;->gatherException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/kwad/sdk/core/download/b/c;Ljava/io/File;)Z
    .locals 0

    .line 27
    :try_start_0
    invoke-static {p2}, Lcom/kwad/sdk/core/download/b/a;->q(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/download/b/c;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 30
    invoke-static {p1}, Lcom/kwad/sdk/service/d;->gatherException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic aD(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/download/b/a;->P(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(ILandroid/app/Notification;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/download/b/a;->a(ILandroid/app/Notification;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static m(Lcom/kwad/sdk/DownloadTask;)Lcom/kwad/sdk/core/download/DownloadParams;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/sdk/DownloadTask;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/kwad/sdk/core/download/DownloadParams;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/kwad/sdk/core/download/DownloadParams;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/kwad/sdk/core/download/DownloadParams;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/kwad/sdk/core/download/DownloadParams;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/kwad/sdk/DownloadTask;->getSmallFileTotalBytes()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-long v1, v1

    .line 26
    iput-wide v1, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mAppSize:J

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/kwad/sdk/DownloadTask;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/kwad/sdk/DownloadTask;->getTargetFilePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, v0, Lcom/kwad/sdk/core/download/DownloadParams;->filePath:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method

.method private static q(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/kwad/sdk/core/download/b/a;->aSl:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    return-object v0

    .line 33
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/kwad/sdk/core/download/b/a;->aSl:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/DownloadTask;Z)V
    .locals 9

    .line 13
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->isNotificationRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getId()I

    move-result v0

    iget-boolean v2, p1, Lcom/kwad/sdk/DownloadTask;->downloadEnablePause:Z

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/core/download/b/c;->a(Landroid/content/Context;IZ)Lcom/kwad/sdk/core/download/b/c;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 16
    :cond_2
    iget-boolean v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    .line 18
    const-class v2, Lcom/kwad/sdk/service/a/h;

    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/service/a/h;

    invoke-interface {v3}, Lcom/kwad/sdk/service/a/h;->Gi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    .line 19
    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/service/a/h;

    invoke-interface {v2}, Lcom/kwad/sdk/service/a/h;->Gj()I

    move-result v2

    iput v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    .line 20
    :cond_3
    const-string v2, "AdDownloadNotificationPerformer"

    const-string v3, "DownloadProgressTransformUtil in notifyDownloadProgress"

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-boolean v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    iget v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v3}, Lcom/kwad/sdk/core/download/b/a$b;->b(Lcom/kwad/sdk/DownloadTask;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kwad/sdk/core/download/b/a$b;

    move-result-object v2

    .line 22
    invoke-direct {p0, v1, v0, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/c;Lcom/kwad/sdk/core/download/b/a$b;)V

    .line 23
    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/b/c;->build()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getId()I

    move-result v6

    .line 25
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->isCompleted()Z

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v7, p2

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZZLandroid/app/PendingIntent;III)V

    return-void
.end method

.method public final cM(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/a;->dS(Ljava/lang/String;)Lcom/kwad/sdk/core/download/DownloadParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, p1}, Lcom/kwad/sdk/core/a;->dT(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v2, v0, Lcom/kwad/sdk/core/download/DownloadParams;->filePath:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lcom/kwad/sdk/core/a;->dT(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "\u5b89\u88c5\u5b8c\u6210"

    .line 35
    .line 36
    const-string v2, "\u7acb\u523b\u6253\u5f00"

    .line 37
    .line 38
    invoke-static {v0, p1, v2}, Lcom/kwad/sdk/core/download/b/a$b;->b(Lcom/kwad/sdk/core/download/DownloadParams;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/core/download/b/a$b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v1}, Lcom/kwad/sdk/core/download/b/b;->bT(Landroid/content/Context;)Lcom/kwad/sdk/core/download/b/b;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, v1, v2, p1}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/download/b/a$b;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/kwad/sdk/core/download/b/b;->build()Landroid/widget/RemoteViews;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object p1, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mPkgname:Ljava/lang/String;

    .line 57
    .line 58
    iget v3, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    .line 59
    .line 60
    invoke-static {v1, p1, v3}, Lcom/kwad/sdk/utils/av;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget v6, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    const/4 v8, 0x2

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZZLandroid/app/PendingIntent;III)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public final dn(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "notification"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/NotificationManager;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g(Ljava/io/File;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/a;->dS(Ljava/lang/String;)Lcom/kwad/sdk/core/download/DownloadParams;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/a;->dT(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/a;->dU(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const-string v3, "recall"

    .line 47
    .line 48
    iput-object v3, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->installFrom:Ljava/lang/String;

    .line 49
    .line 50
    :cond_2
    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 51
    .line 52
    const-string v3, "\u7acb\u5373\u5b89\u88c5"

    .line 53
    .line 54
    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/download/b/a$b;->b(Lcom/kwad/sdk/core/download/DownloadParams;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/core/download/b/a$b;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1}, Lcom/kwad/sdk/core/download/b/b;->bT(Landroid/content/Context;)Lcom/kwad/sdk/core/download/b/b;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :cond_3
    invoke-direct {p0, v1, v3, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/download/b/a$b;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/kwad/sdk/core/download/b/b;->build()Landroid/widget/RemoteViews;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget v3, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    .line 73
    .line 74
    iget-boolean v4, v0, Lcom/kwad/sdk/core/download/DownloadParams;->requestInstallPermission:Z

    .line 75
    .line 76
    invoke-static {v1, p1, v3, v4}, Lcom/kwad/sdk/utils/av;->a(Landroid/content/Context;Ljava/io/File;IZ)Landroid/app/PendingIntent;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget v6, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    .line 81
    .line 82
    const/4 v7, 0x1

    .line 83
    const/4 v8, 0x2

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZZLandroid/app/PendingIntent;III)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final i(Lcom/kwad/sdk/DownloadTask;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/kwad/sdk/core/download/DownloadParams;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/kwad/sdk/core/download/DownloadParams;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-class v0, Lcom/kwad/sdk/service/a/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/kwad/sdk/service/a/d;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/kwad/sdk/service/a/d;->cO(Ljava/lang/String;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/kwad/sdk/service/a/d;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    const-string v2, ""

    .line 47
    .line 48
    invoke-interface {v0, v1, p1, v2, v2}, Lcom/kwad/sdk/service/a/d;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final j(Lcom/kwad/sdk/DownloadTask;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->isNotificationRemoved()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getSmallFileSoFarBytes()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getSmallFileTotalBytes()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v0, "\u51c6\u5907\u4e0b\u8f7d"

    .line 31
    .line 32
    :goto_0
    iget-boolean v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    .line 33
    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    .line 38
    .line 39
    const-class v2, Lcom/kwad/sdk/service/a/h;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/kwad/sdk/service/a/h;

    .line 46
    .line 47
    invoke-interface {v3}, Lcom/kwad/sdk/service/a/h;->Gi()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iput-boolean v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    .line 52
    .line 53
    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/kwad/sdk/service/a/h;

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/kwad/sdk/service/a/h;->Gj()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    .line 64
    .line 65
    :cond_3
    const-string v2, "AdDownloadNotificationPerformer"

    .line 66
    .line 67
    const-string v3, "DownloadProgressTransformUtil in notifyDownloadError"

    .line 68
    .line 69
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v2, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    .line 73
    .line 74
    iget v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {p1, v0, v4, v2, v3}, Lcom/kwad/sdk/core/download/b/a$b;->b(Lcom/kwad/sdk/DownloadTask;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kwad/sdk/core/download/b/a$b;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getId()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iget-boolean v3, p1, Lcom/kwad/sdk/DownloadTask;->downloadEnablePause:Z

    .line 86
    .line 87
    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/core/download/b/c;->a(Landroid/content/Context;IZ)Lcom/kwad/sdk/core/download/b/c;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :cond_4
    invoke-direct {p0, v1, v2, v0}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/c;Lcom/kwad/sdk/core/download/b/a$b;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/kwad/sdk/core/download/b/c;->build()Landroid/widget/RemoteViews;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/4 v7, 0x1

    .line 106
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->isCompleted()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x1

    .line 112
    const/4 v5, 0x0

    .line 113
    move-object v0, p0

    .line 114
    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZZLandroid/app/PendingIntent;III)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final k(Lcom/kwad/sdk/DownloadTask;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/kwad/sdk/core/download/b/a;->m(Lcom/kwad/sdk/DownloadTask;)Lcom/kwad/sdk/core/download/DownloadParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v1}, Lcom/kwad/sdk/core/download/b/b;->bT(Landroid/content/Context;)Lcom/kwad/sdk/core/download/b/b;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    iget-boolean v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    iput-boolean v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSo:Z

    .line 28
    .line 29
    const-class v3, Lcom/kwad/sdk/service/a/h;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/kwad/sdk/service/a/h;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/kwad/sdk/service/a/h;->Gi()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iput-boolean v4, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    .line 42
    .line 43
    invoke-static {v3}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/kwad/sdk/service/a/h;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/kwad/sdk/service/a/h;->Gj()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    .line 54
    .line 55
    :cond_3
    const-string v3, "AdDownloadNotificationPerformer"

    .line 56
    .line 57
    const-string v4, "DownloadProgressTransformUtil in notifyDownloadCompleted"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/kwad/sdk/core/download/b/a;->aSp:Z

    .line 63
    .line 64
    iget v4, p0, Lcom/kwad/sdk/core/download/b/a;->aSq:I

    .line 65
    .line 66
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 67
    .line 68
    const-string v6, "\u7acb\u5373\u5b89\u88c5"

    .line 69
    .line 70
    invoke-static {p1, v5, v6, v3, v4}, Lcom/kwad/sdk/core/download/b/a$b;->b(Lcom/kwad/sdk/DownloadTask;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kwad/sdk/core/download/b/a$b;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {p0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/download/b/a$b;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getTargetFilePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4, v0}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/kwad/sdk/core/a;->IH()Lcom/kwad/sdk/core/a;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mPkgname:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3, v4, v0}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getTargetFilePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v4, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    .line 107
    .line 108
    iget-boolean v0, v0, Lcom/kwad/sdk/core/download/DownloadParams;->requestInstallPermission:Z

    .line 109
    .line 110
    invoke-static {v1, v3, v4, v0}, Lcom/kwad/sdk/utils/av;->a(Landroid/content/Context;Ljava/io/File;IZ)Landroid/app/PendingIntent;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v2}, Lcom/kwad/sdk/core/download/b/b;->build()Landroid/widget/RemoteViews;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lcom/kwad/sdk/DownloadTask;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    const/4 v7, 0x1

    .line 123
    const/4 v8, 0x1

    .line 124
    const/4 v3, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    move-object v0, p0

    .line 127
    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZZLandroid/app/PendingIntent;III)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
