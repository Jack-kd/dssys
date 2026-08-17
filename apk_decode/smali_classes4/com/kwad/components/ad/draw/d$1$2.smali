.class final Lcom/kwad/components/ad/draw/d$1$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/draw/d$1;->b(Lcom/kwad/sdk/core/response/model/AdResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dM:Lcom/kwad/components/ad/draw/d$1;

.field final synthetic dN:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/d$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/draw/d$1$2;->dN:Ljava/util/List;

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
    .locals 6

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/draw/d$1$2;->dN:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/KsAdLoadManager;->b(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 13
    .line 14
    iget v0, v0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-object v3, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 21
    .line 22
    iget-wide v3, v3, Lcom/kwad/components/ad/draw/d$1;->ch:J

    .line 23
    .line 24
    sub-long/2addr v1, v3

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kwad/components/ad/draw/d$1;->dz:Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/components/ad/draw/d$1$2;->dN:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;->onDrawAdLoad(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/kwad/components/ad/draw/d$1$2;->dN:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iget-object v4, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 58
    .line 59
    iget-wide v4, v4, Lcom/kwad/components/ad/draw/d$1;->di:J

    .line 60
    .line 61
    sub-long/2addr v2, v4

    .line 62
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/components/ad/draw/a/d;->c(Lcom/kwad/sdk/internal/api/SceneImpl;IJ)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/kwad/components/ad/draw/d$1$2;->dM:Lcom/kwad/components/ad/draw/d$1;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/kwad/components/ad/draw/a/d;->c(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
