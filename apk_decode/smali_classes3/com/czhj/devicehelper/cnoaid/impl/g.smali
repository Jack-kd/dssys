.class Lcom/czhj/devicehelper/cnoaid/impl/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/impl/g$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/czhj/devicehelper/cnoaid/impl/g$3;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/g;Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/impl/g$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/czhj/devicehelper/cnoaid/impl/g$2;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/g;Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/czhj/devicehelper/cnoaid/impl/g;Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/czhj/devicehelper/cnoaid/impl/g;->b(Lcom/czhj/devicehelper/cnoaid/c;)V

    return-void
.end method

.method private b(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->c:Z

    if-nez v0, :cond_2

    const-string v0, "com.hihonor.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdvertisingIdInfo"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v1, "HIDeviceIDHelper info is null"

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/czhj/devicehelper/cnoaid/impl/g;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/czhj/devicehelper/cnoaid/impl/g;->a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/devicehelper/honor/identifier/a;->a(Landroid/content/Context;)Lcom/czhj/devicehelper/honor/identifier/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/czhj/devicehelper/honor/identifier/a$a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    new-instance v1, Lcom/czhj/devicehelper/cnoaid/f;

    invoke-direct {v1, v0}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v1}, Lcom/czhj/devicehelper/cnoaid/impl/g;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/impl/g$1;

    invoke-direct {v1, p0, p1}, Lcom/czhj/devicehelper/cnoaid/impl/g$1;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/g;Lcom/czhj/devicehelper/cnoaid/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "com.hihonor.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isAdvertisingIdAvailable"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v2, "HIDeviceIDHelper isAdvertisingIdAvailable error "

    invoke-static {v2, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/devicehelper/honor/identifier/a;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/czhj/devicehelper/cnoaid/impl/g;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    :cond_1
    return v1
.end method
