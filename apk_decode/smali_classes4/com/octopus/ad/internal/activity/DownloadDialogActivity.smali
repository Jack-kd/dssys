.class public Lcom/octopus/ad/internal/activity/DownloadDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;,
        Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DownloadDialogActivity"

.field private static h:Lcom/octopus/ad/internal/c/c$a;


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:Landroid/app/DownloadManager;

.field private e:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

.field private f:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

.field private g:Lcom/octopus/ad/widget/FlickerProgressBar;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/octopus/ad/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/octopus/ad/d/c;

.field private m:Lcom/octopus/ad/model/ComplianceInfo;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Lcom/octopus/ad/model/ComplianceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 3

    .line 56
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    const-string v1, "onReceived...download finish...begin install\uff01"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 60
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/d/b;

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/c$b$a;->b()Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V

    .line 65
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V
    .locals 4

    .line 76
    :try_start_0
    invoke-static {p1}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/octopus/ad/d/c;->b(Z)V

    .line 77
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 78
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p3}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    .line 81
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 82
    sget-object v1, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b(Lcom/octopus/ad/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 86
    :goto_0
    const-string p2, "OctopusAd"

    const-string p3, "An Exception Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/octopus/ad/d/b;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloading..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "...please not repeat click"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p1, "\u6b63\u5728\u4e0b\u8f7d\u2026\u8bf7\u52ff\u91cd\u590d\u70b9\u51fb"

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "application/vnd.android.package-archive"

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    const-string v5, "android.intent.action.VIEW"

    if-eqz v1, :cond_1

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/octopus/ad/d/c;->b(Z)V

    .line 13
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x3

    .line 17
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 18
    sget-object v3, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri......"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b(Lcom/octopus/ad/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkFile.exists():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 23
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->n:Z

    if-eqz v1, :cond_2

    .line 24
    iget-wide v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Ljava/lang/Long;)V

    .line 25
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g:Lcom/octopus/ad/widget/FlickerProgressBar;

    invoke-virtual {v0}, Lcom/octopus/ad/widget/FlickerProgressBar;->b()V

    .line 26
    iput-boolean v4, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->n:Z

    .line 27
    const-string v0, "\u5df2\u53d6\u6d88\u4e0b\u8f7d"

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->n:Z

    .line 29
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 30
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 31
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 32
    invoke-virtual {v4, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 34
    invoke-virtual {v4, v2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 35
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->d:Landroid/app/DownloadManager;

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b:J

    .line 36
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReqId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 38
    iget-wide v6, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 40
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_4
    const-string v1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\u2026"

    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Ljava/lang/String;)V

    .line 42
    const-string v1, "BEGIN_DOWNLOAD!"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 44
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$b$a;->a()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 46
    :goto_0
    sget-object v1, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager download fail:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_2
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 49
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    .line 50
    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 55
    :goto_2
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip browser fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/content/Context;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/d/b;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Lcom/octopus/ad/d/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$7;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;J)Ljava/io/File;
    .locals 4

    .line 42
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    .line 44
    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/16 p1, 0x8

    .line 45
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 47
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    const-string p1, "local_uri"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 50
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method private b()V
    .locals 11

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->l:Lcom/octopus/ad/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$style;->OctopusAlertDialogStyle:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/octopus/ad/R$layout;->oct_dialog_download:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    sget v2, Lcom/octopus/ad/R$id;->iv_app_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 11
    sget v4, Lcom/octopus/ad/R$id;->tv_app_name:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 12
    sget v5, Lcom/octopus/ad/R$id;->tv_app_version:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 13
    sget v6, Lcom/octopus/ad/R$id;->tv_app_developer:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 14
    sget v7, Lcom/octopus/ad/R$id;->tv_app_permission:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 15
    sget v8, Lcom/octopus/ad/R$id;->tv_app_privacy:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 16
    sget v9, Lcom/octopus/ad/R$id;->tv_app_function:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 17
    sget v10, Lcom/octopus/ad/R$id;->btn_download:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/octopus/ad/widget/FlickerProgressBar;

    iput-object v10, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g:Lcom/octopus/ad/widget/FlickerProgressBar;

    .line 18
    sget v10, Lcom/octopus/ad/R$id;->iv_close:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 19
    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v3

    iget-object v10, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    invoke-virtual {v10}, Lcom/octopus/ad/model/ComplianceInfo;->getAppIconURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 20
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    invoke-virtual {v2}, Lcom/octopus/ad/model/ComplianceInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    const-string v2, "\u7248\u672c\u53f7\uff1a%s"

    iget-object v3, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    invoke-virtual {v3}, Lcom/octopus/ad/model/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    const-string v2, "\u5f00\u53d1\u8005\uff1a%s"

    iget-object v3, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    invoke-virtual {v3}, Lcom/octopus/ad/model/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/d/c;->a()Lcom/octopus/ad/d/b;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 24
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g:Lcom/octopus/ad/widget/FlickerProgressBar;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v4}, Lcom/octopus/ad/widget/FlickerProgressBar;->setProgress(F)V

    .line 27
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g:Lcom/octopus/ad/widget/FlickerProgressBar;

    invoke-virtual {v2, v3}, Lcom/octopus/ad/widget/FlickerProgressBar;->setStatus(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 29
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 30
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 31
    new-instance v2, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$1;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v2, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$2;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v2, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$3;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g:Lcom/octopus/ad/widget/FlickerProgressBar;

    new-instance v3, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$4;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$4;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance v2, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 37
    :goto_2
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lcom/octopus/ad/d/b;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    const-string v1, "BEGIN_INSTALL!"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$b$a;->c()Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/d/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c(Lcom/octopus/ad/d/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    .line 2
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    const-string v1, "startDownload"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->d:Landroid/app/DownloadManager;

    .line 4
    new-instance v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

    .line 5
    new-instance v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/internal/activity/DownloadDialogActivity$1;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->f:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

    .line 9
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->d()V

    .line 10
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e()V

    return-void
.end method

.method private c(Lcom/octopus/ad/d/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    const-string v1, "--appUpdate downloadApk start--"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/octopus/ad/internal/c/c;->a()Lcom/octopus/ad/internal/c/c$a;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->h:Lcom/octopus/ad/internal/c/c$a;

    .line 13
    new-instance v1, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$8;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/d/b;)V

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/c/c$a;->a(Lcom/octopus/ad/internal/c/c$b;)V

    .line 14
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->h:Lcom/octopus/ad/internal/c/c$a;

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

.method public static synthetic d(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Landroid/app/DownloadManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->d:Landroid/app/DownloadManager;

    return-object p0
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://downloads/my_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->f:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lcom/octopus/ad/internal/activity/a;->a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->f:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :goto_0
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Lcom/octopus/ad/widget/FlickerProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g:Lcom/octopus/ad/widget/FlickerProgressBar;

    return-object p0
.end method

.method private e()V
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
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    sget-object v1, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    const-string v2, "not have package status..."

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

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

    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/d/b;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/d/b/c;->a(Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$6;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/d/b;)V

    invoke-static {v1}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 3
    iget-wide v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {p0, v0}, Lcom/octopus/ad/d/b/i;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/d/b;

    if-eqz v1, :cond_2

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/octopus/ad/d/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    sget-object v2, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    const-string v3, "apkFile delete success"

    invoke-static {v2, v3}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/octopus/ad/d/c;->b(Z)V

    .line 10
    invoke-virtual {v1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/octopus/ad/d/b;->h()Lcom/octopus/ad/a/c$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/c$b$a;->d()Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/octopus/ad/internal/c/n;->a(Ljava/util/List;)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 16
    :goto_1
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;

    .line 16
    .line 17
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "unregisterContentObserver()"

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->f:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->f:Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;

    .line 32
    .line 33
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "unregisterReceiver()"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->h:Lcom/octopus/ad/internal/c/c$a;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iput-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

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
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

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

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 70
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->d:Landroid/app/DownloadManager;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 74
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

    .line 75
    :goto_1
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->l:Lcom/octopus/ad/d/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/octopus/ad/d/c;->b()Lcom/octopus/ad/model/ComplianceInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->m:Lcom/octopus/ad/model/ComplianceInfo;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "DownloadService onDestroy()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->l:Lcom/octopus/ad/d/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/d/c;->d()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->g()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    const-string v1, "OctopusAd"

    .line 27
    .line 28
    const-string v2, "A Throwable Caught"

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
