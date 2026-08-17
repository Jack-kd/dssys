.class final Lcom/kwad/components/ad/feed/e$2$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/e$2;->b(Lcom/kwad/sdk/core/response/model/AdResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dN:Ljava/util/List;

.field final synthetic hG:Lcom/kwad/components/ad/feed/e$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/e$2;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/e$2$2;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/feed/e$2$2;->dN:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/e$2$2;->dN:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/kwad/components/ad/feed/e$2$2;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 12
    .line 13
    iget-wide v3, v3, Lcom/kwad/components/ad/feed/e$2;->hF:J

    .line 14
    .line 15
    sub-long/2addr v1, v3

    .line 16
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/feed/monitor/b;->a(IJ)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/kwad/components/ad/feed/e$2$2;->dN:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/KsAdLoadManager;->b(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/e$2$2;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 31
    .line 32
    iget v0, v0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iget-object v3, p0, Lcom/kwad/components/ad/feed/e$2$2;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 39
    .line 40
    iget-wide v3, v3, Lcom/kwad/components/ad/feed/e$2;->ch:J

    .line 41
    .line 42
    sub-long/2addr v1, v3

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/e$2$2;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/kwad/components/ad/feed/e$2;->gZ:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/kwad/components/ad/feed/e$2$2;->dN:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/ad/feed/e$2$2;->hG:Lcom/kwad/components/ad/feed/e$2;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iget-object v2, p0, Lcom/kwad/components/ad/feed/e$2$2;->dN:Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/feed/monitor/b;->a(JLjava/util/List;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
