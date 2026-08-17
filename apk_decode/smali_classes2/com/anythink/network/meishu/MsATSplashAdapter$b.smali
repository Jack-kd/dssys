.class Lcom/anythink/network/meishu/MsATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/splash/SplashAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->d(Lcom/anythink/network/meishu/MsATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;->getCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->d(Lcom/anythink/network/meishu/MsATSplashAdapter;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    const-string v1, "ms: onAdReady rewardVideoAd is empty"

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    invoke-static {v1, p1}, Lcom/anythink/network/meishu/MsATSplashAdapter;->a(Lcom/anythink/network/meishu/MsATSplashAdapter;Lcom/meishu/sdk/core/ad/splash/ISplashAd;)Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 5
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    iget-boolean v1, p1, Lcom/anythink/network/meishu/MsATSplashAdapter;->e:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/anythink/network/meishu/MsATSplashAdapter;->e(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

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

    :goto_0
    cmpg-double p1, v3, v1

    if-gtz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

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

    .line 10
    :cond_2
    new-instance p1, Lcom/anythink/network/meishu/MsATBiddingNotice;

    iget-object v1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    invoke-static {v1}, Lcom/anythink/network/meishu/MsATSplashAdapter;->e(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/anythink/network/meishu/MsATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

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

    .line 12
    :cond_3
    invoke-static {p1}, Lcom/anythink/network/meishu/MsATSplashAdapter;->f(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/meishu/MsATSplashAdapter;->g(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->onAdReady(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->a(Lcom/anythink/network/meishu/MsATSplashAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAdTick(J)V
    .locals 0

    return-void
.end method

.method public onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$b;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-static {p1, v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->b(Lcom/anythink/network/meishu/MsATSplashAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method
