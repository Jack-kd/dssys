.class Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/activity/DownloadDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/internal/activity/DownloadDialogActivity$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;-><init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V

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
    invoke-static {}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "action\uff1a"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string v0, "extra_download_id"

    .line 38
    .line 39
    const-wide/16 v1, -0x1

    .line 40
    .line 41
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const-string p2, "download"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/app/DownloadManager;

    .line 52
    .line 53
    new-instance v2, Landroid/app/DownloadManager$Query;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    new-array v3, v3, [J

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    aput-wide v0, v3, v4

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_0

    .line 72
    .line 73
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    const-string v2, "status"

    .line 80
    .line 81
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    const/16 v2, 0x8

    .line 90
    .line 91
    if-ne p2, v2, :cond_2

    .line 92
    .line 93
    iget-object p2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 94
    .line 95
    invoke-static {p2, p1, v0, v1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/content/Context;J)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$b;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Ljava/lang/Long;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    const-string p1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    invoke-static {}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "NOTIFICATION_CLICKED"

    .line 132
    .line 133
    invoke-static {p1, p2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    :cond_2
    return-void

    .line 137
    :goto_0
    const-string p2, "OctopusAd"

    .line 138
    .line 139
    const-string v0, "A Throwable Caught"

    .line 140
    .line 141
    invoke-static {p2, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
