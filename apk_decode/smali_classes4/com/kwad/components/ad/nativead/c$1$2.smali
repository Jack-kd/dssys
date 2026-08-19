.class final Lcom/kwad/components/ad/nativead/c$1$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/c$1;->b(Lcom/kwad/sdk/core/response/model/AdResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dN:Ljava/util/List;

.field final synthetic pp:Lcom/kwad/components/ad/nativead/c$1;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/c$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c$1$2;->pp:Lcom/kwad/components/ad/nativead/c$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/c$1$2;->dN:Ljava/util/List;

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
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c$1$2;->dN:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/KsAdLoadManager;->b(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c$1$2;->pp:Lcom/kwad/components/ad/nativead/c$1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/components/ad/nativead/c$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

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
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/c$1$2;->pp:Lcom/kwad/components/ad/nativead/c$1;

    .line 21
    .line 22
    iget-wide v3, v3, Lcom/kwad/components/ad/nativead/c$1;->ch:J

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
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c$1$2;->pp:Lcom/kwad/components/ad/nativead/c$1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kwad/components/ad/nativead/c$1;->po:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c$1$2;->dN:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onNativeAdLoad(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
