.class Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/IRewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

.field public final synthetic val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick(J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->access$000()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "send onAdClick"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 51
    .line 52
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public onAdFailed(ILjava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onAdSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onLandingPageClose()V
    .locals 0

    return-void
.end method

.method public onLandingPageOpen()V
    .locals 0

    return-void
.end method

.method public varargs onReward([Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onVideoPlayClose(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onVideoPlayComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->getRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->val$oppoRewardAd:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->getRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayError(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onVideoPlayError "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
