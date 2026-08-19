.class public final Lcom/sigmob/sdk/manager/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/manager/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "WindAdExpirationManager"

.field private static volatile b:Lcom/sigmob/sdk/manager/d;


# instance fields
.field private volatile c:Z

.field private volatile d:J

.field private e:Ljava/util/Timer;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/sigmob/sdk/manager/b;",
            ">;",
            "Lcom/sigmob/sdk/manager/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/manager/d;->g:Z

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/manager/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/sigmob/sdk/manager/d;->b:Lcom/sigmob/sdk/manager/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/sigmob/sdk/manager/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/manager/d;->b:Lcom/sigmob/sdk/manager/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/manager/d;

    invoke-direct {v1}, Lcom/sigmob/sdk/manager/d;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/manager/d;->b:Lcom/sigmob/sdk/manager/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/sigmob/sdk/manager/d;->b:Lcom/sigmob/sdk/manager/d;

    return-object v0
.end method

.method private static synthetic a(Lcom/sigmob/sdk/manager/d$a;Ljava/lang/Object;)V
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/d$a;->b()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/manager/d;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/sigmob/sdk/manager/d;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/manager/d$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/manager/d$a;Ljava/lang/Object;)V

    return-void
.end method

.method private d(Lcom/sigmob/sdk/manager/b;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/manager/b;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WindAdExpirationManager"

    const-string v1, "removeAdManager"

    invoke-static {v0, v1, p1}, Lcom/czhj/sdk/logger/SigmobLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private e(Lcom/sigmob/sdk/manager/b;)Lcom/sigmob/sdk/manager/d$a;
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/manager/b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/manager/d$a;

    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 3

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "WindAdExpirationManager"

    const-string v1, "cancelTimer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/d;->e:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/manager/d;->e:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 11

    iget-boolean v0, p0, Lcom/sigmob/sdk/manager/d;->g:Z

    const-string v1, "WindAdExpirationManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "checkAdExpiration: The screen is locked."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "checkAdExpiration: adManagerMap is unavailable."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/manager/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "checkAdExpiration: The app is on background."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/manager/d$a;

    if-eqz v4, :cond_d

    if-nez v3, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/manager/b;

    if-nez v4, :cond_5

    const-string v3, "checkAdExpiration: manager is unavailable, remove entry."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-object v5, v3, Lcom/sigmob/sdk/manager/d$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, v3, Lcom/sigmob/sdk/manager/d$a;->c:I

    if-gtz v5, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-boolean v5, v3, Lcom/sigmob/sdk/manager/d$a;->k:Z

    if-eqz v5, :cond_7

    const-string v3, "checkAdExpiration: reloading."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/sigmob/sdk/manager/d$a;->a()Z

    move-result v5

    iget-boolean v6, v3, Lcom/sigmob/sdk/manager/d$a;->l:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sigmob/sdk/base/j;->f:Lcom/sigmob/sdk/base/j;

    goto :goto_2

    :cond_8
    sget-object v6, Lcom/sigmob/sdk/base/j;->e:Lcom/sigmob/sdk/base/j;

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAdExpiration: expiredAd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", requestId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/sigmob/sdk/manager/d$a;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", placementId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/sigmob/sdk/manager/d$a;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reloadLeftNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/sigmob/sdk/manager/d$a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", requestSceneType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    if-eqz v5, :cond_9

    iget-boolean v5, v3, Lcom/sigmob/sdk/manager/d$a;->l:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v7

    goto :goto_3

    :cond_9
    move v5, v2

    :goto_3
    if-nez v5, :cond_a

    iget-boolean v8, v3, Lcom/sigmob/sdk/manager/d$a;->l:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/v;->a(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lcom/sigmob/sdk/manager/b;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v5

    iget v8, v3, Lcom/sigmob/sdk/manager/d$a;->b:I

    iget v9, v3, Lcom/sigmob/sdk/manager/d$a;->c:I

    if-ne v8, v9, :cond_b

    new-instance v8, Lcom/sigmob/sdk/manager/m;

    invoke-direct {v8, v3}, Lcom/sigmob/sdk/manager/m;-><init>(Lcom/sigmob/sdk/manager/d$a;)V

    const-string v9, "object_expire"

    const/4 v10, 0x0

    invoke-static {v9, v10, v5, v8}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_b
    iput-boolean v7, v3, Lcom/sigmob/sdk/manager/d$a;->k:Z

    iget-object v5, v3, Lcom/sigmob/sdk/manager/d$a;->d:Ljava/lang/String;

    iget-object v8, v3, Lcom/sigmob/sdk/manager/d$a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v8, v6}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/j;)V

    iget v4, v3, Lcom/sigmob/sdk/manager/d$a;->c:I

    sub-int/2addr v4, v7

    iput v4, v3, Lcom/sigmob/sdk/manager/d$a;->c:I

    goto/16 :goto_0

    :cond_c
    :goto_4
    const-string v3, "checkAdExpiration: retry not available."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    :goto_5
    const-string v3, "checkAdExpiration: entry is unavailable, remove entry."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/manager/b;Ljava/lang/Integer;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/manager/b;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/d;->e(Lcom/sigmob/sdk/manager/b;)Lcom/sigmob/sdk/manager/d$a;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/manager/d$a;->b()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(J)V
    .locals 11

    .line 3
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    :try_start_0
    const-string p1, "WindAdExpirationManager"

    const-string p2, "startExpirationCheck: interval is unavailable."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/sigmob/sdk/manager/d;->d:J

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "WindAdExpirationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startExpirationCheck: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sigmob/sdk/manager/d;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/sigmob/sdk/manager/d;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sigmob/sdk/manager/d;->e()V

    const-wide/16 v3, 0x3e8

    mul-long v7, p1, v3

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/sigmob/sdk/manager/d;->e:Ljava/util/Timer;

    new-instance v6, Lcom/sigmob/sdk/manager/d$1;

    invoke-direct {v6, p0}, Lcom/sigmob/sdk/manager/d$1;-><init>(Lcom/sigmob/sdk/manager/d;)V

    move-wide v9, v7

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput-boolean v2, p0, Lcom/sigmob/sdk/manager/d;->c:Z

    iput-wide p1, p0, Lcom/sigmob/sdk/manager/d;->d:J

    const-string p1, "WindAdExpirationManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startExpirationCheck: status = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sigmob/sdk/manager/d;->c:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 3

    .line 4
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOriginVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOriginPrice()Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/manager/d$a;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/sigmob/sdk/manager/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/sigmob/sdk/manager/d$a;->k:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEnd: originVid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "WindAdExpirationManager"

    invoke-static {v1, v0, p1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/sigmob/sdk/manager/b;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/manager/b;Z)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/manager/b;Z)V
    .locals 6

    .line 6
    const/4 v0, 0x0

    const-string v1, "WindAdExpirationManager"

    if-nez p1, :cond_0

    const-string p1, "addAdManager: adManager is unavailable."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/manager/b;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "addAdManager: baseAdUnit is unavailable."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/d;->e(Lcom/sigmob/sdk/manager/b;)Lcom/sigmob/sdk/manager/d$a;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/d;->b(Lcom/sigmob/sdk/manager/b;)V

    :cond_3
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestSceneType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/manager/b;->b(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    return-void

    :cond_4
    new-instance v3, Lcom/sigmob/sdk/manager/d$a;

    invoke-direct {v3, v2, p2}, Lcom/sigmob/sdk/manager/d$a;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    iget-wide v4, p0, Lcom/sigmob/sdk/manager/d;->d:J

    invoke-virtual {p0, v4, v5}, Lcom/sigmob/sdk/manager/d;->a(J)V

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAdManager: vid = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/sigmob/sdk/manager/d$a;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", activeExpiration = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v3, Lcom/sigmob/sdk/manager/d$a;->l:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/sigmob/sdk/manager/d;->g:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/manager/b;)V
    .locals 2

    .line 3
    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WindAdExpirationManager"

    const-string v1, "removeAdManager: adManager is unavailable."

    invoke-static {v0, v1, p1}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/d;->d(Lcom/sigmob/sdk/manager/b;)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/d;->c()V

    :cond_1
    return-void
.end method

.method public declared-synchronized c()V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "WindAdExpirationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopExpirationCheck: running = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sigmob/sdk/manager/d;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/manager/d;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/manager/d;->e()V

    iput-boolean v2, p0, Lcom/sigmob/sdk/manager/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

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

    throw v0
.end method

.method public c(Lcom/sigmob/sdk/manager/b;)V
    .locals 2

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WindAdExpirationManager"

    const-string v1, "resetAdManager: adManager is unavailable."

    invoke-static {v0, v1, p1}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/d;->d(Lcom/sigmob/sdk/manager/b;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/manager/b;Z)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/d;->c()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/d;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/manager/d;->b:Lcom/sigmob/sdk/manager/d;

    return-void
.end method
