.class Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;
.super Lcom/huawei/hms/ads/reward/RewardAdLoadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/ads/reward/RewardAdLoadListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRewardAdFailedToLoad(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "\u52a0\u8f7d\u51fa\u9519"

    .line 10
    .line 11
    invoke-direct {v0, v2, p1, v1}, Lcom/meishu/sdk/platform/huawei/HWPlatformError;-><init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onRewardedLoaded()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)Lcom/huawei/hms/ads/reward/RewardAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hms/ads/reward/RewardAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/huawei/hms/ads/BiddingInfo;->getPrice()Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/high16 v1, 0x42c80000    # 100.0f

    .line 28
    .line 29
    mul-float/2addr v0, v1

    .line 30
    float-to-int v0, v0

    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)Lcom/huawei/hms/ads/reward/RewardAd;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;-><init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;Lcom/huawei/hms/ads/reward/RewardAd;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 75
    .line 76
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 86
    .line 87
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method
