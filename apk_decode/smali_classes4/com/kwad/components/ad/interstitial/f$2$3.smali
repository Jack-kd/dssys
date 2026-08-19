.class final Lcom/kwad/components/ad/interstitial/f$2$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/interstitial/f$2;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dN:Ljava/util/List;

.field final synthetic lv:Lcom/kwad/components/ad/interstitial/f$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/interstitial/f$2;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->lv:Lcom/kwad/components/ad/interstitial/f$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->dN:Ljava/util/List;

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
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->dN:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/KsAdLoadManager;->b(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "insertAd_"

    .line 11
    .line 12
    const-string v1, "onInterstitialAdCacheSuccess"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->lv:Lcom/kwad/components/ad/interstitial/f$2;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 20
    .line 21
    iget v0, v0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->lv:Lcom/kwad/components/ad/interstitial/f$2;

    .line 28
    .line 29
    iget-wide v3, v3, Lcom/kwad/components/ad/interstitial/f$2;->ch:J

    .line 30
    .line 31
    sub-long/2addr v1, v3

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->lv:Lcom/kwad/components/ad/interstitial/f$2;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f$2;->li:Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f$2$3;->dN:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;->onInterstitialAdLoad(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
