.class final Lcom/kwad/components/ad/feed/e$2$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/feed/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/e$2$3;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hH:Lcom/kwad/components/ad/feed/c;

.field final synthetic hI:Lcom/kwad/sdk/api/KsFeedAd;

.field final synthetic hJ:[I

.field final synthetic hK:I

.field final synthetic hL:Lcom/kwad/components/ad/feed/e$2$3;

.field final synthetic ho:I

.field final synthetic hp:J


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/e$2$3;Lcom/kwad/components/ad/feed/c;Lcom/kwad/sdk/api/KsFeedAd;IJ[II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hH:Lcom/kwad/components/ad/feed/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hI:Lcom/kwad/sdk/api/KsFeedAd;

    .line 6
    .line 7
    iput p4, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->ho:I

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hp:J

    .line 10
    .line 11
    iput-object p7, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hJ:[I

    .line 12
    .line 13
    iput p8, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hK:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final e(ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ksFeedAd onLoadFinished"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hH:Lcom/kwad/components/ad/feed/c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "KsAdFeedLoadManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hI:Lcom/kwad/sdk/api/KsFeedAd;

    .line 23
    .line 24
    check-cast v0, Lcom/kwad/components/ad/feed/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/kwad/components/ad/feed/c;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v3, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->ho:I

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    iget-wide v6, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hp:J

    .line 37
    .line 38
    sub-long/2addr v4, v6

    .line 39
    move v2, p1

    .line 40
    move-object v6, p2

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IIJLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hJ:[I

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    aget v0, p1, p2

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    add-int/2addr v0, v1

    .line 51
    aput v0, p1, p2

    .line 52
    .line 53
    iget p1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hK:I

    .line 54
    .line 55
    if-ne v0, p1, :cond_0

    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iget-object p2, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/kwad/components/ad/feed/e$2$3;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 64
    .line 65
    iget-wide v4, p2, Lcom/kwad/components/ad/feed/e$2;->hF:J

    .line 66
    .line 67
    sub-long/2addr v2, v4

    .line 68
    invoke-static {p1, v2, v3}, Lcom/kwad/components/ad/feed/monitor/b;->a(IJ)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/kwad/components/ad/feed/e$2$3;->dN:Ljava/util/List;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/KsAdLoadManager;->b(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/kwad/components/ad/feed/e$2$3;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 87
    .line 88
    iget p1, p1, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    iget-object p2, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 95
    .line 96
    iget-object p2, p2, Lcom/kwad/components/ad/feed/e$2$3;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 97
    .line 98
    iget-wide v4, p2, Lcom/kwad/components/ad/feed/e$2;->ch:J

    .line 99
    .line 100
    sub-long/2addr v2, v4

    .line 101
    invoke-static {p1, v2, v3, v1}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    move-object p1, v0

    .line 107
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 111
    .line 112
    iget-object p2, p1, Lcom/kwad/components/ad/feed/e$2$3;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/kwad/components/ad/feed/e$2;->gZ:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/kwad/components/ad/feed/e$2$3;->dN:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {p2, p1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/kwad/components/ad/feed/e$2$3;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 128
    .line 129
    .line 130
    move-result-wide p1

    .line 131
    iget-object v0, p0, Lcom/kwad/components/ad/feed/e$2$3$1;->hL:Lcom/kwad/components/ad/feed/e$2$3;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/kwad/components/ad/feed/e$2$3;->dN:Ljava/util/List;

    .line 134
    .line 135
    invoke-static {p1, p2, v0}, Lcom/kwad/components/ad/feed/monitor/b;->a(JLjava/util/List;)V

    .line 136
    .line 137
    .line 138
    :cond_0
    return-void
.end method
