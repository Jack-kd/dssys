.class public Lcom/fl/saas/adx/util/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static HmsVersionCode:Ljava/lang/String; = null

.field private static final MARKETS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MARKET_CODE:Ljava/lang/String; = null

.field public static appId:Ljava/lang/String; = ""

.field public static appList:Lorg/json/JSONArray; = null

.field private static autoNum:Ljava/lang/Long; = null

.field public static channelId:Ljava/lang/String; = ""

.field public static controlBean:Lcom/fl/saas/r0; = null

.field public static customConfig:Ljava/lang/String; = null

.field public static customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation; = null

.field public static customMap:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static customizeId:Ljava/lang/String; = null

.field public static deviceAndroidID:Ljava/lang/String; = null

.field public static deviceHasAccelerometerSensor:Z = false

.field public static deviceImei:Ljava/lang/String; = null

.field public static deviceMac:Ljava/lang/String; = null

.field public static enableCollectAppInstallStatus:Z = false

.field public static filling_timing:I = 0x0

.field private static hasGetImsi:Z = false

.field private static imsi:Ljava/lang/String; = null

.field public static isCanUseAndroid:Z = false

.field public static isCanUseBootID:Z = false

.field public static isCanUseIMEI:Z = false

.field public static isCanUseIMSI:Z = false

.field public static isCanUseLocation:Z = false

.field public static isCanUseMac:Z = false

.field public static isCanUseSSID:Z = false

.field public static isCanUseSensor:Z = false

.field public static isGetAndroidID:Z = false

.field public static isGetImei:Z = false

.field public static isGetMac:Z = false

.field public static isInitializeBD:Z = false

.field public static isInitializeCSJ:Z = false

.field public static isInitializeGDT:Z = false

.field public static isInitializeKS:Z = false

.field public static isInitializeQTT:Z = false

.field private static isLoadOperators:Z = false

.field private static final mainHandler:Landroid/os/Handler;

.field private static materialAdvList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static operatorId:Ljava/lang/String; = null

.field public static personalizedState:Z = false

.field private static sContext:Landroid/content/Context; = null

.field public static scaleType:Landroid/widget/ImageView$ScaleType; = null

.field private static screenPx:[I = null

.field public static sourceTag:Ljava/lang/String; = null

.field public static subChannel:Ljava/lang/String; = ""

.field public static totalRAM:J = 0x0L

.field public static userAgent:Ljava/lang/String; = null

.field public static userExt:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseBootID:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSSID:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseAndroid:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseMac:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMEI:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseLocation:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->personalizedState:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->enableCollectAppInstallStatus:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeGDT:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeKS:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeBD:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeCSJ:Z

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeQTT:Z

    const-string v0, ""

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sourceTag:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isGetImei:Z

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceImei:Ljava/lang/String;

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isGetAndroidID:Z

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceAndroidID:Ljava/lang/String;

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isGetMac:Z

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSensor:Z

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceMac:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->appList:Lorg/json/JSONArray;

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/fl/saas/adx/util/DeviceUtil;->totalRAM:J

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v5, Lcom/fl/saas/adx/util/DeviceUtil;->mainHandler:Landroid/os/Handler;

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->imsi:Ljava/lang/String;

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->hasGetImsi:Z

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isLoadOperators:Z

    const-string v1, "0"

    sput-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->operatorId:Ljava/lang/String;

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->autoNum:Ljava/lang/Long;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->MARKETS:Ljava/util/Map;

    const-string v1, "com.heytap.market"

    const-string v3, "com.oppo.market"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPPO"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "OnePlus"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "realme"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.xiaomi.market"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "Xiaomi"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.meizu.mstore"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "Meizu"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.bbk.appstore"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "vivo"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.huawei.appmarket"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "HUAWEI"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.hihonor.appmarket"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "HONOR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.sec.android.app.samsungapps"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "SAM_SUNG"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.lenovo.leos.appstore"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "lenovo"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.letv.app.appstore"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "LE_TV"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;

    sput-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;

    :try_start_0
    const-string v0, "flupdatemark"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->loadUserAgent()V

    return-void
.end method

.method public static checkAccelerometerSensor(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    return v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static checkApkExist(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x2000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isLoadOperators:Z

    .line 3
    .line 4
    const-string v0, "46000"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    const-string v0, "46002"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_6

    .line 19
    .line 20
    const-string v0, "46004"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_6

    .line 27
    .line 28
    const-string v0, "46007"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const-string v0, "46001"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    const-string v0, "46006"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    const-string v0, "46009"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v0, "46003"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    const-string v0, "46005"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    const-string v0, "46011"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string v0, "46015"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    const-string p0, "4"

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_3
    const-string p0, "0"

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_4
    :goto_0
    const-string p0, "3"

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_5
    :goto_1
    const-string p0, "2"

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_6
    :goto_2
    const-string p0, "1"

    .line 108
    .line 109
    return-object p0
.end method

.method public static deviceCanHandleIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static dip2px(F)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :goto_1
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static directGetAgVersionCode()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceMANUFACTURER()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->MARKETS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    sget-object v5, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/fl/saas/adx/util/DeviceUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_6
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->MARKET_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static directGetHmsVersionCode()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    const-string v2, "com.huawei.hwid"

    invoke-static {v0, v2}, Lcom/fl/saas/adx/util/DeviceUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;

    if-nez v0, :cond_2

    sput-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->HmsVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "loadUserAgentStart"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "userAgent"

    .line 21
    .line 22
    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/S0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/S0;

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "loadUserAgent\uff1a"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isGetAndroidID:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceAndroidID:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/r0;->a()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_2
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseAndroid:Z

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceAndroidID:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isGetAndroidID:Z

    return-object v0
.end method

.method public static getAppInfo()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sub_channel"

    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->subChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_tag"

    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->sourceTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bundle"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMyPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "installDate"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getSelfInstallTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mInitialApplication"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "currentActivityThread"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getAutoNum()Ljava/lang/Long;
    .locals 5

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->autoNum:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->autoNum:Ljava/lang/Long;

    return-object v0
.end method

.method public static getBootId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getBootMark()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/r0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseBootID:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getBootTime()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCustomizeId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customizeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    const-string v1, ""

    const-string v2, "customizeId"

    invoke-virtual {v0, v2, v1}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customizeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getUpdateMark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customizeId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getUpdateMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->customizeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/fl/saas/S0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/S0;

    :cond_1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customizeId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfo()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ua"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osv"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "devicetype"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->isTablet()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "connectiontype"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "carrier"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getOperators()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orientation"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sw"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sh"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "brand"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "density"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getScreenDensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "densityDpi"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDpi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "oaid"

    invoke-static {}, Lcom/fl/saas/adx/util/OaidUtils;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "androidid"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mark"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceMANUFACTURER()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "api_level"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "oaidmd5"

    invoke-static {}, Lcom/fl/saas/adx/util/OaidUtils;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imeimd5"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "androididmd5"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "macmd5"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "boot_mark"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "update_mark"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getUpdateMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "physical_memory_byte"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMemoryByte()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "verCodeOfHms"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->directGetHmsVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "verCodeOfAG"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->directGetAgVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    const-string v1, "customizeId"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getCustomizeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lon"

    sget-object v3, Lcom/fl/saas/adx/util/DeviceUtil;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    invoke-virtual {v3}, Lcom/fl/saas/adx/base/bean/CustomLocation;->getLng()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lat"

    sget-object v3, Lcom/fl/saas/adx/util/DeviceUtil;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    invoke-virtual {v3}, Lcom/fl/saas/adx/base/bean/CustomLocation;->getLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "geo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catchall_2
    move-exception v1

    goto/16 :goto_4

    :cond_0
    :goto_1
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->appList:Lorg/json/JSONArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v2, "app_list"

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lcom/fl/saas/adx/util/DeviceUtil;->appList:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Lcom/fl/saas/adx/util/DeviceUtil;->appList:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const-string v5, "bundle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->checkApkExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v2

    sget-object v3, Lcom/fl/saas/S0;->g:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fl/saas/S0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v2

    sget-object v3, Lcom/fl/saas/S0;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/fl/saas/S0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/S0;

    const/4 v1, 0x0

    sput-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->appList:Lorg/json/JSONArray;

    goto :goto_5

    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v3

    sget-object v4, Lcom/fl/saas/S0;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fl/saas/S0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :goto_4
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    return-object v0
.end method

.method public static getDeviceMANUFACTURER()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceSystemVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDpi()I
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/r0;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_1
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->imsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->hasGetImsi:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->hasGetImsi:Z

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->imsi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isGetImei:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceImei:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/r0;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_2
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMEI:Z

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isGetImei:Z

    :try_start_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceImei:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_4
    return-object v1
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isGetMac:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceMac:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/r0;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_2
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseMac:Z

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceMac:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->isGetMac:Z

    return-object v0
.end method

.method public static getMemoryByte()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    sget-wide v2, Lcom/fl/saas/adx/util/DeviceUtil;->totalRAM:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v2, Lcom/fl/saas/adx/util/DeviceUtil;->totalRAM:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method public static getMobileHeight()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static getMobileWidth()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static getMyPackageName()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v0, "1"

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    const-string v0, "TD-SCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CDMA2000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    :pswitch_0
    const-string v0, "4"

    return-object v0

    :pswitch_1
    const-string v0, "3"

    return-object v0

    :pswitch_2
    const-string v0, "2"

    return-object v0

    :cond_5
    :goto_1
    const-string v0, "5"

    return-object v0

    :cond_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getOperators()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/r0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    :cond_0
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isLoadOperators:Z

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/f;

    invoke-direct {v1}, Lcom/fl/saas/adx/util/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/g;

    invoke-direct {v1}, Lcom/fl/saas/adx/util/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/h;

    invoke-direct {v1}, Lcom/fl/saas/adx/util/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/i;

    invoke-direct {v1}, Lcom/fl/saas/adx/util/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->b(Lcom/fl/saas/b1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->operatorId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->operatorId:Ljava/lang/String;

    return-object v0
.end method

.method public static getOrientation()I
    .locals 3

    .line 1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .line 1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object v1
.end method

.method public static getReqID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAutoNum()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fl/saas/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static getScreenDensity()F
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->screenPx:[I

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getSelfInstallTimeMillis()J
    .locals 5

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMyPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-wide v1
.end method

.method public static getStatusBarHeight()I
    .locals 4

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getSysLanguage()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static native getUpdate()Ljava/lang/String;
.end method

.method public static getUpdateMark()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getUpdate()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    :catchall_0
    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v6, v0

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-gtz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getStatusBarHeight()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v3

    :goto_3
    if-eqz v4, :cond_4

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v3
.end method

.method public static initUserAgent()V
    .locals 5

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    const-string v1, "userAgent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/j;

    invoke-direct {v1}, Lcom/fl/saas/adx/util/j;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x78

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/fl/saas/d1;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->loadUserAgent()V

    return-void
.end method

.method public static isAppList()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v2

    sget-object v3, Lcom/fl/saas/S0;->g:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method public static isClassExist(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isContainMaterial(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->materialAdvList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->materialAdvList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHttpSupported()I
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    :catchall_0
    return v0
.end method

.method public static isTablet()Z
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static isViewRange(Landroid/view/MotionEvent;Landroid/view/View;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1, p0}, Lcom/fl/saas/adx/util/DeviceUtil;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method private static loadUserAgent()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fl/saas/adx/util/e;

    invoke-direct {v1}, Lcom/fl/saas/adx/util/e;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static postUI(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postUIDelayed(JLjava/lang/Runnable;)V
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static px2dip(F)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :goto_1
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static removePostUI(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/fl/saas/adx/util/DeviceUtil;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static setMaterialAdv(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/fl/saas/adx/util/DeviceUtil;->materialAdvList:Ljava/util/List;

    return-void
.end method

.method public static native startAction(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public static startDpUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->startAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
