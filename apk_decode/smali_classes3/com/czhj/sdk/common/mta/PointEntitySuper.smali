.class public abstract Lcom/czhj/sdk/common/mta/PointEntitySuper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field protected mPointEntityClass:Ljava/lang/Object;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private final q:J

.field private final r:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->q:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->r:J

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "motion_after"

    const-string v1, "frequency_control_list"

    const-string v2, "motion_before"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static captureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x60

    if-le v2, v3, :cond_0

    const/16 v3, 0x7b

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x20

    int-to-char p0, v2

    aput-char p0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static lowFirstChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x20

    int-to-char p0, v2

    aput-char p0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public abstract appId()Ljava/lang/String;
.end method

.method public commit()V
    .locals 2

    iput-object p0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->mPointEntityClass:Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    new-instance v1, Lcom/czhj/sdk/common/mta/PointEntitySuper$1;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper$1;-><init>(Lcom/czhj/sdk/common/mta/PointEntitySuper;)V

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAc_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppinfo_switch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getClientversion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompatible()I
    .locals 1

    iget v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->p:I

    return v0
.end method

.method public abstract getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getGameversion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogle_aid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei1()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getImei1()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getImei2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegration()I
    .locals 1

    iget v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->n:I

    return v0
.end method

.method public getIs_mediation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation_switch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworktype()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getActiveNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOaid_api()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID_API()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->j:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->j:Ljava/util/Map;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public abstract getSdkversion()Ljava/lang/String;
.end method

.method public getSeconds_from_GMT()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeq_id()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->q:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_category()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_zone()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->r:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getUDID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getWmsession_id()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public insertToDB(Lcom/czhj/sdk/common/Database/SQLiteMTAHelper$ExecCallBack;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->isAcTypeBlock()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->appId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "options"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigandroid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_uniq_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcdebug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteMTAHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteMTAHelper;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;

    invoke-direct {v2}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;-><init>()V

    const-string v3, "point"

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->setTableName(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "item"

    const-string v5, "sigandroid_mtadb"

    invoke-static {v0, v5}, Lcom/czhj/sdk/common/utils/AESUtil;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "encryption"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->setColumnValues(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->build()Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;

    move-result-object v0

    new-instance v2, Lcom/czhj/sdk/common/mta/PointEntitySuper$2;

    invoke-direct {v2, p0, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper$2;-><init>(Lcom/czhj/sdk/common/mta/PointEntitySuper;Lcom/czhj/sdk/common/Database/SQLiteMTAHelper$ExecCallBack;)V

    invoke-static {v1, v0, v2}, Lcom/czhj/sdk/common/Database/SQLiteMTAHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;Lcom/czhj/sdk/common/Database/SQLiteMTAHelper$ExecCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public abstract isAcTypeBlock()Z
.end method

.method public sendServe()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->sendServe(Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V

    return-void
.end method

.method public sendServe(Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V
    .locals 4

    .line 2
    iput-object p0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->mPointEntityClass:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigandroid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_uniq_key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&_batch_value="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/mta/BuriedPointManager;->deflateAndBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/network/BuriedPointRequest;->BuriedPointSend(Ljava/lang/String;Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAc_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->c:Ljava/lang/String;

    return-void
.end method

.method public setAppinfo_switch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->e:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->g:Ljava/lang/String;

    return-void
.end method

.method public setCompatible(I)V
    .locals 0

    iput p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->p:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->i:Ljava/lang/String;

    return-void
.end method

.method public setIntegration(I)V
    .locals 0

    iput p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->n:I

    return-void
.end method

.method public setIs_mediation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    return-void
.end method

.method public setLocation_switch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->f:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->l:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->m:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->k:Ljava/lang/String;

    return-void
.end method

.method public setSub_category(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->h:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->o:Ljava/lang/String;

    return-void
.end method

.method public testJsonString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "options"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-direct {p0, v4}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->a(Ljava/lang/String;)Z

    move-result v2

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->mPointEntityClass:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ReflectionUtil;->getMethodWithTraversal(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "getLogs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "getDeviceContext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/czhj/sdk/common/mta/PointEntitySuper;->mPointEntityClass:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->lowFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_3
    const-string v5, "content_length"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "content-length"

    :goto_1
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v5, "content_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "content-type"

    goto :goto_1

    :cond_5
    const-string v5, "ac_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "_ac_type"

    goto :goto_1

    :cond_6
    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v4, "_user_id"

    goto :goto_1

    :cond_7
    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto :goto_1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-object v1

    :cond_9
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
