.class public Lcom/anythink/network/octopus/ZyATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZyATBannerAdapter"


# instance fields
.field private a:Ljava/lang/String;

.field b:Z

.field private c:Lcom/octopus/ad/BannerAd;

.field private d:Landroid/view/View;


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
    iput-boolean v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATBannerAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->d:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/octopus/ad/BannerAd;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c:Lcom/octopus/ad/BannerAd;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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

    const-string p2, "key_width"

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 8
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a:Ljava/lang/String;

    .line 10
    new-instance p3, Lcom/octopus/ad/BannerAd;

    new-instance v1, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;

    invoke-direct {v1, p0, v0}, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;-><init>(Lcom/anythink/network/octopus/ZyATBannerAdapter;I)V

    invoke-direct {p3, p1, p2, v1}, Lcom/octopus/ad/BannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/BannerAdListener;)V

    iput-object p3, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c:Lcom/octopus/ad/BannerAd;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p3, p1}, Lcom/octopus/ad/BannerAd;->openAdInNativeBrowser(Z)V

    .line 12
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c:Lcom/octopus/ad/BannerAd;

    invoke-virtual {p1}, Lcom/octopus/ad/BannerAd;->loadAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 13
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "octopus startLoadAd exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATBannerAdapter;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/octopus/ad/NativeAdResponse;)V

    return-void
.end method

.method private a(Lcom/octopus/ad/NativeAdResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Lcom/anythink/network/octopus/ZyATBannerAdapter$c;

    invoke-direct {v0, p0}, Lcom/anythink/network/octopus/ZyATBannerAdapter$c;-><init>(Lcom/anythink/network/octopus/ZyATBannerAdapter;)V

    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->setNativeAdEventListener(Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
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
    invoke-static {}, Lcom/anythink/network/octopus/ZyATInitManager;->getInstance()Lcom/anythink/network/octopus/ZyATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/octopus/ZyATInitManager;->getAdapterBridgeVersion()I

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c:Lcom/octopus/ad/BannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c:Lcom/octopus/ad/BannerAd;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/octopus/ZyATInitManager;->getInstance()Lcom/anythink/network/octopus/ZyATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/octopus/ZyATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/octopus/ZyATInitManager;->getInstance()Lcom/anythink/network/octopus/ZyATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/octopus/ZyATInitManager;->getNetworkVersion()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c:Lcom/octopus/ad/BannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->d:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
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
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a:Ljava/lang/String;

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
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lcom/anythink/network/octopus/ZyATInitManager;->getInstance()Lcom/anythink/network/octopus/ZyATInitManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/anythink/network/octopus/ZyATBannerAdapter$a;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/octopus/ZyATBannerAdapter$a;-><init>(Lcom/anythink/network/octopus/ZyATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/octopus/ZyATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :goto_0
    const-string p1, ""

    .line 36
    .line 37
    const-string p2, "octopus: unit_id or context is empty"

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
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
    iput-boolean p4, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->b:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
