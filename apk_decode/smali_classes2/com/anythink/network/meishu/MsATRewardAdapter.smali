.class public Lcom/anythink/network/meishu/MsATRewardAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MsATRewardAdapter"


# instance fields
.field private a:Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

.field private b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

.field private c:Ljava/lang/String;

.field private d:I

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->d:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->e:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATRewardAdapter;Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    invoke-direct {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;-><init>()V

    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setPid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    move-result-object p2

    sget-object v0, Lcom/anythink/network/meishu/MsATInitManager;->CHANNEL:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setChannel(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    move-result-object p2

    iget v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p2, v1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setVideoMute(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->build()Lcom/meishu/sdk/core/ad/MsAdSlot;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    new-instance v1, Lcom/anythink/network/meishu/MsATRewardAdapter$b;

    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATRewardAdapter$b;-><init>(Lcom/anythink/network/meishu/MsATRewardAdapter;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;)V

    iput-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->a:Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->loadAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ms startLoadAd exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATRewardAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/meishu/MsATRewardAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
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
    invoke-static {}, Lcom/anythink/network/meishu/MsATInitManager;->getInstance()Lcom/anythink/network/meishu/MsATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/meishu/MsATInitManager;->getAdapterBridgeVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public destory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->a:Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/b;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->a:Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;->destroy()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 24
    .line 25
    :cond_1
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
    const-class v2, Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/meishu/MsATInitManager;->getInstance()Lcom/anythink/network/meishu/MsATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/meishu/MsATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/meishu/MsATInitManager;->getInstance()Lcom/anythink/network/meishu/MsATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/meishu/MsATInitManager;->getNetworkVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/IAd;->isAdValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
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
    const-string p3, "unit_id"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iput-object p3, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-string p3, "video_muted"

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p2, p3, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iput p3, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->d:I

    .line 17
    .line 18
    sget-object p3, Lcom/anythink/core/api/ATSDKGlobalSetting;->isGlobalMute:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iput p3, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->d:I

    .line 27
    .line 28
    :cond_0
    iget-object p3, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    const-string v0, ""

    .line 35
    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-boolean p3, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->e:Z

    .line 42
    .line 43
    if-nez p3, :cond_2

    .line 44
    .line 45
    const-string p1, "ms request must be bidding"

    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {}, Lcom/anythink/network/meishu/MsATInitManager;->getInstance()Lcom/anythink/network/meishu/MsATInitManager;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    new-instance v0, Lcom/anythink/network/meishu/MsATRewardAdapter$a;

    .line 60
    .line 61
    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/network/meishu/MsATRewardAdapter$a;-><init>(Lcom/anythink/network/meishu/MsATRewardAdapter;Landroid/content/Context;Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/meishu/MsATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    :goto_0
    const-string p1, "ms: unit_id or context is empty"

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/IAd;->isAdValid()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 19
    .line 20
    new-instance v2, Lcom/anythink/network/meishu/MsATRewardAdapter$c;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/anythink/network/meishu/MsATRewardAdapter$c;-><init>(Lcom/anythink/network/meishu/MsATRewardAdapter;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->b:Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;->showAd(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const-string v1, "rewardedAd is null or is not ready"

    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "rewardedAd show exception:"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v1, v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
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
    iput-boolean p4, p0, Lcom/anythink/network/meishu/MsATRewardAdapter;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/meishu/MsATRewardAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
