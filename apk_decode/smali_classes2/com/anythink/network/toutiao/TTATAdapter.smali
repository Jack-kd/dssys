.class public Lcom/anythink/network/toutiao/TTATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/String;

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

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
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:I

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->f:Ljava/lang/String;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->g:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->h:Z

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mRequestNum:I

    return p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    :try_start_0
    const-string v0, "size"

    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 46
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 47
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATSDKUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x1

    .line 48
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATSDKUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    .line 49
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 50
    :catchall_0
    :cond_0
    new-instance p2, Landroid/util/Pair;

    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {p1, v0}, Lcom/anythink/core/api/ATSDKUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p1, v1}, Lcom/anythink/core/api/ATSDKUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;)Landroid/util/Pair;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private varargs a(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/TTClientBidding;",
            ">;[",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1

    .line 26
    :try_start_1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p2
.end method

.method private a(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;ZZ)V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 12
    new-instance v3, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    move-object v4, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZ)V

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, p1

    move v7, p3

    move v8, p4

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/toutiao/TTATAdapter;->b(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 17
    new-instance p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    invoke-direct {p1, p2}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;-><init>(Ljava/util/List;)V

    .line 18
    new-instance p2, Lcom/anythink/network/toutiao/TTATAdapter$c;

    invoke-direct {p2, p0, v4, v7, v8}, Lcom/anythink/network/toutiao/TTATAdapter$c;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZZ)V

    invoke-virtual {p1, p2}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->startRender(Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 7
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
            ">;I)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    const-string p1, ""

    const-string p2, "nativeType is empty"

    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/anythink/network/toutiao/TTATAdapter$b;

    move-object v1, p0

    move-object v6, p1

    move-object v4, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$b;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->runOnNetworkRequestThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/List;ZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/toutiao/TTATAdapter;->c(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)Z
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
            ">;)Z"
        }
    .end annotation

    .line 29
    const-string p2, "media_size"

    const-string v0, "app_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    const-string v1, "slot_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    .line 33
    const-string v0, "layout_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    .line 36
    :goto_0
    const-string v0, "is_video"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    .line 38
    :cond_2
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    :cond_3
    const-string p2, "payload"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->f:Ljava/lang/String;

    .line 42
    :cond_4
    const-string p2, "button_type"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, v0, :cond_5

    move v1, p2

    :cond_5
    iput-boolean v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->h:Z

    return p2

    :cond_6
    :goto_1
    return v1
.end method

.method public static synthetic b(Lcom/anythink/network/toutiao/TTATAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    return-object p0
.end method

.method private varargs b(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/TTClientBidding;",
            ">;[",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->g:Z

    invoke-direct {p0, p1, p2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)Ljava/util/Map;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/bytedance/sdk/openadsdk/TTClientBidding;

    iget-object v5, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    iget-object v6, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/network/toutiao/TTATInitManager;->notifyAdDataLoad(ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;[Lcom/anythink/core/api/BaseAd;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    const-string p1, ""

    const-string p2, "Ad list is empty."

    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private varargs c(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/TTClientBidding;",
            ">;[",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->g:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    aget-object p2, p2, v2

    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTClientBidding;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Lcom/anythink/core/api/BaseAd;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATBiddingListener;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    :goto_0
    const-string p1, ""

    .line 54
    .line 55
    const-string p2, "Ad list is empty."

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
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
    .locals 0

    return-void
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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

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
    invoke-direct {p0, p2, p3}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Ljava/util/Map;Ljava/util/Map;)Z

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
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$a;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATAdapter$a;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 25
    .line 26
    .line 27
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
    iput-boolean p4, p0, Lcom/anythink/network/toutiao/TTATAdapter;->g:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method
