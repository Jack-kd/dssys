.class Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;->getCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onAdReady(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;)V
    .locals 7

    .line 2
    sget-object v0, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    const-string v1, "ms: onAdReady rewardVideoAd is empty"

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    invoke-static {v1, p1}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->a(Lcom/anythink/network/meishu/MsATInterstitialAdapter;Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;)Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 5
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    iget-boolean v1, p1, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->d:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->a(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-wide v3, v1

    .line 9
    :goto_0
    sget-object p1, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->TAG:Ljava/lang/String;

    cmpg-double p1, v3, v1

    if-gtz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    iget-object p1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    return-void

    .line 11
    :cond_2
    new-instance p1, Lcom/anythink/network/meishu/MsATBiddingNotice;

    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->a(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/anythink/network/meishu/MsATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    iget-object v1, v1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v3, v4, v0, p1, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {v1, p1, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    return-void

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->d(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->e(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/anythink/network/meishu/MsATInterstitialAdapter$b;->onAdReady(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;)V

    return-void
.end method
