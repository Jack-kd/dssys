.class final Lcom/kwad/components/ad/c/g$4;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/g;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/api/KsBannerAd;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

.field final synthetic ch:J

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic co:Lcom/kwad/sdk/api/KsBannerAd;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;JLcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/api/KsBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/g$4;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/kwad/components/ad/c/g$4;->ch:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/kwad/components/ad/c/g$4;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/kwad/components/ad/c/g$4;->co:Lcom/kwad/sdk/api/KsBannerAd;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    const-string v0, "bannerAd_"

    .line 2
    .line 3
    const-string v1, "onBannerAdCacheSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$4;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-wide v3, p0, Lcom/kwad/components/ad/c/g$4;->ch:J

    .line 19
    .line 20
    sub-long/2addr v1, v3

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/kwad/components/ad/c/c/c;->aw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$4;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/c/g$4;->co:Lcom/kwad/sdk/api/KsBannerAd;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;->onBannerAdLoad(Lcom/kwad/sdk/api/KsBannerAd;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
