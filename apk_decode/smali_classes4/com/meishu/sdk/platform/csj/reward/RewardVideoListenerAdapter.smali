.class public Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RewardVideoListenerAdapter"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

.field private apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

.field private rewardVideoAdAdapter:Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;Lcom/meishu/sdk/core/ad/reward/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;)Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/core/ad/reward/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "RewardVideoListenerAdapter"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onError, code: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", msg: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;-><init>(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onRewardVideoCached()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/reward/a;->onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V

    :cond_0
    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 0

    .line 1
    return-void
.end method
