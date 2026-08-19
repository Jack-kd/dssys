.class public Lcom/anythink/network/baidu/BaiduATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/BaiduATAdapter$c;,
        Lcom/anythink/network/baidu/BaiduATAdapter$d;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:D

.field private e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

.field f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:I

.field l:I

.field m:Z

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->d:D

    .line 7
    .line 8
    new-instance v0, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->g:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->i:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->j:Z

    .line 24
    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
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

    .line 28
    new-instance v0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 29
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/network/baidu/BaiduATInitManager;->getApp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setAppSid(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 31
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, p2, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;Ljava/util/Map;)V

    .line 32
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object v7

    .line 33
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->d:D

    const-wide/16 v8, 0x0

    cmpl-double v0, v4, v8

    if-lez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 35
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    iget-wide v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->d:D

    double-to-int v2, v4

    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setBidFloor(I)V

    .line 36
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->m:Z

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setAdReward(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :cond_1
    :goto_0
    iget v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 40
    new-instance v4, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    iget-object v6, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    iget-boolean v8, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->i:Z

    iget-object v9, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->n:Ljava/util/Map;

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/BaiduNativeManager;Lcom/baidu/mobads/sdk/api/RequestParameters;ZLjava/util/Map;)V

    .line 41
    new-instance v0, Lcom/anythink/network/baidu/BaiduATAdapter$b;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/baidu/BaiduATAdapter$b;-><init>(Lcom/anythink/network/baidu/BaiduATAdapter;Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->load(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;)V

    goto :goto_1

    :cond_2
    move-object v9, v7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 42
    iget-object v10, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    new-instance v0, Lcom/anythink/network/baidu/BaiduATAdapter$c;

    iget-boolean v2, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    iget-object v4, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    iget-object v5, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    iget v6, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->k:I

    iget v7, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->l:I

    iget-object v8, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->n:Ljava/util/Map;

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/anythink/network/baidu/BaiduATAdapter$c;-><init>(Landroid/content/Context;ZLcom/anythink/network/baidu/BaiduATAdapter;Lcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;IILjava/util/Map;)V

    invoke-virtual {v10, v9, v0}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadExpressAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->e:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    new-instance v2, Lcom/anythink/network/baidu/BaiduATAdapter$d;

    invoke-direct {v2, p0, p1}, Lcom/anythink/network/baidu/BaiduATAdapter$d;-><init>(Lcom/anythink/network/baidu/BaiduATAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v9, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadFeedAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATAdapter;Ljava/util/List;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATAdapter;->a(Ljava/util/List;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ")V"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;->build()Lcom/baidu/mobads/sdk/api/StyleParams;

    .line 46
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 48
    iget p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->g:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v3, Lcom/anythink/network/baidu/BaiduATNativeAd;

    iget-boolean v6, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->j:Z

    iget-boolean v7, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    iget-object v8, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->n:Ljava/util/Map;

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/anythink/network/baidu/BaiduATNativeAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;ZZLjava/util/Map;)V

    move-object p3, v3

    .line 50
    :goto_0
    new-instance p1, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    invoke-direct {p1, v5}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 51
    :try_start_0
    invoke-interface {v5}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v3, v1

    .line 53
    :goto_1
    iget-object p2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz p2, :cond_5

    cmpg-double p2, v3, v1

    const-string v0, ""

    if-gtz p2, :cond_1

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Price is less than or equal to 0. Price: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 55
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v3, v4, p2, p1, v0}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    .line 56
    invoke-interface {v5}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPECPM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/api/ATBiddingResult;->setExtra(Ljava/lang/Object;)V

    .line 57
    iget-object p2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-interface {p2, p1, p3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    goto :goto_4

    :cond_2
    move-object v4, p2

    .line 58
    iget p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->g:I

    if-ne p2, v2, :cond_3

    .line 59
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 60
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 61
    new-instance v1, Lcom/anythink/network/baidu/BaiduATNativeAd;

    move-object v2, v4

    iget-boolean v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->j:Z

    iget-boolean v5, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    iget-object v6, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->n:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/baidu/BaiduATNativeAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;ZZLjava/util/Map;)V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    goto :goto_2

    .line 63
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 65
    iget-object p2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p2, :cond_5

    .line 66
    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
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

    .line 3
    const-string v0, "dl_type"

    const-string v1, "cta_button"

    const-string v2, "baidu_style_builder"

    const-string v3, "button_type"

    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->n:Ljava/util/Map;

    .line 4
    const-string v4, "app_id"

    invoke-static {p1, v4}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->a:Ljava/lang/String;

    .line 5
    const-string v4, "ad_place_id"

    invoke-static {p1, v4}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->b:Ljava/lang/String;

    .line 6
    const-string v4, "payload"

    invoke-static {p1, v4}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->c:Ljava/lang/String;

    .line 7
    const-string v4, "unit_type"

    invoke-static {p1, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->g:I

    .line 8
    const-string v4, "bid_floor"

    invoke-static {p1, v4}, Lcom/anythink/core/api/ATInitMediation;->getDoubleFromMap(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->d:D

    .line 9
    const-string v4, "bd_expected_size_width"

    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->k:I

    .line 10
    const-string v4, "bd_expected_size_height"

    invoke-static {p2, v4, v5}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->l:I

    .line 11
    const-string v4, "bd_native_reward"

    invoke-static {p2, v4, v5}, Lcom/anythink/core/api/ATInitMediation;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->m:Z

    const/4 v4, 0x1

    .line 12
    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    instance-of v2, p2, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    if-eqz v2, :cond_0

    .line 15
    check-cast p2, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    .line 16
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    invoke-static {p1, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;->setShowActionButton(Z)Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    .line 19
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "2"

    if-eqz p2, :cond_2

    .line 20
    :try_start_1
    invoke-static {p1, v3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v2, p2}, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;->setRegionClick(Z)Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    .line 22
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->f:Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/api/StyleParams$Builder;->setShowDialogFrame(Z)Lcom/baidu/mobads/sdk/api/StyleParams$Builder;

    .line 25
    :cond_3
    const-string p2, "video_autoplay"

    invoke-static {p1, p2, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_4

    move p2, v4

    goto :goto_0

    :cond_4
    move p2, v5

    .line 26
    :goto_0
    iput-boolean p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->i:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 p2, -0x1

    .line 27
    invoke-static {p1, v3, p2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    move v5, v4

    :cond_5
    iput-boolean v5, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->j:Z

    return-void
.end method

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
    .locals 0

    return-void
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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->b:Ljava/lang/String;

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
    invoke-virtual {p0, p2, p3}, Lcom/anythink/network/baidu/BaiduATAdapter;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/anythink/network/baidu/BaiduATAdapter$a;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATAdapter$a;-><init>(Lcom/anythink/network/baidu/BaiduATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/baidu/BaiduATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    const-string p1, ""

    .line 39
    .line 40
    const-string p2, "app_id or ad_place_id is empty."

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
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
    iput-boolean p4, p0, Lcom/anythink/network/baidu/BaiduATAdapter;->h:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
