.class Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRewardAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$500(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRewardAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$600(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRewardAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2, v0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$800(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRewardAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$300(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public onRewardAdPlayEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRewardAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRewardAdPlayStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$400(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRewardAdPreLoadFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRewardAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRewardAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->access$700(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
