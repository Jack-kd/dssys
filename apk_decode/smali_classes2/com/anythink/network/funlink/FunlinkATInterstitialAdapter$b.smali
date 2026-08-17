.class Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->d(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->e(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->f(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->g(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPrepared(ILjava/lang/Object;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    iget-boolean v1, v2, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->a:Z

    .line 11
    .line 12
    int-to-long v3, p1

    .line 13
    iget-object v5, v2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->a(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const/4 p1, 0x0

    .line 20
    new-array v7, p1, [Lcom/anythink/core/api/BaseAd;

    .line 21
    .line 22
    move-object v2, p2

    .line 23
    invoke-virtual/range {v0 .. v7}, Lcom/anythink/network/funlink/FunlinkATInitManager;->handleAdCacheLoadedCallback(ZLjava/lang/Object;JLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 28
    .line 29
    const-string p2, ""

    .line 30
    .line 31
    const-string v0, "originAd is null"

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->b(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;->c(Lcom/anythink/network/funlink/FunlinkATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
