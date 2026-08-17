.class public Lcom/czhj/sdk/common/ClientMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/IdentifierManager$AdvertisingIdChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/ClientMetadata$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static volatile d:Lcom/czhj/sdk/common/ClientMetadata;

.field private static g:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Z

.field private C:J

.field private e:Landroid/location/Location;

.field private f:Lcom/czhj/sdk/common/utils/IdentifierManager;

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:I

.field private w:I

.field private x:Landroid/view/Display;

.field private y:Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/czhj/sdk/common/ClientMetadata;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "-1"

    sput-object v0, Lcom/czhj/sdk/common/ClientMetadata;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->z:Z

    return-void
.end method

.method public static synthetic a(Lcom/czhj/sdk/common/ClientMetadata;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/czhj/sdk/common/ClientMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->q:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/czhj/sdk/common/ClientMetadata;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->z:Z

    return p1
.end method

.method public static synthetic b(Lcom/czhj/sdk/common/ClientMetadata;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->q:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    new-instance v1, Lcom/czhj/sdk/common/ClientMetadata$1;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/ClientMetadata$1;-><init>(Lcom/czhj/sdk/common/ClientMetadata;)V

    invoke-static {v0, v1}, Lcom/czhj/devicehelper/DeviceHelper;->getOAID(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/czhj/sdk/common/ClientMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/czhj/sdk/common/ClientMetadata;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->B:Z

    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Config;->getOaidApiDisable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->s:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->A:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->B:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/czhj/sdk/common/ClientMetadata;->C:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->C:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->B:Z

    iget v2, p0, Lcom/czhj/sdk/common/ClientMetadata;->A:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/czhj/sdk/common/ClientMetadata;->A:I

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    new-instance v2, Lcom/czhj/sdk/common/ClientMetadata$2;

    invoke-direct {v2, p0}, Lcom/czhj/sdk/common/ClientMetadata$2;-><init>(Lcom/czhj/sdk/common/ClientMetadata;)V

    invoke-static {v1, v2}, Lcom/czhj/devicehelper/cnoaid/a;->a(Landroid/content/Context;Lcom/czhj/devicehelper/cnoaid/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lcom/czhj/sdk/common/ClientMetadata;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/czhj/sdk/common/ClientMetadata;->s:Ljava/lang/String;

    return-object p0
.end method

.method private d()Z
    .locals 3

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static generateViewId()I
    .locals 4

    :cond_0
    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public static getBootSystemTime()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getBootSystemTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getCPUInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCPUModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getCell_ip()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getCell_ip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOSLevel()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceOSLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/czhj/sdk/common/ClientMetadata;
    .locals 2

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->d:Lcom/czhj/sdk/common/ClientMetadata;

    if-nez v0, :cond_1

    const-class v0, Lcom/czhj/sdk/common/ClientMetadata;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/sdk/common/ClientMetadata;->d:Lcom/czhj/sdk/common/ClientMetadata;

    if-nez v1, :cond_0

    new-instance v1, Lcom/czhj/sdk/common/ClientMetadata;

    invoke-direct {v1}, Lcom/czhj/sdk/common/ClientMetadata;-><init>()V

    sput-object v1, Lcom/czhj/sdk/common/ClientMetadata;->d:Lcom/czhj/sdk/common/ClientMetadata;

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
    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->d:Lcom/czhj/sdk/common/ClientMetadata;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static getPackageInfoWithUri(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getQueryParamMap(Landroid/net/Uri;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-1"

    return-object v0

    :cond_0
    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getVAID()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->getVAID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEmulator()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isEmulator()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isRoot()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isRoot()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setOAIDCertPem(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/czhj/devicehelper/msaoaId/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "not support OAID Module"

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setOaidCertFileName(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/czhj/devicehelper/msaoaId/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "not support OAID Module"

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/czhj/sdk/common/ClientMetadata;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/app/DownloadManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public getActiveNetworkType()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getActiveNetworkType()Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    sget-object v0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->UNKNOWN:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->getId()I

    move-result v0

    return v0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApkMd5()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const-string v1, "MD5"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getApkSha1OrMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApkSha1()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const-string v1, "SHA1"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getApkSha1OrMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBatteryLevel()Ljava/lang/Float;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getBatterySaveEnable()Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getBatterySaveEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBatteryState()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getBatteryState(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBlueToothName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getBlueToothName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBootId()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/Config;->isDisableBootMark()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    const-string v2, "\\s*|\t|\r|\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBootId: bootId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBootId: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    return-object v0
.end method

.method public getDensityDpi()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDensityDpi(Landroid/content/Context;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int v0, v0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getDeviceId(I)Ljava/lang/String;
    .locals 3

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isCanUsePhoneState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isCanRetryIMEI()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/czhj/devicehelper/DeviceHelper;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/czhj/devicehelper/DeviceHelper;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/czhj/devicehelper/DeviceHelper;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    :try_start_2
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->k:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceScreenHeightDip()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceScreenHeightDip(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceScreenRealHeightDip()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceScreenRealHeightDip(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceScreenRealWidthDip()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceScreenRealWidthDip(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceScreenWidthDip()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceScreenWidthDip(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDeviceSerial()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/devicehelper/DeviceHelper;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInsetBottom()I
    .locals 1

    iget v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->h:I

    return v0
.end method

.method public getInstallTime()J
    .locals 2

    iget-wide v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->u:J

    return-wide v0
.end method

.method public getLimitAdTrackingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->e:Landroid/location/Location;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isCanRetryLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "private :use_location "

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->e:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->e:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isCanUseLocation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNetworkOperatorForUrl()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getNetworkOperatorForUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/Config;->getDisable_up_OAid()I

    move-result v0

    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Config;->getOaidApiDisable()Z

    move-result v1

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID_SDK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->z:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/czhj/sdk/common/ClientMetadata;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getOAID_API()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getOAID_SDK()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Config;->getDisable_up_OAid()I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/czhj/sdk/common/ClientMetadata;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    goto :goto_0

    :catchall_0
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->B:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientationInt()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getOrientationInt(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPermission(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v1, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permissionReq:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_3
    return-object v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getRealMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getRotation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOrientation(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    return p1
.end method

.method public getStringResources(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getStringResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStyleResources(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSystemTotalMemorySize()Ljava/lang/Long;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getSysteTotalMemorySize(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->t:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sig_UDID"

    iget-object v2, p0, Lcom/czhj/sdk/common/ClientMetadata;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateId()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/Config;->isDisableBootMark()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateId: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/devicehelper/DeviceHelper;->getWifiName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifimac()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/devicehelper/DeviceHelper;->getWifimac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->u:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/czhj/sdk/common/ClientMetadata;->u:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    div-long/2addr v2, v0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "install_time"

    iget-wide v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->u:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "sig_UDID"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "uid_aes_gcm"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "sigandroid_mtadb"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/AESUtil;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "uid"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "uid"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "uid_aes_gcm"

    sget-object v2, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    const-string v3, "sigandroid_mtadb"

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/AESUtil;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "oaid_aes_gcm"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "sigandroid_mtadb"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/AESUtil;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "oaid"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "oaid"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "oaid_aes_gcm"

    iget-object v1, p0, Lcom/czhj/sdk/common/ClientMetadata;->p:Ljava/lang/String;

    const-string v2, "sigandroid_mtadb"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/AESUtil;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_3
    new-instance p1, Lcom/czhj/sdk/common/utils/IdentifierManager;

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/czhj/sdk/common/utils/IdentifierManager;-><init>(Landroid/content/Context;Lcom/czhj/sdk/common/utils/IdentifierManager$AdvertisingIdChangeListener;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->f:Lcom/czhj/sdk/common/utils/IdentifierManager;

    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/Database/SQLiteMTAHelper;->initialize(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/czhj/sdk/common/mta/BuriedPointManager;->getInstance()Lcom/czhj/sdk/common/mta/BuriedPointManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/BuriedPointManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/DeviceUtils;->registerNetworkChange(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_6

    :goto_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register network monitoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Too many requests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TooManyRequestsException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register network monitoring: registration limit exceeded - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register network monitoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :goto_7
    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/TrackManager;->startRetryTracking()V

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object p1

    new-instance v0, Lcom/czhj/sdk/common/b;

    invoke-direct {v0}, Lcom/czhj/sdk/common/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isNetworkConnected(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/common/network/SigmobRequestUtil;->isConnection(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRetryAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->i:Z

    return v0
.end method

.method public isSDCardAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public onIdChanged(Lcom/czhj/sdk/common/utils/AdvertisingId;Lcom/czhj/sdk/common/utils/AdvertisingId;)V
    .locals 0

    return-void
.end method

.method public setEnableLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->o:Z

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->e:Landroid/location/Location;

    return-void
.end method

.method public setRetryAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->i:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sput-object p1, Lcom/czhj/sdk/common/ClientMetadata;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/czhj/sdk/common/ClientMetadata;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid_aes_gcm"

    const-string v2, "sigandroid_mtadb"

    invoke-static {p1, v2}, Lcom/czhj/sdk/common/utils/AESUtil;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setWindInsets(Landroid/view/WindowInsets;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    iput p1, p0, Lcom/czhj/sdk/common/ClientMetadata;->h:I

    :cond_0
    return-void
.end method
