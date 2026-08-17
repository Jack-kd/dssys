.class Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/RewardVideoAd$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->l(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->o(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdClose(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->p(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->q(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 14
    .line 15
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->g:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->f:Z

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 20
    .line 21
    iget-boolean v2, v1, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->e:Z

    .line 22
    .line 23
    iget-object v3, v1, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->i(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v4, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(ZLjava/lang/Object;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdSkip(F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRewardVerify(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->c(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 23
    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "at_reward_info"

    .line 39
    .line 40
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->e(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->f(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->g(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardFailed()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "BaiduRewardedVideo: onVideoDownloadFailed"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->r(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->s(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->t(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
