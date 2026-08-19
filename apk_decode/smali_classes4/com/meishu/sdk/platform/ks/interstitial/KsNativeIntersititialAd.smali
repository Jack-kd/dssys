.class public Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

.field private ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V

    .line 4
    invoke-static {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoWidth()I

    move-result v0

    .line 7
    iget-object v3, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v3}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoHeight()I

    move-result v3

    if-le v3, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsImage;

    .line 11
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    move-result v3

    .line 12
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    move-result v4

    .line 13
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    move-result v5

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    move-result v0

    if-le v5, v0, :cond_2

    :goto_0
    move v0, v3

    move v3, v4

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    move v0, v3

    .line 14
    :goto_1
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    const-string v4, "isVideoAutoPlay"

    iget-object v5, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsVideoAutoPlay()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    const-string v4, "act_type"

    iget-object v5, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-string v4, "layout_type"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    const-string v1, "layout_width"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    const-string v0, "layout_height"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    :cond_4
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 22
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V

    .line 25
    invoke-static {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoWidth()I

    move-result v0

    .line 28
    iget-object v3, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v3}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoHeight()I

    move-result v3

    if-le v3, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsImage;

    .line 32
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    move-result v3

    .line 33
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    move-result v4

    .line 34
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    move-result v5

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    move-result v0

    if-le v5, v0, :cond_2

    :goto_0
    move v0, v3

    move v3, v4

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    move v0, v3

    .line 35
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v4, "isVideoAutoPlay"

    iget-object v5, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsVideoAutoPlay()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    const-string v4, "act_type"

    iget-object v5, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string v4, "layout_type"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v1, "layout_width"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const-string v0, "layout_height"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    :cond_4
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 43
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
