.class public Lcom/ubix/ssp/ad/e/s/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/a;)Lcom/ubix/ssp/ad/e/s/j/a;
    .locals 9

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/s/j/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/s/j/a;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    if-nez v4, :cond_0

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    sput-object v4, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    invoke-static {}, LT/d;->a()V

    const-string v4, "download"

    const/4 v5, 0x3

    invoke-static {v2, v4, v5}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-static {v4, v6, v6}, LT/b;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    sget-object v5, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-static {v5, v4}, Landroidx/browser/trusted/d;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/o;->a()V

    invoke-static {p0, v2}, Lcom/sigmob/sdk/downloader/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "service_intent_notify_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "ACTION_USER_OPERATION"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.ubix.ssp.open.comm.DownloadService"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-static {p0, v1, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/e/s/g/b;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->d()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c;->d(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v7, v7, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iput-object v2, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    iput v1, v0, Lcom/ubix/ssp/ad/e/s/j/a;->a:I

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;I)V
    .locals 1

    .line 3
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget-object v0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    sget-object v0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/s/f;->a(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;II)V
    .locals 3

    .line 4
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, p2, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-ne p2, v1, :cond_0

    const-string p2, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    sget-object p2, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget-object p1, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 8

    .line 6
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/ubix/ssp/ad/e/s/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.ubix.ssp.open.comm.AdActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "pkg"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "path"

    :try_start_1
    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, p1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v2

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v2

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v2

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ubix/ssp/ad/e/s/g/b;->a(J)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p2

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 3

    .line 7
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v1

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v1

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    sget-object v1, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object p0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object p0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 8
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    invoke-static {p0, p1}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    return v0

    :cond_2
    return v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v0
.end method

.method public static b(Landroid/app/Notification$Builder;I)V
    .locals 1

    const-string v0, "\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget-object v0, Lcom/ubix/ssp/ad/e/s/f;->a:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
