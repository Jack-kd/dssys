.class Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADExposed()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->h(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->i(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onADExposureFailed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, ""

    .line 19
    .line 20
    const-string v2, "Baidu: onADExposureFailed()"

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onADLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->c(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "onADLoaded:  isReady = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->isReady()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 48
    .line 49
    iget-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k:Z

    .line 55
    .line 56
    :cond_0
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 61
    .line 62
    iget-boolean v2, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    .line 63
    .line 64
    iget-object v3, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->e(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v4, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 71
    .line 72
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(ZLjava/lang/Object;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onAdCacheFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "Baidu: onAdCacheFailed"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdCacheSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->u(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdFailed(ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 30
    .line 31
    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "onNoAd:"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 47
    .line 48
    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method
