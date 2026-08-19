.class Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/RewardVideoAd$RewardVideoLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

.field public final synthetic val$rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;Lcom/miui/zeus/mimo/sdk/RewardVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->val$rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdLoadFailed, code: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", msg: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MimoRewardAdWrapper"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/mimo/MimoPlatformError;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/mimo/MimoPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;->access$300(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onAdLoadSuccess()V
    .locals 3

    .line 1
    const-string v0, "MimoRewardAdWrapper"

    .line 2
    .line 3
    const-string v1, "send onBannerAdLoadSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;->access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->val$rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;-><init>(Lcom/miui/zeus/mimo/sdk/RewardVideoAd;Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;->access$100(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;->access$200(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public onAdRequestSuccess()V
    .locals 0

    return-void
.end method
