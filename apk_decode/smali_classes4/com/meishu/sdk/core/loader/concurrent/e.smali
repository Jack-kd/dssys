.class public Lcom/meishu/sdk/core/loader/concurrent/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/concurrent/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/meishu/sdk/core/loader/strategy/a;

.field public e:Lcom/meishu/sdk/core/loader/c;

.field public f:Lcom/meishu/sdk/core/loader/d;

.field public g:Z

.field public h:J

.field public i:Landroid/os/Handler;

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/cache/a;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meishu/sdk/core/loader/c;",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->i:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->k:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->l:Ljava/util/List;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->a:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->c:Ljava/util/Map;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/loader/concurrent/e;Ljava/lang/Object;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/splash/c;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->c:Ljava/util/Map;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    instance-of v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/c;

    check-cast p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/core/loader/concurrent/e;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    return p1
.end method


# virtual methods
.method public final a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v1, ""

    .line 202
    :try_start_0
    const-string v2, "__ACCEPT_ID__"

    const-string v3, "__STRATEGY_DEALID__"

    const-string v4, "__ACCEPT_APPID__"

    const-string v5, "__ACCEPT_PID__"

    const-string v6, "__SDK__"

    const-string v7, "__GROUP_ID__"

    const-string v8, "__P__"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 204
    :goto_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 205
    :goto_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 206
    :goto_2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 207
    :goto_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v7, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 208
    :goto_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v8, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 209
    :goto_5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p2, v0, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public final a(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v2

    if-lez v2, :cond_2

    .line 183
    sget-object v2, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 186
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/cache/a;

    .line 187
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/cache/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 189
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v3

    if-ge v3, p1, :cond_1

    if-lez v3, :cond_1

    .line 190
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 191
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v3

    if-ge v3, p1, :cond_0

    if-lez v3, :cond_0

    .line 192
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 193
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final a(Lcom/meishu/sdk/core/domain/SdkAdInfo;I)V
    .locals 3

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 196
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getNurl()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "AUCTION_PRICE"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "HIGHEST_LOSS_PRICE"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 201
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/loader/cache/a;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/meishu/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 3
    const-string v1, "GDT"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-string v1, "bidding"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    instance-of v1, v0, Lcom/meishu/sdk/core/ad/a;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/meishu/sdk/core/ad/a;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getSdkAd()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/qq/e/comm/pi/IBidding;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v2, "expectCostPrice"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v2, "highestLossPrice"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v3

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/qq/e/comm/pi/IBidding;

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(I)Ljava/util/List;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 9

    .line 213
    const-string v0, "handleLoadMeshu + isAdFinish="

    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",needCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConCurrentManager"

    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 216
    array-length v3, v0

    if-lez v3, :cond_1

    .line 217
    const-string v3, "send onAdLoaded"

    invoke-static {v1, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 219
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    iget-wide v7, v7, Lcom/meishu/sdk/core/loader/c;->startLoadTime:J

    sub-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 221
    iget-object v5, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_1
    new-array v0, v2, [Z

    .line 223
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    iget-object v2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/loader/d;->setLocalParams(Ljava/util/Map;)V

    .line 224
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    new-instance v2, Lcom/meishu/sdk/core/loader/concurrent/e$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/meishu/sdk/core/loader/concurrent/e$a;-><init>(Lcom/meishu/sdk/core/loader/concurrent/e;Z[Z)V

    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/loader/d;->setConCurrentLoadListener(Lcom/meishu/sdk/core/loader/concurrent/f;)V

    .line 225
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoader;->loadAd()V

    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->m:Z

    if-nez p1, :cond_3

    .line 227
    iput-boolean v2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->m:Z

    .line 228
    const-string p1, "no MS ad,load error"

    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_3
    return-void
.end method

.method public declared-synchronized a([Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 25
    :try_start_1
    iget-object v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v4, 0x0

    .line 27
    :goto_0
    iget-object v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    instance-of v6, v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    if-eqz v6, :cond_1

    .line 28
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getFetchDelay()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v6, 0x1f4

    .line 29
    :try_start_3
    sget-object v7, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 30
    sget-object v7, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    invoke-virtual {v7}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getTo()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ltz v7, :cond_0

    move v6, v7

    :catchall_1
    :cond_0
    add-int/2addr v0, v6

    if-ltz v0, :cond_1

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    .line 31
    :try_start_4
    iget-object v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0, v6, v7}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setAll_timeout(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 32
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :cond_1
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSdk_monitor()Lcom/meishu/sdk/core/domain/SdkMonitor;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 35
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    if-ge v7, v0, :cond_26

    .line 36
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/meishu/sdk/core/domain/SdkAdInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 37
    :try_start_6
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGeneral_ext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGeneral_ext()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;

    invoke-virtual {v0, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;->getApp_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setApp_key(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 41
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    :cond_2
    :goto_4
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    .line 42
    :try_start_8
    const-string v0, "SGM"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    sget-object v0, Lcom/meishu/sdk/core/loader/concurrent/e$b;->a:[I

    iget-object v13, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v13}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v0, v0, v13

    if-eq v0, v8, :cond_7

    if-eq v0, v12, :cond_6

    if-eq v0, v11, :cond_5

    if-eq v0, v10, :cond_4

    const/4 v13, 0x6

    if-eq v0, v13, :cond_3

    goto :goto_6

    .line 44
    :cond_3
    const-string v0, "com.meishu.sdk.platform.sigmob.custom.fullscreen.SigmobCustomFullscreenAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 45
    :cond_4
    const-string v0, "com.meishu.sdk.platform.sigmob.custom.interstitial.SigmobCustomInterstitialAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_6

    .line 46
    :cond_5
    const-string v0, "com.meishu.sdk.platform.sigmob.custom.feed.SigmobCustomFeedAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_6

    .line 47
    :cond_6
    const-string v0, "com.meishu.sdk.platform.sigmob.custom.reward.SigmobCustomRewardAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_6

    .line 48
    :cond_7
    const-string v0, "com.meishu.sdk.platform.sigmob.custom.splash.SigmobCustomSplashAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    .line 49
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :cond_8
    :goto_6
    const/4 v13, 0x2

    .line 50
    :try_start_a
    const-string v0, "ADMOB"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    const-string v0, "CUSTOM"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/meishu/sdk/core/loader/concurrent/e$b;->a:[I

    iget-object v14, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v14}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v0, v0, v14

    if-eq v0, v13, :cond_c

    if-eq v0, v12, :cond_b

    if-eq v0, v11, :cond_a

    if-eq v0, v10, :cond_9

    goto :goto_8

    .line 53
    :cond_9
    const-string v0, "com.meishu.admob.interstitial.AdmobIntertitialAdWrapper"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_7

    .line 54
    :cond_a
    const-string v0, "com.meishu.admob.feed.AdmobFeedAdWrapper"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_8

    .line 55
    :cond_b
    const-string v0, "com.meishu.admob.reward.AdmobRewardAdWrapper"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :cond_c
    const-string v0, "com.meishu.admob.banner.AdmobBannerAdWrapper"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    .line 57
    :goto_7
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 58
    :cond_d
    :goto_8
    :try_start_c
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object v0

    const-string v14, "com.meishu.sdk.platform.pangle"

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    const-string v0, "PANGLE"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_a

    .line 60
    :cond_e
    :goto_9
    const-string v0, "PANGLE"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    sget-object v0, Lcom/meishu/sdk/core/loader/concurrent/e$b;->a:[I

    iget-object v14, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v14}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v0, v0, v14

    if-eq v0, v8, :cond_13

    if-eq v0, v13, :cond_12

    if-eq v0, v12, :cond_11

    if-eq v0, v11, :cond_10

    if-eq v0, v10, :cond_f

    goto :goto_b

    .line 62
    :cond_f
    const-string v0, "com.meishu.sdk.platform.pangle.interstitial.PangleInterstitialAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_b

    .line 63
    :cond_10
    const-string v0, "com.meishu.sdk.platform.pangle.feed.PangleNativeAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_b

    .line 64
    :cond_11
    const-string v0, "com.meishu.sdk.platform.pangle.reward.PangleRewardAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_b

    .line 65
    :cond_12
    const-string v0, "com.meishu.sdk.platform.pangle.banner.PangleBannerAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    goto :goto_b

    .line 66
    :cond_13
    const-string v0, "com.meishu.sdk.platform.pangle.splash.PangleSplashAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_b

    .line 67
    :goto_a
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 68
    :cond_14
    :goto_b
    :try_start_e
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object v0

    const-string v10, "com.meishu.sdk.platform.duomeng"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 69
    const-string v0, "DM"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_d

    .line 70
    :cond_15
    :goto_c
    const-string v0, "DM"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 71
    sget-object v0, Lcom/meishu/sdk/core/loader/concurrent/e$b;->a:[I

    iget-object v10, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v10}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v0, v0, v10

    if-eq v0, v8, :cond_16

    goto :goto_e

    .line 72
    :cond_16
    const-string v0, "com.meishu.sdk.platform.duomeng.splash.DMSplashAdapter"

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_e

    .line 73
    :goto_d
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_17
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSourceEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEventUrl([Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    mul-double/2addr v10, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v14

    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v10, v14

    double-to-int v0, v10

    .line 76
    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq_uid(I)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq_id(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v5, :cond_1c

    .line 78
    :try_start_10
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    .line 79
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    .line 80
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getClk()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getErr()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getImp()Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getReq()Ljava/lang/String;

    move-result-object v11

    .line 84
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getRsp()Ljava/lang/String;

    move-result-object v12

    .line 85
    const-string v14, "__PRE__"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 86
    const-string v14, "bidding"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 87
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 88
    const-string v15, "__PRE__"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const-wide/16 v16, 0x0

    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :catchall_7
    move-exception v0

    goto/16 :goto_13

    :catchall_8
    move-exception v0

    const-wide/16 v16, 0x0

    goto/16 :goto_13

    :cond_18
    const-wide/16 v16, 0x0

    .line 89
    :goto_f
    const-string v2, "__PRICE__"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 90
    const-string v2, "BAIDU"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "JD"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "GDT"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "KS"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "HW"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_11

    .line 91
    :cond_19
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "__PRICE__"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    move-object v10, v2

    goto :goto_12

    .line 93
    :cond_1a
    :goto_11
    const-string v2, "bidding"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 94
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v3, "__PRICE__"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 96
    :cond_1b
    :goto_12
    invoke-virtual {v1, v9, v0}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v9, v8}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v9, v10}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v9, v11}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v9, v12}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_14

    .line 101
    :goto_13
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :catchall_9
    move-exception v0

    goto/16 :goto_23

    :cond_1c
    const-wide/16 v16, 0x0

    .line 102
    :goto_14
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    move-result v0

    if-nez v0, :cond_1e

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    move-result v0

    if-lez v0, :cond_1d

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAct_type(I)V

    goto :goto_15

    .line 105
    :cond_1d
    invoke-virtual {v9, v13}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAct_type(I)V

    .line 106
    :cond_1e
    :goto_15
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_req(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_clk(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_imp(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLoadedTime()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setMsLoadedTime(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 112
    :try_start_13
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__UUID__"

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__UUID__"

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__UUID__"

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__UUID__"

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__UUID__"

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_16

    :catchall_a
    move-exception v0

    .line 117
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :goto_16
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 119
    :try_start_15
    const-string v0, "GDT"

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 120
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 121
    iget-object v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBManager;->getAdByPid(Landroid/content/Context;Ljava/lang/String;)Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 122
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;->getS2sbList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :catchall_b
    move-exception v0

    goto/16 :goto_19

    .line 124
    :cond_1f
    :goto_17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    :cond_20
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;

    .line 127
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPlatform()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 129
    :cond_21
    invoke-virtual {v8}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->setUpdateTime(J)V

    .line 131
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;->setS2sbList(Ljava/util/List;)V

    .line 132
    iget-object v2, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBManager;->putAdByPid(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;)V

    goto :goto_1a

    .line 133
    :cond_22
    new-instance v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;

    invoke-direct {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;-><init>()V

    const/4 v2, 0x0

    :cond_23
    if-nez v2, :cond_24

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :cond_24
    new-instance v3, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;

    invoke-direct {v3}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;-><init>()V

    .line 136
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->setAppId(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->setPid(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->setPlatform(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->setUpdateTime(J)V

    .line 140
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;->setS2sbList(Ljava/util/List;)V

    .line 142
    iget-object v2, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBManager;->putAdByPid(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_1a

    .line 143
    :goto_19
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :cond_25
    :goto_1a
    new-instance v0, Lcom/meishu/sdk/core/loader/loadbean/a;

    invoke-direct {v0}, Lcom/meishu/sdk/core/loader/loadbean/a;-><init>()V

    .line 145
    iput-object v9, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 146
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPriority()I

    move-result v2

    rsub-int v2, v2, 0x3e8

    const v3, 0xf4240

    mul-int/2addr v2, v3

    .line 147
    iput v2, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    .line 148
    iget-object v2, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_26
    const-wide/16 v16, 0x0

    .line 149
    invoke-virtual/range {p0 .. p2}, Lcom/meishu/sdk/core/loader/concurrent/e;->b([Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Z

    .line 150
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 151
    :try_start_17
    new-instance v2, Lcom/meishu/sdk/core/loader/strategy/e;

    iget-object v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-direct {v2, v0, v3}, Lcom/meishu/sdk/core/loader/strategy/e;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    iput-object v2, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->d:Lcom/meishu/sdk/core/loader/strategy/a;

    .line 152
    iget-boolean v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    if-eqz v0, :cond_27

    .line 153
    iput-boolean v8, v2, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    goto :goto_1b

    :catchall_c
    move-exception v0

    goto/16 :goto_22

    .line 154
    :cond_27
    :goto_1b
    iput-object v1, v2, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 155
    iget-object v0, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->l:Ljava/util/List;

    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->c:Ljava/util/Map;

    iget-wide v4, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->h:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 156
    :try_start_18
    iput-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    .line 157
    iget-object v7, v2, Lcom/meishu/sdk/core/loader/strategy/e;->h:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 158
    iget-object v7, v2, Lcom/meishu/sdk/core/loader/strategy/e;->h:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iput-object v3, v2, Lcom/meishu/sdk/core/loader/strategy/e;->i:Ljava/util/Map;

    .line 160
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/strategy/e;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_21

    .line 162
    :cond_28
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->isHasMeishuAd()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->isUsed()Z

    move-result v0

    if-nez v0, :cond_29

    .line 163
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/strategy/e;->b()V

    goto :goto_1c

    :catchall_d
    move-exception v0

    goto :goto_20

    .line 164
    :cond_29
    :goto_1c
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getBf_num()I

    move-result v0

    iput v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->y:I

    .line 165
    iput-wide v4, v2, Lcom/meishu/sdk/core/loader/strategy/e;->m:J

    .line 166
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    const-wide/16 v3, 0x2710

    if-eqz v0, :cond_2b

    .line 167
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v9

    cmp-long v0, v9, v16

    if-gtz v0, :cond_2a

    move-wide v9, v3

    goto :goto_1d

    :cond_2a
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v9

    :goto_1d
    iput-wide v9, v2, Lcom/meishu/sdk/core/loader/strategy/e;->s:J
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 168
    :cond_2b
    :try_start_19
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v9

    cmp-long v0, v9, v16

    if-lez v0, :cond_2c

    .line 169
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_1e

    :catch_1
    move-exception v0

    .line 170
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 171
    :cond_2c
    :goto_1e
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/meishu/sdk/core/loader/strategy/e;->m:J

    sub-long/2addr v9, v11

    sub-long/2addr v3, v9

    .line 172
    iget-object v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->l:Landroid/os/Handler;

    new-instance v5, Lcom/meishu/sdk/core/loader/strategy/b;

    invoke-direct {v5, v2}, Lcom/meishu/sdk/core/loader/strategy/b;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_1f

    :catch_2
    move-exception v0

    .line 173
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    :goto_1f
    iget v0, v2, Lcom/meishu/sdk/core/loader/strategy/e;->y:I

    if-ge v6, v0, :cond_2d

    .line 175
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/strategy/e;->h()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 176
    :goto_20
    :try_start_1d
    iput-boolean v8, v2, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 177
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 178
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/strategy/e;->e()V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    :cond_2d
    :goto_21
    :try_start_1e
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    monitor-exit p0

    return-void

    :goto_22
    :try_start_1f
    monitor-exit p0

    throw v0

    :goto_23
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    throw v0
.end method

.method public final b([Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v1, :cond_4

    .line 11
    .line 12
    sget-object v1, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getFirstEntity(Ljava/lang/String;)Lcom/meishu/sdk/core/loader/cache/a;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getFirstEntity(Ljava/lang/String;)Lcom/meishu/sdk/core/loader/cache/a;

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v1, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-lez v3, :cond_5

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getFirstEntity(Ljava/lang/String;)Lcom/meishu/sdk/core/loader/cache/a;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/meishu/sdk/core/loader/cache/a;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    .line 54
    .line 55
    const/4 v11, 0x1

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget v3, v6, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheScore()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-gt v3, v4, :cond_1

    .line 65
    .line 66
    iput-boolean v11, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 67
    .line 68
    invoke-virtual {p2, v11}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setUsed(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Z)V

    .line 72
    .line 73
    .line 74
    return v11

    .line 75
    :cond_1
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->removeFirstEntity(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    iput-boolean v11, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 79
    .line 80
    iput-boolean v11, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    .line 81
    .line 82
    iget-object p2, v6, Lcom/meishu/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p0, v6}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/loader/cache/a;)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Lcom/meishu/sdk/core/loader/cache/b;

    .line 88
    .line 89
    invoke-direct {v4}, Lcom/meishu/sdk/core/loader/cache/b;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->a:Landroid/content/Context;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 101
    .line 102
    iget-wide v8, v0, Lcom/meishu/sdk/core/loader/c;->startLoadTime:J

    .line 103
    .line 104
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSdk_monitor()Lcom/meishu/sdk/core/domain/SdkMonitor;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual/range {v4 .. v10}, Lcom/meishu/sdk/core/loader/cache/b;->a(Landroid/content/Context;Lcom/meishu/sdk/core/loader/cache/a;Ljava/lang/String;JLcom/meishu/sdk/core/domain/SdkMonitor;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    instance-of v0, p2, Lcom/meishu/sdk/core/ad/a;

    .line 140
    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    move-object v0, p2

    .line 144
    check-cast v0, Lcom/meishu/sdk/core/ad/a;

    .line 145
    .line 146
    new-instance v1, Lcom/meishu/sdk/core/loader/concurrent/a;

    .line 147
    .line 148
    invoke-direct {v1, p0, v6}, Lcom/meishu/sdk/core/loader/concurrent/a;-><init>(Lcom/meishu/sdk/core/loader/concurrent/e;Lcom/meishu/sdk/core/loader/cache/a;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setCacheAdListener(Lcom/meishu/sdk/core/loader/cache/c;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    move-object p2, v0

    .line 157
    goto :goto_1

    .line 158
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->i:Landroid/os/Handler;

    .line 159
    .line 160
    new-instance v1, Lcom/meishu/sdk/core/loader/concurrent/b;

    .line 161
    .line 162
    invoke-direct {v1, p0, p2}, Lcom/meishu/sdk/core/loader/concurrent/b;-><init>(Lcom/meishu/sdk/core/loader/concurrent/e;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    iput-boolean v2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 173
    .line 174
    iput-boolean v2, p0, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    .line 175
    .line 176
    :cond_3
    :goto_2
    if-nez p1, :cond_5

    .line 177
    .line 178
    invoke-virtual {p0, v11}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Z)V

    .line 179
    .line 180
    .line 181
    return v11

    .line 182
    :cond_4
    sget-object p1, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->remove(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    return v2
.end method
