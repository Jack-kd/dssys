.class Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 7
    .line 8
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->D(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->E(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->F(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->G(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$b;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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
