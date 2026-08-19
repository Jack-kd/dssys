.class Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/api/format/SDMInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

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
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->k(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->l(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->o(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->p(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdLoadFail(Lcom/smartdigimkt/sdk/api/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->b(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->j(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->m(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->n(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdShowFail(Lcom/smartdigimkt/sdk/api/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->f(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->g(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onAdVideoEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->d(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->e(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->q(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->c(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onDeeplinkCallback(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->h(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$a;->c:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->i(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onDeeplinkCallback(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
