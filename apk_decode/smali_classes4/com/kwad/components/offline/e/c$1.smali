.class final Lcom/kwad/components/offline/e/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/offline/api/InitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/offline/e/c;->a(Landroid/content/Context;ZLcom/kwad/components/offline/api/tk/ITkOfflineCompo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic axX:Lcom/kwad/components/offline/api/tk/ITkOfflineCompo;

.field final synthetic axY:Z

.field final synthetic axZ:J

.field final synthetic aya:J

.field final synthetic ayb:Lcom/kwad/components/offline/e/c;

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kwad/components/offline/e/c;Lcom/kwad/components/offline/api/tk/ITkOfflineCompo;ZJJLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/offline/e/c$1;->ayb:Lcom/kwad/components/offline/e/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/offline/e/c$1;->axX:Lcom/kwad/components/offline/api/tk/ITkOfflineCompo;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/offline/e/c$1;->axY:Z

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/kwad/components/offline/e/c$1;->axZ:J

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/kwad/components/offline/e/c$1;->aya:J

    .line 10
    .line 11
    iput-object p8, p0, Lcom/kwad/components/offline/e/c$1;->dK:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/offline/e/c$1;->ayb:Lcom/kwad/components/offline/e/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/kwad/components/offline/e/c;->a(Lcom/kwad/components/offline/e/c;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess(Z)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/components/offline/e/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/offline/e/c$1;->axX:Lcom/kwad/components/offline/api/tk/ITkOfflineCompo;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/kwad/components/offline/e/b;-><init>(Lcom/kwad/components/offline/api/tk/ITkOfflineCompo;)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/kwad/components/core/offline/a/f/c;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/kwad/sdk/components/d;->a(Ljava/lang/Class;Lcom/kwad/sdk/components/b;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/offline/e/c$1;->ayb:Lcom/kwad/components/offline/e/c;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/kwad/components/offline/e/c;->a(Lcom/kwad/components/offline/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    move v4, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v2

    .line 29
    :goto_0
    iget-boolean p1, p0, Lcom/kwad/components/offline/e/c$1;->axY:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    move v5, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v5, v2

    .line 36
    :goto_1
    iget-object v3, p0, Lcom/kwad/components/offline/e/c$1;->ayb:Lcom/kwad/components/offline/e/c;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iget-wide v6, p0, Lcom/kwad/components/offline/e/c$1;->axZ:J

    .line 43
    .line 44
    sub-long v6, v1, v6

    .line 45
    .line 46
    iget-wide v8, p0, Lcom/kwad/components/offline/e/c$1;->aya:J

    .line 47
    .line 48
    invoke-static/range {v3 .. v9}, Lcom/kwad/components/offline/e/c;->a(Lcom/kwad/components/offline/e/c;IIJJ)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/kwad/components/offline/api/tk/TkLoggerReporter;->get()Lcom/kwad/components/offline/api/tk/TkLoggerReporter;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "ad_client_apm_log"

    .line 56
    .line 57
    new-instance v2, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 58
    .line 59
    invoke-direct {v2}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    invoke-virtual {v2, v3}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setDownloadState(I)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-wide v6, p0, Lcom/kwad/components/offline/e/c$1;->aya:J

    .line 68
    .line 69
    invoke-virtual {v2, v6, v7}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setOfflineLoadTime(J)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    iget-wide v8, p0, Lcom/kwad/components/offline/e/c$1;->axZ:J

    .line 78
    .line 79
    sub-long/2addr v6, v8

    .line 80
    invoke-virtual {v2, v6, v7}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setSoLoadTime(J)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/kwad/sdk/o;->GW()J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    sub-long/2addr v6, v8

    .line 97
    invoke-virtual {v2, v6, v7}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setInitSdkTimeConsuming(J)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {}, Lcom/kwad/library/solder/lib/i;->DQ()Lcom/kwad/library/solder/lib/i;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/kwad/library/solder/lib/i;->DK()Lcom/kwad/library/solder/lib/ext/c;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/kwad/library/solder/lib/ext/c;->El()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setThreadPoolCoreSize(I)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, v5}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setOfflineSource(I)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2, v4}, Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;->setSoSource(I)Lcom/kwad/components/offline/api/tk/model/report/TKDownloadMsg;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/kwad/components/offline/api/core/model/BaseOfflineCompoJsonParse;->toJson()Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {p1, v1, v2}, Lcom/kwad/components/offline/api/tk/TkLoggerReporter;->reportTKSOLoad(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/kwad/components/offline/e/c$1;->ayb:Lcom/kwad/components/offline/e/c;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/kwad/components/offline/e/c;->b(Lcom/kwad/components/offline/e/c;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lcom/kwad/components/offline/e/c$1$1;

    .line 138
    .line 139
    invoke-direct {p1, p0, v0}, Lcom/kwad/components/offline/e/c$1$1;-><init>(Lcom/kwad/components/offline/e/c$1;Lcom/kwad/components/offline/e/b;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/kwad/components/core/request/h;->b(Lcom/kwad/components/core/request/h$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    move-object p1, v0

    .line 148
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
