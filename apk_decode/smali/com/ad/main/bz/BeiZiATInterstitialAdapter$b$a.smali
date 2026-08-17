.class public Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;


# direct methods
.method public constructor <init>(Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

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
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->e(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->f(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->o(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->d(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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

.method public onAdFailed(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->c:Lcom/anythink/core/api/ATBiddingListener;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {v1, p1, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->i(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->j(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {v0, p1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->c:Lcom/anythink/core/api/ATBiddingListener;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->a(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/beizi/fusion/InterstitialAd;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/InterstitialAd;->getECPM()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-double v0, v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmpg-double v4, v0, v2

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    move-wide v0, v2

    .line 25
    :cond_0
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->c:Lcom/anythink/core/api/ATBiddingListener;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static {v0, v1, v3, v5, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v4, v0, v5}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->k(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->l(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->m(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;->a:Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->n(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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
