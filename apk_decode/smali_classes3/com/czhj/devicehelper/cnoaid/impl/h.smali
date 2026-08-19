.class Lcom/czhj/devicehelper/cnoaid/impl/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/devicehelper/cnoaid/impl/h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/czhj/devicehelper/cnoaid/impl/h$2;

    invoke-direct {p1, p0}, Lcom/czhj/devicehelper/cnoaid/impl/h$2;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/h;)V

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Lcom/czhj/devicehelper/cnoaid/impl/h$a;

    invoke-direct {v2, v0, v1}, Lcom/czhj/devicehelper/cnoaid/impl/h$a;-><init>(Landroid/os/IBinder;Lcom/czhj/devicehelper/cnoaid/impl/h$1;)V

    invoke-virtual {v2}, Lcom/czhj/devicehelper/cnoaid/impl/h$a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_0
    :goto_1
    return-object v1
.end method

.method private a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->c:Landroid/os/Handler;

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/impl/h$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/czhj/devicehelper/cnoaid/impl/h$4;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/h;Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->c:Landroid/os/Handler;

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/impl/h$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/czhj/devicehelper/cnoaid/impl/h$3;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/h;Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/czhj/devicehelper/cnoaid/impl/h;Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/czhj/devicehelper/cnoaid/impl/h;->b(Lcom/czhj/devicehelper/cnoaid/c;)V

    return-void
.end method

.method private b(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 12

    const-string v0, "com.huawei.hms"

    const-string v1, "com.huawei.hwid.tv"

    const-string v2, "com.huawei.hwid"

    const-string v3, "huawei OAID info is null"

    invoke-virtual {p0}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "huawei OAID not Support"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v1, "huawei OAID not support"

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;

    const-string v8, "getAdvertisingIdInfo"

    const-class v9, Landroid/content/Context;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iget-object v8, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {v3}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    move v8, v4

    move-object v9, v6

    :goto_0
    if-ge v8, v5, :cond_2

    aget-object v10, v7, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v10}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v9}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v7, Lcom/czhj/devicehelper/cnoaid/f;

    invoke-direct {v7, v3}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v7}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    return-void

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v8, "getId"

    invoke-virtual {v3, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_6

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_1
    :try_start_1
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v1, v0, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "HWDeviceIDHelper error, will retry"

    invoke-static {v0, v3}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    invoke-direct {v0, v3}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v0}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_3
    const-string v1, "HWDeviceIDHelper error "

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/f;

    invoke-direct {v1, v0}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v1}, Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/czhj/devicehelper/cnoaid/impl/h$1;

    invoke-direct {v1, p0, p1}, Lcom/czhj/devicehelper/cnoaid/impl/h$1;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/h;Lcom/czhj/devicehelper/cnoaid/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-class v0, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;

    const-string v2, "isAdvertisingIdAvailable"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

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

    const-string v2, "hw oaid support"

    invoke-static {v2, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.huawei.hwid"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    const-string v2, "com.huawei.hwid.tv"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    const-string v2, "com.huawei.hms"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    return v3

    :catchall_1
    :cond_4
    return v1
.end method
