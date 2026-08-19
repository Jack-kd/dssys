.class public Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "BaiduATRewardedVideoAdapter"


# instance fields
.field a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:D

.field e:Z

.field f:Z

.field g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d:D

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->e:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->f:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->g:Z

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    return-object p1
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

    .line 6
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->i:Ljava/util/Map;

    .line 7
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->j:Ljava/util/Map;

    .line 8
    new-instance v0, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;

    invoke-direct {v2, p0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$a;-><init>(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RewardVideoAd$RewardVideoAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 9
    iget-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->e:Z

    if-eqz p1, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 11
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 12
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d:D

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setBidFloor(I)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setUserId(Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserData:Ljava/lang/String;

    const-string v0, "{network_placement_id}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserData:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserData:Ljava/lang/String;

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setExtraInfo(Ljava/lang/String;)V

    .line 19
    :cond_3
    new-instance p1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 20
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;Ljava/util/Map;)V

    .line 21
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setRequestParameters(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 22
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/network/baidu/BaiduATInitManager;->getApp_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setAppSid(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->load()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    const-string v0, "app_id"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 25
    const-string v0, "ad_place_id"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 26
    const-string v0, "bid_floor"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getDoubleFromMap(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d:D

    .line 27
    const-string v0, "ad_s_reqf_mode"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->g:Z

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method private b()V
    .locals 9

    .line 2
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d()V

    .line 3
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->e:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getPECPM()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    const-string v3, "en_p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getECPMLevel()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    const-string v2, "0"

    :cond_1
    const-wide/16 v3, 0x0

    .line 13
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v5, v3

    :goto_0
    cmpg-double v2, v5, v3

    if-gtz v2, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price is less than or equal to 0. Price: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance v2, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-direct {v2, v3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 17
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

    .line 18
    invoke-virtual {v1, v0}, Lcom/anythink/core/api/ATBiddingResult;->setExtra(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    goto :goto_1

    .line 20
    :cond_3
    const-string v0, "Baidu: RewardVideoAd had been destroyed."

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->j:Ljava/util/Map;

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->d()V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    if-eqz v0, :cond_1

    .line 3
    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "third_trans_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 3
    .line 4
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
    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/anythink/network/baidu/BaiduATSplashAdapter;

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
    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-class v2, Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->h:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->g:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->f:Z

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
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->isReady()Z

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
    invoke-direct {p0, p2}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->b:Ljava/lang/String;

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
    new-instance v1, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;-><init>(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

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
    const-string p2, " app_id ,ad_place_id is empty."

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->f:Z

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->i:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "bd_reward_info"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    instance-of v1, v0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 22
    .line 23
    check-cast v0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setRewardInfo(Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->show(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
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
    iput-boolean p4, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
