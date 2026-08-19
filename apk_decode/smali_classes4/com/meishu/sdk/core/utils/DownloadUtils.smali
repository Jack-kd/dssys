.class public Lcom/meishu/sdk/core/utils/DownloadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/DownloadUtils$InstallSuccessReceiver;,
        Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;,
        Lcom/meishu/sdk/core/utils/DownloadUtils$c;
    }
.end annotation


# static fields
.field public static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/meishu/sdk/core/utils/l0;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/utils/g0;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public static l:I


# instance fields
.field public a:Landroid/app/NotificationManager;

.field public b:Landroid/widget/RemoteViews;

.field public c:Landroid/app/Notification;

.field public d:Landroid/os/Handler;

.field public e:J

.field public f:J

.field public g:Z


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
    sput-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    sput v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils;->d:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/lit16 p0, p0, 0xc7

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 93
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils$c;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 95
    iget-boolean v1, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->g:Z

    if-nez v1, :cond_0

    .line 96
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    new-instance v2, Lcom/meishu/sdk/core/utils/DownloadUtils$InstallSuccessReceiver;

    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/DownloadUtils$InstallSuccessReceiver;-><init>()V

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 99
    iput-boolean p0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 100
    const-string v0, "DownloadUtils"

    const-string v1, "Failed registerReceiver InstallSuccessReceiver"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Lcom/meishu/sdk/core/utils/l0;)V
    .locals 5

    const-string v0, "DownloadUtils"

    if-eqz p1, :cond_7

    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_2

    .line 119
    :try_start_1
    iget-object v1, p2, Lcom/meishu/sdk/core/utils/l0;->f:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 120
    const-string v2, "Report send dn_inst_start"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p2}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Lcom/meishu/sdk/core/utils/l0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 125
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    :cond_2
    :goto_3
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->k:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 127
    iget-object p2, p2, Lcom/meishu/sdk/core/utils/l0;->c:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object p2, v1

    .line 128
    :goto_4
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    if-eqz p2, :cond_4

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/meishu/sdk/core/utils/DownloadUtils$b;

    invoke-direct {v2, p2}, Lcom/meishu/sdk/core/utils/DownloadUtils$b;-><init>(Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :cond_4
    :try_start_3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 131
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    sget-object v0, Lcom/meishu/sdk/core/utils/s;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getAuthority()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {p0, v1}, Lcom/meishu/sdk/core/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 135
    :cond_6
    sget-object v0, Lcom/meishu/sdk/core/utils/s;->a:Ljava/lang/String;

    .line 136
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 137
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 139
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 140
    :cond_7
    const-string p0, "file not exists"

    invoke-static {v0, p0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    .line 104
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 107
    iget-object v1, v1, Lcom/meishu/sdk/core/download/a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/utils/l0;

    .line 116
    invoke-static {p0, v2, p1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/meishu/sdk/core/utils/l0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1
    const-string v5, "ACTION_DOWNLOAD_INSTALL"

    const-string v6, "ACTION_DOWNLOAD_CACEL"

    const-string v7, "ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    new-instance v8, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;

    invoke-direct {v8, v1}, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils;)V

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :goto_0
    const-string v0, "notification"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x4

    const-string v9, "ms_download"

    const-string v10, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    const/16 v11, 0x1a

    const/4 v12, 0x0

    const-string v13, "..."

    if-lt v0, v11, :cond_0

    .line 11
    invoke-static {}, LT/d;->a()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14, v8}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v14

    .line 12
    invoke-static {v14, v12, v12}, LT/b;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 13
    iget-object v15, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    invoke-static {v15, v14}, Landroidx/browser/trusted/d;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    if-lt v0, v11, :cond_1

    .line 14
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0, v12}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 18
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v8, 0x1080081

    .line 19
    :try_start_1
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v8, 0x1

    .line 20
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->c:Landroid/app/Notification;

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ms_notification_item"

    const-string v10, "layout"

    invoke-virtual {v0, v9, v10, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 23
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/meishu/sdk/R$layout;->ms_notification_item:I

    invoke-direct {v0, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 24
    :cond_2
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v8, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    .line 25
    :goto_2
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ms_notification_title"

    const-string v10, "id"

    invoke-virtual {v0, v9, v10, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "ms_notification_cancel"

    invoke-virtual {v8, v11, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ms_notification_pause"

    invoke-virtual {v9, v12, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "ms_notification_progressText"

    invoke-virtual {v11, v14, v10, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ms_notification_pregressBar"

    invoke-virtual {v12, v15, v10, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p4, v5

    const-string v5, "ms_notification_rootView"

    invoke-virtual {v14, v5, v10, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v10, "\u6b63\u5728\u4e0b\u8f7d:"

    if-eqz v0, :cond_3

    .line 31
    iget-object v14, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 32
    :cond_3
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    sget v14, Lcom/meishu/sdk/R$id;->ms_notification_title:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_3
    const/4 v0, 0x0

    if-eqz v8, :cond_4

    .line 33
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v8, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    .line 34
    :cond_4
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    sget v10, Lcom/meishu/sdk/R$id;->ms_notification_cancel:I

    invoke-virtual {v4, v10, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    if-eqz v9, :cond_5

    .line 35
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v9, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5

    .line 36
    :cond_5
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    sget v10, Lcom/meishu/sdk/R$id;->ms_notification_pause:I

    invoke-virtual {v4, v10, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_5
    const-string v4, "0%"

    if-eqz v11, :cond_6

    .line 37
    iget-object v10, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v10, v11, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 38
    :cond_6
    iget-object v10, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    sget v11, Lcom/meishu/sdk/R$id;->ms_notification_progressText:I

    invoke-virtual {v10, v11, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_6
    const/16 v4, 0x64

    if-eqz v12, :cond_7

    .line 39
    iget-object v10, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v10, v12, v4, v0, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_7

    .line 40
    :cond_7
    iget-object v10, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    sget v11, Lcom/meishu/sdk/R$id;->ms_notification_pregressBar:I

    invoke-virtual {v10, v11, v4, v0, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 41
    :goto_7
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    move-result v0

    .line 42
    sput v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    .line 43
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 44
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v7, "notify_id"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string v10, "notify_url"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v12, 0x8000000

    const/high16 v13, 0xc000000

    const/16 v14, 0x1f

    if-lt v11, v14, :cond_8

    .line 48
    sget v15, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    invoke-static {v3, v15, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_8

    .line 49
    :cond_8
    sget v15, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    invoke-static {v3, v15, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_8
    if-nez v9, :cond_9

    .line 50
    sget v9, Lcom/meishu/sdk/R$id;->ms_notification_pause:I

    .line 51
    :cond_9
    iget-object v15, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v15, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 52
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lt v11, v14, :cond_a

    .line 56
    sget v6, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    const/high16 v9, 0x14000000

    invoke-static {v3, v6, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_9

    .line 57
    :cond_a
    sget v6, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    const/high16 v9, 0x10000000

    invoke-static {v3, v6, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_9
    if-nez v8, :cond_b

    .line 58
    sget v8, Lcom/meishu/sdk/R$id;->ms_notification_cancel:I

    .line 59
    :cond_b
    iget-object v6, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 60
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v6, p4

    .line 61
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lt v11, v14, :cond_c

    .line 64
    sget v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    invoke-static {v3, v2, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_a

    .line 65
    :cond_c
    sget v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->l:I

    invoke-static {v3, v2, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_a
    if-nez v5, :cond_d

    .line 66
    sget v5, Lcom/meishu/sdk/R$id;->ms_notification_rootView:I

    .line 67
    :cond_d
    iget-object v3, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 68
    sget-object v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 69
    sget-object v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/utils/l0;

    if-eqz v2, :cond_e

    .line 70
    iget-object v3, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->c:Landroid/app/Notification;

    .line 71
    iput-object v3, v2, Lcom/meishu/sdk/core/utils/l0;->a:Landroid/app/Notification;

    .line 72
    sget-object v3, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_e
    iget-object v2, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->c:Landroid/app/Notification;

    iget-object v3, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 74
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/utils/l0;)V
    .locals 7

    .line 75
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/l0;->c:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/meishu/sdk/core/utils/g0;

    .line 77
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/l0;->b:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/l0;->d:[Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lcom/meishu/sdk/core/utils/l0;->e:[Ljava/lang/String;

    .line 80
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/l0;->f:[Ljava/lang/String;

    .line 81
    iget-object v6, p0, Lcom/meishu/sdk/core/utils/l0;->g:[Ljava/lang/String;

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/core/utils/g0;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 84
    sget-object p0, Lcom/meishu/sdk/core/utils/DownloadUtils;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 87
    iget-object v1, v0, Lcom/meishu/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/download/d;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lcom/meishu/sdk/core/download/d;

    const-string v3, ""

    invoke-direct {v1, p2, p3, v3, p2}, Lcom/meishu/sdk/core/download/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, v0, Lcom/meishu/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v10, v1

    .line 90
    new-instance v0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/meishu/sdk/core/utils/DownloadUtils$a;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    iget-object v1, v10, Lcom/meishu/sdk/core/download/d;->e:Ljava/util/Map;

    iget-object v2, v10, Lcom/meishu/sdk/core/download/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v10}, Lcom/meishu/sdk/core/download/d;->a()V

    return-void
.end method
