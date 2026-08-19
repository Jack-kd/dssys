.class public abstract Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/core/loader/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
