.class public abstract Lcom/sigmob/sdk/manager/b;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field protected b:Lcom/czhj/sdk/common/models/AdStatus;

.field protected final c:I

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/Integer;

.field protected g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/manager/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    const/16 v0, 0x2001

    iput v0, p0, Lcom/sigmob/sdk/manager/b;->c:I

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 2

    .line 5
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p2

    const-string v0, "is_cache"

    const-string v1, "1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/b;->m(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 12
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTrace_id(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAdx_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/manager/b;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p3, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 1

    .line 14
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const-string p1, "fast_pkg"

    invoke-static {}, Lcom/sigmob/sdk/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 15
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    invoke-virtual {p3, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 2

    .line 18
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_count"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/manager/b;->m(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p3, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private static synthetic a(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 20
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/j;)Z
    .locals 0

    .line 21
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Integer;)Z
    .locals 3

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/sigmob/sdk/base/j;->e:Lcom/sigmob/sdk/base/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v1, Lcom/sigmob/sdk/base/j;->f:Lcom/sigmob/sdk/base/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/sigmob/sdk/manager/b;->k(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackDeeplinkResult: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BaseAdManager"

    invoke-static {v2, v0, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/manager/l;

    invoke-direct {v0, p2, p0}, Lcom/sigmob/sdk/manager/l;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Integer;)Z
    .locals 3

    .line 4
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/sigmob/sdk/base/j;->b:Lcom/sigmob/sdk/base/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v1, Lcom/sigmob/sdk/base/j;->d:Lcom/sigmob/sdk/base/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/manager/b;Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/manager/b;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/Integer;)Z
    .locals 2

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v1, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/manager/b;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/manager/b;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 4

    .line 2
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableDetectPkg()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->canOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "can_dp"

    goto :goto_0

    :cond_3
    const-string v0, "no_can_dp"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/manager/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method public static n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v0, "1000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->c()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToWindAdExpirationManager: allowAdd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", unready = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requestSceneTypeValue = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/manager/b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/czhj/sdk/common/models/AdStatus;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 2

    .line 3
    const-string v0, "respond"

    const-string v1, "1"

    invoke-static {v0, v1, p1, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 7

    .line 4
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/manager/b;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v1, "ready"

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/sigmob/sdk/manager/g;

    invoke-direct {v0, p5, p4, p3}, Lcom/sigmob/sdk/manager/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2, p6, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 4

    .line 8
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setRequestId(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getTraceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v1

    sget-object v2, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "init"

    goto :goto_0

    :cond_1
    const-string v2, "play"

    :goto_0
    new-instance v3, Lcom/sigmob/sdk/manager/h;

    invoke-direct {v3, p0, v0, v1}, Lcom/sigmob/sdk/manager/h;-><init>(Lcom/sigmob/sdk/manager/b;Ljava/lang/String;I)V

    const-string v0, "request"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, p1, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/manager/b;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/manager/b;)V

    invoke-static {}, Lcom/sigmob/sdk/manager/e;->a()Lcom/sigmob/sdk/manager/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/manager/e;->a(Lcom/sigmob/sdk/manager/b;)V

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/sigmob/sdk/videoAd/m;->onAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/sigmob/sdk/manager/e;->a()Lcom/sigmob/sdk/manager/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sigmob/sdk/manager/e;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/manager/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/j;)V
    .locals 2

    .line 16
    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/manager/b;->e:Ljava/lang/String;

    iget-object p3, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expiredAdReload: originVid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", originPrice = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->i()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->ae()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/manager/i;

    invoke-direct {v1, p2}, Lcom/sigmob/sdk/manager/i;-><init>(Ljava/util/Map;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    .line 19
    new-instance v5, Lcom/sigmob/sdk/manager/j;

    invoke-direct {v5, p0, p1, p3}, Lcom/sigmob/sdk/manager/j;-><init>(Lcom/sigmob/sdk/manager/b;Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v0, "respond"

    const-string v1, "1"

    const/4 v3, 0x0

    move-object v4, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/manager/b;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/manager/d;->b(Lcom/sigmob/sdk/manager/b;)V

    return-void
.end method

.method public abstract c()Z
.end method

.method public d(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->f:Ljava/lang/Integer;

    return-void
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lcom/sigmob/sdk/base/models/BaseAdUnit;
.end method

.method public abstract f()Lcom/sigmob/sdk/base/models/LoadAdRequest;
.end method

.method public f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isExpiredAd()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract g()V
.end method

.method public g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 5

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAdUnit: playMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAdUnit: isEndCardReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAdUnit: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->f()Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .locals 5

    .line 2
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ecpm:Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEcpm: eCPM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEcpm: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract i()Lcom/sigmob/sdk/base/models/BaseAdUnit;
.end method

.method public i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->currency:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrency: currency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/manager/k;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/manager/k;-><init>(Lcom/sigmob/sdk/manager/b;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public m(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getFrequencyControl()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "frequency_control_list"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9891\u63a7\u7b56\u7565 ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->strategy_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \u9891\u63a7\u7b56\u7565\u7c7b\u578b = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->frequency_control_event:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
