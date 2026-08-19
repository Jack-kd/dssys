.class Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATInterstitialAdapter;->show(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->f(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->g(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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

.method public onAdClosed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->b(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->c(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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

.method public onAdExposure()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->h(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->i(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->j(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInterstitialAdapter$c;->a:Lcom/anythink/network/meishu/MsATInterstitialAdapter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATInterstitialAdapter;->k(Lcom/anythink/network/meishu/MsATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
