.class public Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a(Lcom/meishu/sdk/core/download/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/download/b;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/download/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->a:Lcom/meishu/sdk/core/download/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->a:Lcom/meishu/sdk/core/download/b;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/meishu/sdk/core/download/b;->f:J

    .line 4
    .line 5
    long-to-float v1, v1

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    mul-float/2addr v1, v2

    .line 9
    iget-wide v2, v0, Lcom/meishu/sdk/core/download/b;->e:J

    .line 10
    .line 11
    long-to-float v0, v2

    .line 12
    div-float/2addr v1, v0

    .line 13
    const/high16 v0, 0x42c80000    # 100.0f

    .line 14
    .line 15
    mul-float/2addr v1, v0

    .line 16
    float-to-int v0, v1

    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_0
    sget-object v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v2, v0}, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;->onDownloadProgress(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 45
    .line 46
    iget-object v4, v3, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    iget-object v3, v3, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    iget-object v2, v2, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    .line 55
    .line 56
    const-string v3, "ms_notification_progressText"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/a1;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    .line 65
    .line 66
    const-string v4, "ms_notification_pregressBar"

    .line 67
    .line 68
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/a1;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    sget v2, Lcom/meishu/sdk/R$id;->ms_notification_progressText:I

    .line 75
    .line 76
    :cond_2
    if-nez v3, :cond_3

    .line 77
    .line 78
    sget v3, Lcom/meishu/sdk/R$id;->ms_notification_pregressBar:I

    .line 79
    .line 80
    :cond_3
    iget-object v4, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 81
    .line 82
    iget-object v4, v4, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, "%"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->a:Lcom/meishu/sdk/core/download/b;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/meishu/sdk/core/download/b;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 137
    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/meishu/sdk/core/utils/l0;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;->b:Lcom/meishu/sdk/core/utils/DownloadUtils$a;

    .line 149
    .line 150
    iget-object v2, v2, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/l0;->a:Landroid/app/Notification;

    .line 155
    .line 156
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    :cond_4
    return-void

    .line 160
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    return-void
.end method
