.class public Lcom/anythink/network/meishu/MsATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MsATBannerAdapter"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

.field private c:Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

.field private d:Landroid/widget/FrameLayout;

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATBannerAdapter;)Lcom/meishu/sdk/core/ad/banner/IBannerAd;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATBannerAdapter;Lcom/meishu/sdk/core/ad/banner/IBannerAd;)Lcom/meishu/sdk/core/ad/banner/IBannerAd;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 23
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/banner/IBannerAd;->setCloseButtonVisible(Z)V

    .line 24
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    iget-object v1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/ad/banner/IBannerAd;->setWidthAndHeight(II)V

    .line 25
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    new-instance v1, Lcom/anythink/network/meishu/MsATBannerAdapter$c;

    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATBannerAdapter$c;-><init>(Lcom/anythink/network/meishu/MsATBannerAdapter;)V

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 26
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    iget-object v1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->d:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/banner/IBannerAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
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

    const-string p2, ""

    const-string v0, "key_height"

    const-string v1, "key_width"

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 4
    :try_start_0
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 8
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_1
    :goto_2
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_2

    .line 10
    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    :goto_3
    if-nez p3, :cond_3

    .line 11
    const-string p1, "context is not activity"

    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 12
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    invoke-direct {v0}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setPid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    move-result-object v0

    sget-object v1, Lcom/anythink/network/meishu/MsATInitManager;->CHANNEL:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setChannel(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->build()Lcom/meishu/sdk/core/ad/MsAdSlot;

    move-result-object v0

    .line 17
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->d:Landroid/widget/FrameLayout;

    .line 18
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p1, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    new-instance v1, Lcom/anythink/network/meishu/MsATBannerAdapter$b;

    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATBannerAdapter$b;-><init>(Lcom/anythink/network/meishu/MsATBannerAdapter;)V

    invoke-direct {p1, p3, v0, v1}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;-><init>(Landroid/app/Activity;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;)V

    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->c:Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 20
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->loadAd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 21
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ms startLoadAd exception:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/meishu/MsATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/meishu/MsATBannerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsATBannerAdapter;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/meishu/MsATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/meishu/MsATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->c:Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->c:Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->d:Landroid/widget/FrameLayout;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->b:Lcom/meishu/sdk/core/ad/banner/IBannerAd;

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
    const-string v0, "unit_id"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->e:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p1, "ms request must be bidding"

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/anythink/network/meishu/MsATInitManager;->getInstance()Lcom/anythink/network/meishu/MsATInitManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/anythink/network/meishu/MsATBannerAdapter$a;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/meishu/MsATBannerAdapter$a;-><init>(Lcom/anythink/network/meishu/MsATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/meishu/MsATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    :goto_0
    const-string p1, "ms: unit_id or context is empty"

    .line 44
    .line 45
    invoke-virtual {p0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
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
    iput-boolean p4, p0, Lcom/anythink/network/meishu/MsATBannerAdapter;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/meishu/MsATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
