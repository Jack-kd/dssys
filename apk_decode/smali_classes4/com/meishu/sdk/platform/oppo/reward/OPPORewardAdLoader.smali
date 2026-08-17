.class public Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;",
        "Lcom/meishu/sdk/core/ad/reward/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OPPORewardAdLoader"


# instance fields
.field private rewardVideoAdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->rewardVideoAdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->rewardVideoAdList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    check-cast v3, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;->destroyAd()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;->rewardVideoAdList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public loadAd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;-><init>(Lcom/meishu/sdk/core/loader/d;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;

    .line 49
    .line 50
    invoke-direct {v4, p0, v0}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader$1;-><init>(Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2, v3, v4}, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/msp/mobad/api/listener/IRewardVideoAdListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->setRewardAd(Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;->loadAd()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
