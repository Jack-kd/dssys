.class public Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
    }
.end annotation


# static fields
.field private static final SETTINGS_AD_ID:Ljava/lang/String; = "pps_oaid"

.field private static final SETTINGS_TRACK_LIMIT:Ljava/lang/String; = "pps_track_limit"

.field private static final TAG:Ljava/lang/String; = "AdvertisingIdClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
    .locals 0

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pps_oaid_c"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIdInfoViaAIDL(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/c0/i/b/a$a;->a(Landroid/os/IBinder;)Lcom/ubix/ssp/ad/e/a0/c0/i/b/a;

    move-result-object v1

    new-instance v2, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    invoke-interface {v1}, Lcom/ubix/ssp/ad/e/a0/c0/i/b/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/ubix/ssp/ad/e/a0/c0/i/b/a;->g()Z

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v2

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    const-string v1, "bind hms service RemoteException"

    :try_start_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    const-string v1, "bind hms service InterruptedException"

    :try_start_4
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    throw v1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "bind failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Service not found: Exception"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Service not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAdvertisingIdAvailable(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
    .locals 2

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AdvertisingIdClient"

    if-eqz v0, :cond_0

    const-string v0, "requestAdvertisingIdInfo via provider"

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c;->c(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "requestAdvertisingIdInfo via aidl"

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->getIdInfoViaAIDL(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0
.end method

.method private static updateAdvertisingIdInfo(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static verifyAdId(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    new-instance p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/a;

    const-string p1, "Something wrong with verification, please try later."

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
