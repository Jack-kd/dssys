.class public Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;
.source "SourceFile"


# static fields
.field private static final q:Ljava/lang/String; = "BaiduATInterstitialAdapter"


# instance fields
.field a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

.field b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:D

.field h:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field p:Z


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
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g:D

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->i:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->p:Z

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->q:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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

    .line 5
    new-instance v0, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 6
    iget-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    if-eqz p1, :cond_0

    .line 7
    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 8
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 9
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g:D

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setBidFloor(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    new-instance v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;

    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$b;-><init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setLoadListener(Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;)V

    .line 11
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    new-instance v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$c;

    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$c;-><init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setDownloadListener(Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd$InterAdDownloadWindowListener;)V

    .line 12
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->i:Z

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setDialogFrame(Z)V

    .line 13
    new-instance p1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 14
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;Ljava/util/Map;)V

    .line 15
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setRequestParameters(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 16
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/network/baidu/BaiduATInitManager;->getApp_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setAppSid(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->load()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->c(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 18
    const-string v0, "ad_click_confirm_status"

    const-string v1, "bid_floor"

    const-string v2, "app_id"

    invoke-static {p1, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->c:Ljava/lang/String;

    .line 19
    const-string v2, "ad_place_id"

    invoke-static {p1, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    .line 20
    const-string v2, "unit_type"

    invoke-static {p1, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 21
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->i:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    :catch_0
    :cond_1
    const-string p2, "payload"

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->e:Ljava/lang/String;

    .line 26
    const-string p2, "ad_s_reqf_mode"

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l:Z

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private b()V
    .locals 9

    .line 13
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getPECPM()Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    const-string v3, "en_p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getECPMLevel()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    const-string v2, "0"

    :cond_1
    const-wide/16 v3, 0x0

    .line 23
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v5, v3

    :goto_0
    cmpg-double v2, v5, v3

    if-gtz v2, :cond_2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price is less than or equal to 0. Price: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_2
    new-instance v2, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-direct {v2, v3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v5, v6, v1, v2, v3}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/anythink/core/api/ATBiddingResult;->setExtra(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    goto :goto_1

    .line 30
    :cond_3
    const-string v0, "Baidu: ExpressInterstitialAd had been destroyed."

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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

    .line 2
    new-instance v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;

    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$a;-><init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->h:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;

    .line 3
    new-instance v1, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;Z)V

    iput-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 4
    iget-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    if-eqz p1, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 7
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->g:D

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->setBidFloor(I)V

    .line 8
    :cond_0
    new-instance p1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 9
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;Ljava/util/Map;)V

    .line 10
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->setRequestParameters(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 11
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/network/baidu/BaiduATInitManager;->getApp_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->setAppSid(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->load()V

    return-void
.end method

.method private c()V
    .locals 9

    .line 7
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->getPECPM()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    const-string v3, "en_p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->getECPMLevel()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    const-string v2, "0"

    :cond_1
    const-wide/16 v3, 0x0

    .line 17
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v5, v3

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v2, :cond_5

    cmpg-double v2, v5, v3

    if-gtz v2, :cond_2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price is less than or equal to 0. Price: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-direct {v2, v3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v5, v6, v1, v2, v3}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/anythink/core/api/ATBiddingResult;->setExtra(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    goto :goto_1

    .line 25
    :cond_3
    const-string v0, "Baidu: FullScreenVideoAd had been destroyed."

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->p:Z

    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->n:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->p:Z

    .line 4
    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->n:Ljava/util/Map;

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public baseOnAdapterBridgeVersion()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/baidu/BaiduATInitManager;->getAdapterBridgeVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public closeAd()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/Activity;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d()V

    .line 34
    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "showingActivity is null"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public destory()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->destory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->h:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->destroy()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getFormatAdapterMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/anythink/core/api/bridge/ATBaseAdAdapter;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public getNetworkInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/baidu/BaiduATInitManager;->getNetworkName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/baidu/BaiduATInitManager;->getNetworkVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isAdReady()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x31

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    const/16 v2, 0x32

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "2"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "1"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    return v3

    .line 44
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->isReady()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    return v0

    .line 49
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->l:Z

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k:Z

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    return v3

    .line 62
    :cond_4
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->isReady()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    return v0

    .line 67
    :cond_5
    const/4 v0, 0x0

    .line 68
    return v0
.end method

.method public isSupportAdCarousel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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
    invoke-direct {p0, p2, p3}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "0"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    new-instance v3, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$e;

    .line 57
    .line 58
    invoke-direct {v3, p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$e;-><init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/anythink/network/baidu/BaiduATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/MediationInitCallback;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p2, "Baidu InterstitialAd not support: "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    :goto_1
    const-string p1, " app_id ,ad_place_id is empty."

    .line 89
    .line 90
    invoke-virtual {p0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 20
    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "\\."

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    array-length v2, v1

    .line 38
    const/4 v3, 0x3

    .line 39
    if-lt v2, v3, :cond_1

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    aget-object v3, v1, v3

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    aget-object v3, v1, v3

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    aget-object v0, v1, v0

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :catch_1
    :cond_1
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setDismissType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    .line 2
    .line 3
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->p:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->k:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x31

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x32

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "2"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string v1, "1"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->carouselShowType:I

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    new-instance v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;-><init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;Landroid/app/Activity;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v1, 0x1f4

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->postOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->show(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->b:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void

    .line 72
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
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
    const/4 p4, 0x1

    .line 2
    iput-boolean p4, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->j:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
