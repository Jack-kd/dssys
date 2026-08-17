.class Lcom/ubix/ssp/ad/e/a0/c0/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/f;Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/f;Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/c0/h/f;Lcom/ubix/ssp/ad/e/a0/c0/c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->b(Lcom/ubix/ssp/ad/e/a0/c0/c;)V

    return-void
.end method

.method private b(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
    .locals 5

    const-string v0, "User has disabled advertising identifier"

    const-string v1, "Advertising identifier info is null"

    :try_start_0
    const-string v2, "com.hihonor.ads.identifier.AdvertisingIdClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/hihonor/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/hihonor/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v2, v1}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    iget-boolean v3, v2, Lcom/hihonor/ads/identifier/AdvertisingIdClient$Info;->isLimit:Z

    if-eqz v3, :cond_1

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v2, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/hihonor/ads/identifier/AdvertisingIdClient$Info;->id:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v2, v1}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    goto :goto_7

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_2
    iget-boolean v4, v3, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->b:Z

    if-eqz v4, :cond_3

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v2, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v3, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v3, v2}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    goto :goto_7

    :catchall_2
    move-exception v2

    goto :goto_5

    :goto_4
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v3, v2}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_5
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    :try_start_5
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_4
    iget-boolean v1, v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->b:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    goto :goto_7

    :cond_5
    iget-object v0, v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :goto_6
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v1}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/h/f$a;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/h/f$a;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/f;Lcom/ubix/ssp/ad/e/a0/c0/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 6

    .line 5
    const-string v0, "AdvertisingIdPlatform"

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v1, "supported in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.hihonor.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "supported in system"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/hihonor/ads/identifier/AdvertisingIdClient;->isAdvertisingIdAvailable(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v3, "supported in custom"

    invoke-static {v0, v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supported "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method
