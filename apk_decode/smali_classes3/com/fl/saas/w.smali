.class public Lcom/fl/saas/w;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/String; = "fl_download_notification"

.field public static g:Ljava/lang/String; = "com.fl.saas.s2s.sdk.helper.download.action.start"

.field public static h:Ljava/lang/String; = "com.fl.saas.s2s.sdk.helper.download.action.pause"

.field public static i:Ljava/lang/String; = "com.fl.saas.s2s.sdk.helper.download.action.cancel"


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Landroid/widget/RemoteViews;

.field private c:Landroidx/core/app/NotificationCompat$Builder;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fl/saas/w;->d:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fl/saas/w;->e:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p3, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_download_notification:I

    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 32
    .line 33
    sget p1, Lcom/fl/saas/R$id;->iv_logo:I

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/fl/saas/w;->b()Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 43
    .line 44
    sget v0, Lcom/fl/saas/R$id;->tv_name:I

    .line 45
    .line 46
    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroid/content/Intent;

    .line 50
    .line 51
    const-class p3, Lcom/fl/saas/adx/base/download/DownloadActionReceiver;

    .line 52
    .line 53
    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/fl/saas/w;->h:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const-string v0, "downLoadUrl"

    .line 62
    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/high16 v2, 0x8000000

    .line 69
    .line 70
    const/high16 v3, 0x2000000

    .line 71
    .line 72
    const/16 v4, 0x1f

    .line 73
    .line 74
    if-lt v1, v4, :cond_1

    .line 75
    .line 76
    move v5, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v5, v2

    .line 79
    :goto_0
    const/4 v6, 0x0

    .line 80
    invoke-static {p0, v6, p1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v5, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 85
    .line 86
    sget v7, Lcom/fl/saas/R$id;->tv_action:I

    .line 87
    .line 88
    invoke-virtual {v5, v7, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Landroid/content/Intent;

    .line 92
    .line 93
    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .line 95
    .line 96
    sget-object p3, Lcom/fl/saas/w;->i:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    if-lt v1, v4, :cond_2

    .line 105
    .line 106
    move v2, v3

    .line 107
    :cond_2
    invoke-static {p0, v6, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 112
    .line 113
    sget p3, Lcom/fl/saas/R$id;->tv_cancel:I

    .line 114
    .line 115
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    .line 117
    .line 118
    const/16 p1, 0x1a

    .line 119
    .line 120
    if-lt v1, p1, :cond_3

    .line 121
    .line 122
    invoke-static {}, LT/d;->a()V

    .line 123
    .line 124
    .line 125
    sget-object p1, Lcom/fl/saas/w;->f:Ljava/lang/String;

    .line 126
    .line 127
    const-string p2, "\u5e94\u7528\u4e0b\u8f7d"

    .line 128
    .line 129
    const/4 p3, 0x2

    .line 130
    invoke-static {p1, p2, p3}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/4 p2, 0x0

    .line 135
    invoke-static {p1, p2, p2}, LT/b;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 136
    .line 137
    .line 138
    const/4 p2, 0x1

    .line 139
    invoke-static {p1, p2}, Lcom/fl/saas/B2;->a(Landroid/app/NotificationChannel;Z)V

    .line 140
    .line 141
    .line 142
    const/high16 p3, -0x10000

    .line 143
    .line 144
    invoke-static {p1, p3}, Lcom/fl/saas/C2;->a(Landroid/app/NotificationChannel;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, LT/c;->a(Landroid/app/NotificationChannel;Z)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/fl/saas/w;->c()Landroid/app/NotificationManager;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {p2, p1}, Landroidx/browser/trusted/d;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/fl/saas/w;->d()Landroidx/core/app/NotificationCompat$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/fl/saas/w;->c:Landroidx/core/app/NotificationCompat$Builder;

    .line 162
    .line 163
    invoke-direct {p0}, Lcom/fl/saas/w;->c()Landroid/app/NotificationManager;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/fl/saas/w;->c:Landroidx/core/app/NotificationCompat$Builder;

    .line 168
    .line 169
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, v6, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "fl_ic_download"

    .line 10
    .line 11
    const-string v3, "drawable"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method private c()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/w;->a:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "notification"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/NotificationManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fl/saas/w;->a:Landroid/app/NotificationManager;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/w;->a:Landroid/app/NotificationManager;

    .line 16
    .line 17
    return-object v0
.end method

.method private d()Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    sget-object v1, Lcom/fl/saas/w;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/fl/saas/w;->e()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/fl/saas/w;->b()Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method private e()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "fl_ic_download"

    .line 10
    .line 11
    const-string v3, "drawable"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 24
    .line 25
    :cond_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/w;->c()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/w;->c:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    sget v2, Lcom/fl/saas/R$id;->tv_down_tips:I

    invoke-virtual {v1, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    sget v1, Lcom/fl/saas/R$id;->tv_progress:I

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    sget v0, Lcom/fl/saas/R$id;->pb_progress:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-direct {p0}, Lcom/fl/saas/w;->c()Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/fl/saas/w;->c:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/fl/saas/w;->c:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    const/16 v1, 0x1f

    const-string v2, "downLoadUrl"

    const-class v3, Lcom/fl/saas/adx/base/download/DownloadActionReceiver;

    if-eqz p1, :cond_0

    sget p1, Lcom/fl/saas/R$id;->tv_action:I

    const-string v4, "\u6682\u505c"

    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/fl/saas/w;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/fl/saas/w;->d:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_0
    sget p1, Lcom/fl/saas/R$id;->tv_action:I

    const-string v4, "\u7ee7\u7eed"

    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/fl/saas/w;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/fl/saas/w;->d:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    :goto_0
    const/high16 v0, 0x2000000

    goto :goto_1

    :cond_1
    const/high16 v0, 0x8000000

    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    sget v2, Lcom/fl/saas/R$id;->tv_action:I

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/fl/saas/w;->c()Landroid/app/NotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/w;->c:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/w;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method
