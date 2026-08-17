.class Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->O(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->K(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->L(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->M(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->N(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

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

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->h(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p1, p2, p3, v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;ZILandroid/os/Bundle;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSkippedVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

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

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$b;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->g(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    const-string v2, "Callback VideoError"

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
