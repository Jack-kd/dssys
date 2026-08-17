.class public Lcom/sigmob/sdk/newInterstitial/a;
.super Lcom/sigmob/sdk/manager/f;

# interfaces
.implements Lcom/sigmob/sdk/newInterstitial/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/manager/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdShowFail: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    sget-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v7, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-virtual {p0, v7, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/videoAd/m;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v4

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    const-string v3, "play"

    iget-object v5, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    iput-object v1, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    return-void
.end method

.method public o()Lcom/sigmob/sdk/mraid/i;
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/f;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/newInterstitial/f;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    return-object v0
.end method

.method public p(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/f;->o(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public q(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAdSkip"

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public r(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAdShow"

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
