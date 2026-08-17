.class public Lcom/anythink/network/baidu/BaiduATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/BaiduATInitManager$InitCallback;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "BaiduATInitManager"

.field private static volatile i:Lcom/anythink/network/baidu/BaiduATInitManager; = null

.field protected static final j:Ljava/lang/String; = "AT_BAIDU_C2S_"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/network/baidu/BaiduATBiddingInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Z

.field private c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

.field d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->b:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->d:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->g:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    const-string p1, "bd_a"

    const/4 v0, -0x1

    invoke-static {p3, p1, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    .line 15
    const-string v1, "bd_b"

    invoke-static {p3, v1, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    .line 16
    const-string v2, "bd_c"

    invoke-static {p3, v2, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    .line 17
    const-string v3, "bd_s"

    invoke-static {p3, v3, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 18
    const-string v4, "bd_e"

    const-string v5, ""

    invoke-static {p3, v4, v5}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    const-string v6, "bd_f"

    invoke-static {p3, v6, v5}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    const-string v7, "bd_n"

    invoke-static {p3, v7, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    .line 21
    const-string v8, "bd_o"

    invoke-static {p3, v8, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    .line 22
    const-string v9, "bd_r"

    invoke-static {p3, v9, v5}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq p1, v0, :cond_0

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v9, "A"

    invoke-virtual {p2, v9, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    :cond_0
    if-eq v1, v0, :cond_1

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "B"

    invoke-virtual {p2, v1, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    :cond_1
    if-eq v2, v0, :cond_2

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "C"

    invoke-virtual {p2, v1, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    :cond_2
    if-eq v3, v0, :cond_3

    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S"

    invoke-virtual {p2, v1, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    :cond_3
    if-eq v7, v0, :cond_4

    .line 27
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "N"

    invoke-virtual {p2, v1, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    :cond_4
    if-eq v8, v0, :cond_5

    .line 28
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "O"

    invoke-virtual {p2, v0, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 29
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 30
    const-string p1, "E"

    invoke-virtual {p2, p1, v4}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 31
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 32
    const-string p1, "F"

    invoke-virtual {p2, p1, v6}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 33
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 34
    const-string p1, "R"

    invoke-virtual {p2, p1, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 35
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    :try_start_0
    const-string p1, "request_params_cust_ext"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 13
    :cond_1
    :goto_1
    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 15
    :catchall_1
    :cond_2
    :try_start_3
    const-string p1, "request_params_ext"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    instance-of p3, p1, Ljava/util/Map;

    if-eqz p3, :cond_5

    .line 17
    check-cast p1, Ljava/util/Map;

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 19
    :try_start_4
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 21
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 22
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    :catchall_2
    move-exception p3

    goto :goto_5

    .line 24
    :cond_4
    :goto_4
    check-cast v0, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 25
    :goto_5
    :try_start_5
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    :cond_5
    return-void
.end method

.method public static getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/network/baidu/BaiduATInitManager;->i:Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/anythink/network/baidu/BaiduATInitManager;->i:Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/anythink/network/baidu/BaiduATInitManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/anythink/network/baidu/BaiduATInitManager;->i:Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/anythink/network/baidu/BaiduATInitManager;->i:Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;DLjava/lang/Object;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->a:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT_BAIDU_C2S_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/anythink/network/baidu/BaiduATBiddingInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/anythink/network/baidu/BaiduATBiddingInfo;-><init>(Ljava/lang/Object;DLjava/lang/Object;)V

    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "bd_r"

    const-string v1, "bd_n"

    const-string v2, "nw_extra_info"

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    .line 54
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object p2, v3

    .line 55
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/json/JSONObject;

    goto :goto_0

    .line 57
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :goto_0
    const-string v4, "request_id"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const/4 p1, -0x1

    .line 59
    invoke-static {p3, v1, p1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 60
    const-string v5, ""

    invoke-static {p3, v0, v5}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eq v4, p1, :cond_2

    .line 61
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 63
    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_3
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-object p2
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;",
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

    .line 12
    invoke-direct {p0, p1, p2, p4}, Lcom/anythink/network/baidu/BaiduATInitManager;->b(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZLjava/lang/Object;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 36
    :try_start_0
    instance-of p1, p2, Lcom/baidu/mobads/sdk/api/RewardVideoAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, ""

    if-eqz p1, :cond_0

    .line 37
    :try_start_1
    move-object p1, p2

    check-cast p1, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getECPMLevel()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 38
    :cond_0
    instance-of p1, p2, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    if-eqz p1, :cond_1

    .line 39
    move-object p1, p2

    check-cast p1, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->getECPMLevel()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_1
    instance-of p1, p2, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz p1, :cond_2

    .line 41
    move-object p1, p2

    check-cast p1, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getECPMLevel()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 42
    :cond_2
    instance-of p1, p2, Lcom/baidu/mobads/sdk/api/SplashAd;

    if-eqz p1, :cond_3

    .line 43
    move-object p1, p2

    check-cast p1, Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->getECPMLevel()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p3

    .line 44
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    const-string p1, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_4
    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 47
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 48
    :goto_1
    instance-of p1, p4, Lcom/anythink/core/api/ATBiddingListenerExt;

    if-eqz p1, :cond_6

    .line 49
    new-instance p1, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    invoke-direct {p1, p2}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 50
    check-cast p4, Lcom/anythink/core/api/ATBiddingListenerExt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v0, v1, p2, p1, p3}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p4, p1, p2}, Lcom/anythink/core/api/ATBiddingListenerExt;->onC2SBiddingResultWithData(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    goto :goto_3

    .line 51
    :cond_5
    instance-of p1, p3, Lcom/anythink/core/api/ATCustomLoadListenerExt;

    if-eqz p1, :cond_6

    .line 52
    check-cast p3, Lcom/anythink/core/api/ATCustomLoadListenerExt;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p3, p1}, Lcom/anythink/core/api/ATCustomLoadListenerExt;->onAdDataLoadedWithAds([Lcom/anythink/core/api/BaseAd;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 53
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_3
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/baidu/BaiduATBiddingInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/network/baidu/BaiduATBiddingInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAdapterBridgeVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "9.450.1.2"

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Baidu"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.baidu.mobads.sdk.api.BDAdConfig"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATConst;->getNetworkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/baidu/BaiduATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/MediationInitCallback;)V

    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/MediationInitCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ")V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->getPersionalizedAdStatus()I

    move-result p3

    iput p3, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    iget p3, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->d:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setLimitPersonalAds(Z)V

    .line 5
    iget-boolean p3, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->b:Z

    if-nez p3, :cond_1

    .line 6
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionReadDeviceID(Z)V

    .line 7
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionOAID(Z)V

    .line 8
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionAppList(Z)V

    .line 9
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionStorage(Z)V

    .line 10
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionLocation(Z)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 12
    invoke-static {}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->getLimitPersonalAdsStatus()Z

    .line 13
    :cond_2
    iget-boolean p3, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->f:Z

    if-eqz p3, :cond_3

    if-eqz p4, :cond_a

    .line 14
    invoke-interface {p4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    goto :goto_5

    .line 15
    :cond_3
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->g:Ljava/lang/Object;

    monitor-enter p3

    .line 16
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->f:Z

    if-eqz v0, :cond_5

    if-eqz p4, :cond_4

    .line 17
    invoke-interface {p4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 18
    :cond_4
    :goto_1
    monitor-exit p3

    goto :goto_5

    .line 19
    :cond_5
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    const-string v0, ""

    .line 21
    const-string v2, "wechat_app_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 23
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    if-nez p2, :cond_7

    .line 24
    new-instance p2, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    invoke-direct {p2}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;-><init>()V

    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 25
    :cond_7
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->e:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setAppsid(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 27
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    invoke-virtual {p2, v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setWXAppid(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 28
    :cond_8
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->build(Landroid/content/Context;)Lcom/baidu/mobads/sdk/api/BDAdConfig;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->init()V

    .line 30
    iput-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->f:Z

    if-eqz p4, :cond_9

    .line 31
    invoke-interface {p4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 32
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p4, :cond_9

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    .line 34
    :cond_9
    :goto_4
    monitor-exit p3

    :cond_a
    :goto_5
    return-void

    .line 35
    :goto_6
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public setBDAdConfigBuilder(Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->c:Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 2
    .line 3
    return-void
.end method

.method public setBaiduATCustomController(Lcom/anythink/network/baidu/BaiduATCustomController;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionReadDeviceID()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionReadDeviceID(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionLocation()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionLocation(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionStorage()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionStorage(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionAppList()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionAppList(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionOAID()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionOAID(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionDeviceInfo()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionDeviceInfo(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionAppUpdate()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionAppUpdate(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/anythink/network/baidu/BaiduATCustomController;->getPermissionRunningApp()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionRunningApp(Z)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATInitManager;->b:Z

    .line 61
    .line 62
    :cond_0
    return-void
.end method
