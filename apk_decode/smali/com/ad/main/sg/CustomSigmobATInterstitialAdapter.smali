.class public Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;
    }
.end annotation


# instance fields
.field public r:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

.field public s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

.field public t:Ljava/lang/String;

.field public volatile u:Z

.field public v:Ljava/lang/String;

.field public w:Lcom/anythink/core/api/ATBiddingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->t:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->u:Z

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->v:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATBiddingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->w:Lcom/anythink/core/api/ATBiddingListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static declared-synchronized p(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->r:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->destroy()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBidRequestInfoListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->getNetworkName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "not support"

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Sigmob-Custom"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p3, "app_id"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const-string v0, "app_key"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "placement_id"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->v:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "payload"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->t:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->v:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p2, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;

    .line 45
    .line 46
    invoke-direct {p2, p0, p3, v0, p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;-><init>(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    const-string p1, ""

    .line 54
    .line 55
    const-string p2, "app_id\u3001app_key\u3001placement_id could not be null."

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->w:Lcom/anythink/core/api/ATBiddingListener;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-static {p2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, p2, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->v:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->r:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    .line 12
    .line 13
    new-instance v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->r:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;-><init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 21
    .line 22
    new-instance v1, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;-><init>(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->setWindNewInterstitialAdListener(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->u:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string v1, "CNY"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd()Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->t:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->t:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd()Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->isAdReady()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->u:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->s:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->show(Ljava/util/HashMap;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    :cond_1
    return-void
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    .line 1
    iput-object p4, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->w:Lcom/anythink/core/api/ATBiddingListener;

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    iput-boolean p4, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->u:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return p4
.end method
