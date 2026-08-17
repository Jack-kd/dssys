.class Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/RewardVideoAd$RewardVideoInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->showReward(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

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
    .locals 3

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "send onAdClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "send onAdDismissed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onRenderFail, msg: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MimoRewardAd"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public onAdPresent()V
    .locals 2

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "send onAdPresent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onPicAdEnd()V
    .locals 2

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "onPicAdEnd"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onReward()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "send onVideoComplete"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$100(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->access$100(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "onVideoPause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoSkip()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 2

    .line 1
    const-string v0, "MimoRewardAd"

    .line 2
    .line 3
    const-string v1, "onVideoStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
