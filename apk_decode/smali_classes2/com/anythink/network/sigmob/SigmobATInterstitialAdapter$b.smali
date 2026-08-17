.class Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->f(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->g(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->k(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getCurrency()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onC2SBiddingResultWithCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingListener;Ljava/lang/Object;Lcom/anythink/core/api/BaseAd;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->m(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->n(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public onInterstitialAdPreLoadFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->k(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getCurrency()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onC2SBiddingResultWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingListener;Ljava/lang/Object;Lcom/anythink/core/api/BaseAd;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->o(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->p(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public onInterstitialAdShow(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->q(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->h(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->i(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p2, v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
