.class Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

.field public final synthetic val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$2;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
