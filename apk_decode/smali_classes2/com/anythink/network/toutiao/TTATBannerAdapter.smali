.class public Lcom/anythink/network/toutiao/TTATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field d:Landroid/content/Context;

.field e:Landroid/view/View;

.field f:I

.field g:I

.field h:I

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

.field j:Ljava/lang/String;

.field k:Z

.field l:Z

.field private m:Z

.field n:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private p:Z

.field q:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Z

    .line 20
    .line 21
    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 27
    .line 28
    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->p:Z

    .line 36
    .line 37
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$f;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$f;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->q:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic A(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Ljava/util/Map;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 12
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->q:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Z)V
    .locals 0

    .line 9
    new-instance p3, Lcom/anythink/network/toutiao/TTATBannerAdapter$d;

    invoke-direct {p3, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$d;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->runOnNetworkRequestThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->p:Z

    return p1
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
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
            ">;)Z"
        }
    .end annotation

    .line 13
    const-string p2, "app_id"

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    const-string v0, "slot_id"

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    const-string p2, "nw_rft"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:I

    .line 17
    const-string p2, "payload"

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic b(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic v(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic w(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic y(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
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
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getAdapterBridgeVersion()I

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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 17
    .line 18
    :cond_0
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 21
    .line 22
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
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
    const-class v2, Lcom/anythink/network/toutiao/TTATAdapter;

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkVersion()Ljava/lang/String;

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
    invoke-direct {p0, p2, p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Ljava/util/Map;Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    const-string p2, "app_id or slot_id is empty!"

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/content/Context;

    .line 20
    .line 21
    const-string p1, "ad_s_reqf_mode"

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    invoke-static {p2, p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x2

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-boolean p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m:Z

    .line 35
    .line 36
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/content/Context;

    .line 41
    .line 42
    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$e;

    .line 43
    .line 44
    invoke-direct {v1, p0, p2, p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter$e;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;Ljava/util/Map;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, p2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 48
    .line 49
    .line 50
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
    iput-boolean p4, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
