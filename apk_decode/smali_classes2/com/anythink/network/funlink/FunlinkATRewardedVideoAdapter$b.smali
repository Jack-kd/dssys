.class Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->d(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->e(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->b(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->c(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string p1, "unknown error"

    .line 22
    .line 23
    :goto_1
    sget-object v1, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->h(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->i(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onSkipVideo()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->l(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->m(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onVideoPrepared()V
    .locals 9

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->a(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/fl/saas/adx/api/FLVideo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->a(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/fl/saas/adx/api/FLVideo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->f(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->a(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/fl/saas/adx/api/FLVideo;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->a(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/fl/saas/adx/api/FLVideo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-long v4, v0

    .line 47
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 48
    .line 49
    iget-object v6, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->g(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const/4 v0, 0x0

    .line 56
    new-array v8, v0, [Lcom/anythink/core/api/BaseAd;

    .line 57
    .line 58
    invoke-virtual/range {v1 .. v8}, Lcom/anythink/network/funlink/FunlinkATInitManager;->handleAdCacheLoadedCallback(ZLjava/lang/Object;JLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 63
    .line 64
    const-string v1, ""

    .line 65
    .line 66
    const-string v2, "rewardVideoAd is null"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onVideoReward(D)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->j(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;->k(Lcom/anythink/network/funlink/FunlinkATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
