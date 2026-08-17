.class Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/api/format/SDMRewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

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
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->e(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->f(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->i(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->j(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1}, Lcom/anythink/network/adx/AdxATRewardRetryTaskContractManager;->notifyAdClosedIncompleteRetryReward(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->k(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->l(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->n(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public onAdLoadFail(Lcom/smartdigimkt/sdk/api/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->m(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onAdPlayEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->u(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->v(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdPlayFailed(Lcom/smartdigimkt/sdk/api/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->d(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onAdPlayStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->r(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->s(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->t(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onAdReward()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->p(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->q(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onDeeplinkCallback(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->g(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$a;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->h(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onDeeplinkCallback(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
