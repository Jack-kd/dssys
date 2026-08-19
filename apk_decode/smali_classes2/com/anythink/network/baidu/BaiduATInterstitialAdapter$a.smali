.class Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->s(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->t(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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

.method public onAdClose(F)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->u(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "Baidu: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k:Z

    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 15
    .line 16
    iget-boolean v2, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    .line 17
    .line 18
    iget-object v3, v1, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v4, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(ZLjava/lang/Object;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->r(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onAdSkip(F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    const-string v2, "Baidu: onVideoDownloadFailed"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->v(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->w(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->x(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
