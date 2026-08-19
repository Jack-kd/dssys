.class public Lcom/anythink/network/baidu/BaiduATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/baidu/mobads/sdk/api/SplashAd;

.field e:Ljava/lang/String;

.field private f:D

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "2"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->f:D

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->g:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->i:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->j:Z

    .line 32
    .line 33
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATSplashAdapter;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method private a()V
    .locals 9

    .line 21
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->i:Z

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->getPECPM()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k:Ljava/util/Map;

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k:Ljava/util/Map;

    const-string v3, "en_p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/SplashAd;->getECPMLevel()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    const-string v2, "0"

    :cond_1
    const-wide/16 v3, 0x0

    .line 31
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v5, v3

    :goto_0
    cmpg-double v2, v5, v3

    if-gtz v2, :cond_2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price is less than or equal to 0. Price: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_2
    new-instance v2, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-direct {v2, v3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 35
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

    .line 36
    invoke-virtual {v1, v0}, Lcom/anythink/core/api/ATBiddingResult;->setExtra(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    goto :goto_1

    .line 38
    :cond_3
    const-string v0, "Baidu: SplashAd had been destroyed."

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 40
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
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

    .line 4
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 5
    iget v1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mFetchAdTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 6
    const-string v1, "displayDownloadInfo"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "use_dialog_frame"

    invoke-virtual {v0, v1, p2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 8
    const-string p2, "key_width"

    const/4 v1, 0x0

    invoke-static {p4, p2, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    .line 9
    const-string v2, "key_height"

    invoke-static {p4, v2, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    if-lez p2, :cond_0

    if-lez v1, :cond_0

    int-to-float p2, p2

    .line 10
    invoke-static {p1, p2}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->setWidth(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    int-to-float p2, v1

    .line 11
    invoke-static {p1, p2}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->setHeight(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 12
    :cond_0
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, v0, p3, p4}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;Ljava/util/Map;)V

    .line 13
    new-instance p2, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;

    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;-><init>(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)V

    .line 14
    new-instance p3, Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p4, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object v0

    invoke-direct {p3, p1, p4, v0, p2}, Lcom/baidu/mobads/sdk/api/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/SplashAdListener;)V

    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 15
    iget-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->i:Z

    if-eqz p1, :cond_1

    .line 16
    iget-wide p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->f:D

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    .line 17
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 18
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    iget-wide p2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->f:D

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->setBidFloor(I)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/network/baidu/BaiduATInitManager;->getApp_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->setAppSid(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->load()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATSplashAdapter;Landroid/content/Context;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Landroid/content/Context;ZLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    .line 41
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->l:Ljava/util/Map;

    .line 42
    const-string v0, "app_id"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->e:Ljava/lang/String;

    .line 43
    const-string v0, "ad_place_id"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b:Ljava/lang/String;

    .line 44
    const-string v0, "bd_imp_type"

    const-string v1, "2"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->c:Ljava/lang/String;

    .line 45
    const-string v0, "bid_floor"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getDoubleFromMap(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->f:D

    .line 46
    const-string v0, "ad_click_confirm_status"

    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->g:Z

    .line 47
    const-string p2, "ad_s_reqf_mode"

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->j:Z

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATSplashAdapter;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k:Ljava/util/Map;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->l:Ljava/util/Map;

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

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

.method public destory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    const/4 v1, 0x3

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->j:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->isReady()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
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
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 3
    .line 4
    invoke-direct {p0, p2, p3}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;-><init>(Lcom/anythink/network/baidu/BaiduATSplashAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/baidu/BaiduATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    const-string p1, ""

    .line 42
    .line 43
    const-string p2, " app_id ,ad_place_id is empty."

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
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

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->show(Landroid/view/ViewGroup;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/16 p1, 0x63

    .line 13
    .line 14
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p2, ""

    .line 21
    .line 22
    const-string v0, "Baidu Splash show fail: mSplashAd = null"

    .line 23
    .line 24
    const-string v1, "4006"

    .line 25
    .line 26
    invoke-static {v1, p2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, p2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 36
    .line 37
    .line 38
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
    const/4 p4, 0x1

    .line 2
    iput-boolean p4, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
