.class Lcom/octopus/ad/DownloadService$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/DownloadService;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/DownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/DownloadService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/DownloadService$b;-><init>(Lcom/octopus/ad/DownloadService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "extra_download_id"

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-string p2, "download"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/app/DownloadManager;

    .line 28
    .line 29
    new-instance v2, Landroid/app/DownloadManager$Query;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    new-array v3, v3, [J

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput-wide v0, v3, v4

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    const-string v2, "status"

    .line 56
    .line 57
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    const/16 v2, 0x8

    .line 66
    .line 67
    if-ne p2, v2, :cond_1

    .line 68
    .line 69
    iget-object p2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    .line 70
    .line 71
    invoke-static {p2, p1, v0, v1}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;Landroid/content/Context;J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Lcom/octopus/ad/DownloadService;->a(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void

    .line 91
    :goto_0
    const-string p2, "OctopusAd"

    .line 92
    .line 93
    const-string v0, "A Throwable Caught"

    .line 94
    .line 95
    invoke-static {p2, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
