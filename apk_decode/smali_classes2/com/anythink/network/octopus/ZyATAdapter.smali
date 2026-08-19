.class public Lcom/anythink/network/octopus/ZyATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZyATAdapter"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Z

.field private d:Lcom/anythink/network/octopus/ZyATNativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->c:Z

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
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

    const-string v0, ""

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/anythink/network/octopus/ZyATAdapter$b;

    invoke-direct {v1, p0}, Lcom/anythink/network/octopus/ZyATAdapter$b;-><init>(Lcom/anythink/network/octopus/ZyATAdapter;)V

    .line 5
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    const/16 v4, 0x33

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 6
    :cond_1
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v7

    goto :goto_1

    .line 7
    :cond_2
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    .line 8
    const-string p1, "octopus not support this type"

    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4
    new-instance v2, Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    iget-boolean v3, p0, Lcom/anythink/network/octopus/ZyATAdapter;->c:Z

    invoke-direct {v2, v3, v1}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;-><init>(ZLcom/anythink/network/octopus/ZyATNativeAd$AdListener;)V

    iput-object v2, p0, Lcom/anythink/network/octopus/ZyATAdapter;->d:Lcom/anythink/network/octopus/ZyATNativeAd;

    goto :goto_2

    .line 10
    :cond_5
    new-instance v2, Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    iget-boolean v3, p0, Lcom/anythink/network/octopus/ZyATAdapter;->c:Z

    invoke-direct {v2, v3, v7, v1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;-><init>(ZZLcom/anythink/network/octopus/ZyATNativeAd$AdListener;)V

    iput-object v2, p0, Lcom/anythink/network/octopus/ZyATAdapter;->d:Lcom/anythink/network/octopus/ZyATNativeAd;

    goto :goto_2

    .line 11
    :cond_6
    new-instance v2, Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    iget-boolean v3, p0, Lcom/anythink/network/octopus/ZyATAdapter;->c:Z

    invoke-direct {v2, v3, v5, v1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;-><init>(ZZLcom/anythink/network/octopus/ZyATNativeAd$AdListener;)V

    iput-object v2, p0, Lcom/anythink/network/octopus/ZyATAdapter;->d:Lcom/anythink/network/octopus/ZyATNativeAd;

    .line 12
    :goto_2
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATAdapter;->d:Lcom/anythink/network/octopus/ZyATNativeAd;

    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/anythink/network/octopus/ZyATNativeAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 13
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "octopus startLoadAd exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/octopus/ZyATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/octopus/ZyATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->d:Lcom/anythink/network/octopus/ZyATNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/octopus/ZyATNativeAd;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->d:Lcom/anythink/network/octopus/ZyATNativeAd;

    .line 10
    .line 11
    :cond_0
    return-void
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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->a:Ljava/lang/String;

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

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "unit_type"

    .line 10
    .line 11
    const-string v1, "0"

    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATAdapter;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lcom/anythink/network/octopus/ZyATInitManager;->getInstance()Lcom/anythink/network/octopus/ZyATInitManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/anythink/network/octopus/ZyATAdapter$a;

    .line 39
    .line 40
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/anythink/network/octopus/ZyATAdapter$a;-><init>(Lcom/anythink/network/octopus/ZyATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, p2, v2}, Lcom/anythink/network/octopus/ZyATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    const-string p1, ""

    .line 48
    .line 49
    const-string p2, "octopus: unit_id or context is empty"

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
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
    iput-boolean p4, p0, Lcom/anythink/network/octopus/ZyATAdapter;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/octopus/ZyATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
