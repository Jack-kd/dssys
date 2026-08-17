.class public Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getRewardVideoAd()Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/a;->getSdkAd()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public isAdValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/a;->isAdValid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->setApiInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->setApiRewardAdMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->showAd()V

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->showAd(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
