.class public Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;
.super Lcom/sigmob/sdk/c;

# interfaces
.implements Lcom/sigmob/sdk/videoAd/k;
.implements Lcom/sigmob/sdk/videoAd/l;
.implements Lcom/sigmob/sdk/videoAd/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/c<",
        "Lcom/sigmob/sdk/videoAd/e;",
        ">;",
        "Lcom/sigmob/sdk/videoAd/k;",
        "Lcom/sigmob/sdk/videoAd/l;",
        "Lcom/sigmob/sdk/videoAd/m;"
    }
.end annotation


# instance fields
.field protected m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/c;-><init>(Lcom/sigmob/windad/WindAdRequest;ZI)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/c;->setAdLoadListener(Lcom/sigmob/sdk/videoAd/k;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/videoAd/l;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardVideo/b;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sigmob/windad/rewardVideo/b;-><init>(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Lcom/sigmob/sdk/videoAd/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Lcom/sigmob/sdk/videoAd/l;Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/sigmob/sdk/videoAd/e;

    const-string v1, "reward_callback"

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardVideo/WindRewardInfo;->getOptions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdRewarded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-interface {p2, p1, p3}, Lcom/sigmob/sdk/videoAd/l;->onVideoAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Lcom/sigmob/sdk/videoAd/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->a(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Lcom/sigmob/sdk/videoAd/l;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/sdk/videoAd/l;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->a(Lcom/sigmob/sdk/videoAd/l;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/videoAd/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    check-cast v0, Lcom/sigmob/sdk/videoAd/e;

    new-instance v1, Lcom/sigmob/windad/rewardVideo/a;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardVideo/a;-><init>(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/sdk/videoAd/l;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/l;)V

    return-void
.end method

.method public bridge synthetic createAdManager()Lcom/sigmob/sdk/manager/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->createAdManager()Lcom/sigmob/sdk/videoAd/e;

    move-result-object v0

    return-object v0
.end method

.method public createAdManager()Lcom/sigmob/sdk/videoAd/e;
    .locals 2

    .line 2
    new-instance v0, Lcom/sigmob/sdk/videoAd/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoAd/e;-><init>(Z)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    invoke-super {p0}, Lcom/sigmob/sdk/c;->destroy()V

    return-void
.end method

.method public loadAd()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/c;->loadAd()Z

    move-result v0

    return v0
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/sigmob/sdk/c;->loadAd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPreLoadFail(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPreLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAdShow(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPlayStart(Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPlayEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setWindRewardVideoAdListener(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    return-void
.end method

.method public show(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p0, p0}, Lcom/sigmob/sdk/c;->show(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/sdk/videoAd/l;)Z

    move-result p1

    return p1
.end method
