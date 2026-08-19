.class public final Lcom/octopus/ad/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/DownloadService$b;,
        Lcom/octopus/ad/DownloadService$a;
    }
.end annotation


# static fields
.field private static f:Lcom/octopus/ad/internal/c/c$a;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Landroid/app/DownloadManager;

.field private d:Lcom/octopus/ad/DownloadService$a;

.field private e:Lcom/octopus/ad/DownloadService$b;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/octopus/ad/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/DownloadService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/DownloadService;->a:J

    return-wide v0
.end method

.method private a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://downloads/my_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/DownloadService;->d:Lcom/octopus/ad/DownloadService$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->e:Lcom/octopus/ad/DownloadService$b;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lcom/octopus/ad/f;->a(Lcom/octopus/ad/DownloadService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->e:Lcom/octopus/ad/DownloadService$b;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :goto_0
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .locals 3

    .line 67
    const-string v0, "DownloadService"

    const-string v1, "onReceived...download finish...begin install\uff01"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 71
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/d/b;

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/c$b$a;->b()Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V

    .line 76
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/octopus/ad/DownloadService;->a(Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V
    .locals 4

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/octopus/ad/d/c;->b(Z)V

    .line 78
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 79
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->b:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p3}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 83
    const-string v1, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0, p3}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 87
    :goto_0
    const-string p2, "OctopusAd"

    const-string p3, "An Exception Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/DownloadService;Landroid/content/Context;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/DownloadService;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/DownloadService;Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/DownloadService;->a(Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/d/b;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/octopus/ad/DownloadService;->b(Lcom/octopus/ad/d/b;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/octopus/ad/d/b;)V
    .locals 6

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloading..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "...please not repeat click"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u2026\u8bf7\u52ff\u91cd\u590d\u70b9\u51fb"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 16
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v3, 0x10000000

    if-eqz v2, :cond_1

    .line 18
    :try_start_2
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/octopus/ad/d/c;->b(Z)V

    .line 19
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x3

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 24
    const-string v2, "DownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri......"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/d/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 28
    :try_start_3
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 29
    :cond_1
    :try_start_4
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 30
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 31
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v4, 0x1

    .line 32
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 34
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 35
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->c:Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/octopus/ad/DownloadService;->a:J

    .line 36
    const-string v0, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReqId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/octopus/ad/DownloadService;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 38
    iget-wide v4, p0, Lcom/octopus/ad/DownloadService;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\u2026"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    const-string v0, "DownloadService"

    const-string v1, "BEGIN_DOWNLOAD!"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$b$a;->a()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 46
    :goto_1
    :try_start_5
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    :try_start_6
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    .line 50
    :cond_4
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 55
    :goto_3
    :try_start_7
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 56
    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public static synthetic b(Lcom/octopus/ad/DownloadService;)Landroid/app/DownloadManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/DownloadService;->c:Landroid/app/DownloadManager;

    return-object p0
.end method

.method private static b(Landroid/content/Context;J)Ljava/io/File;
    .locals 4

    .line 10
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/16 p1, 0x8

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    const-string p1, "local_uri"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method private b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->d:Lcom/octopus/ad/DownloadService$a;

    const-string v1, "DownloadService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/octopus/ad/DownloadService;->d:Lcom/octopus/ad/DownloadService$a;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    iput-object v2, p0, Lcom/octopus/ad/DownloadService;->d:Lcom/octopus/ad/DownloadService$a;

    .line 5
    const-string v0, "unregisterContentObserver()"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->e:Lcom/octopus/ad/DownloadService$b;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    iput-object v2, p0, Lcom/octopus/ad/DownloadService;->e:Lcom/octopus/ad/DownloadService$b;

    .line 9
    const-string v0, "unregisterReceiver()"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/octopus/ad/d/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    const-string v0, "DownloadService"

    const-string v1, "--appUpdate downloadApk start--"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/octopus/ad/internal/c/c;->a()Lcom/octopus/ad/internal/c/c$a;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/DownloadService;->f:Lcom/octopus/ad/internal/c/c$a;

    .line 23
    new-instance v1, Lcom/octopus/ad/DownloadService$1;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/DownloadService$1;-><init>(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/d/b;)V

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/c/c$a;->a(Lcom/octopus/ad/internal/c/c$b;)V

    .line 24
    sget-object v0, Lcom/octopus/ad/DownloadService;->f:Lcom/octopus/ad/internal/c/c$a;

    new-instance v1, Lcom/octopus/ad/internal/c/c$d;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/octopus/ad/internal/c/c$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/c/c$a;->a(Lcom/octopus/ad/internal/c/c$d;)V

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 2
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/d/c;->a()Lcom/octopus/ad/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    const-string v1, "DownloadService"

    const-string v2, "not have package status..."

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/OctopusAdSdkController;->getAuthorities()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/OctopusAdSdkController;->getAuthorities()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/DownloadService;->b:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".octopus.provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/DownloadService;->b:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/DownloadService;->b:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/d/b;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/d/b/c;->a(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v0}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/d/b;)V

    return-void
.end method

.method private c(Lcom/octopus/ad/d/b;)V
    .locals 2

    .line 16
    const-string v0, "DownloadService"

    const-string v1, "BEGIN_INSTALL!"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$b$a;->c()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/DownloadService;->f:Lcom/octopus/ad/internal/c/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/internal/c/c$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-object v1, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->i:Ljava/util/HashMap;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iput-object v1, p0, Lcom/octopus/ad/DownloadService;->i:Ljava/util/HashMap;

    .line 26
    .line 27
    :cond_3
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/octopus/ad/d/c;->f()V

    .line 32
    .line 33
    .line 34
    const-string v0, "DownloadService"

    .line 35
    .line 36
    const-string v1, "releaseResources()"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 61
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/DownloadService;->c:Landroid/app/DownloadManager;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 66
    :goto_1
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DownloadService"

    .line 5
    .line 6
    const-string v1, "DownloadService onCreate()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "download"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/DownloadManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/octopus/ad/DownloadService;->c:Landroid/app/DownloadManager;

    .line 20
    .line 21
    new-instance v0, Lcom/octopus/ad/DownloadService$a;

    .line 22
    .line 23
    new-instance v1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/DownloadService$a;-><init>(Lcom/octopus/ad/DownloadService;Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/octopus/ad/DownloadService;->d:Lcom/octopus/ad/DownloadService$a;

    .line 32
    .line 33
    new-instance v0, Lcom/octopus/ad/DownloadService$b;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/DownloadService$b;-><init>(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/DownloadService$1;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/octopus/ad/DownloadService;->e:Lcom/octopus/ad/DownloadService$b;

    .line 40
    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/octopus/ad/DownloadService;->g:Ljava/util/HashMap;

    .line 47
    .line 48
    new-instance v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/octopus/ad/DownloadService;->h:Ljava/util/HashMap;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/octopus/ad/DownloadService;->i:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/octopus/ad/DownloadService;->a()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DownloadService"

    .line 5
    .line 6
    const-string v1, "DownloadService onDestroy()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/octopus/ad/DownloadService;->b()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/octopus/ad/DownloadService;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const-string v0, "DownloadService"

    .line 6
    .line 7
    const-string v1, "DownloadService onStartCommand()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/octopus/ad/DownloadService;->c()V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
