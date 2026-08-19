.class Lcom/anythink/network/octopus/ZyATInterstitialAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATInterstitialAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/octopus/ZyATInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdCacheLoaded(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdCacheLoaded(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdClicked()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdClosed()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "i:"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, v1, p1}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->b(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/octopus/ad/InterstitialAd;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdLoaded(Lcom/octopus/ad/IBidding;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInterstitialAd$a;->a:Lcom/anythink/network/octopus/ZyATInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATInterstitialAd;->a(Lcom/anythink/network/octopus/ZyATInterstitialAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdShown()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
