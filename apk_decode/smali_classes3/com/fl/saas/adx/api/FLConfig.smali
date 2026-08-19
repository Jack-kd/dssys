.class public final Lcom/fl/saas/adx/api/FLConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/FLConfig$Holder;
    }
.end annotation


# static fields
.field private static hasInit:Z = false


# instance fields
.field private disableAppListAccessAdvs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/adx/api/FLConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;-><init>()V

    return-void
.end method

.method private defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    invoke-direct {v0}, Lcom/fl/saas/adx/api/FLParamConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/FLParamConfig$Builder;->build()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/fl/saas/adx/api/FLConfig;
    .locals 1

    invoke-static {}, Lcom/fl/saas/adx/api/FLConfig$Holder;->access$100()Lcom/fl/saas/adx/api/FLConfig;

    move-result-object v0

    return-object v0
.end method

.method private initConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V
    .locals 2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->channelId:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    sput-object p3, Lcom/fl/saas/adx/util/DeviceUtil;->subChannel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x1

    if-eqz p5, :cond_9

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseBootID()Z

    move-result p4

    sput-boolean p4, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseBootID:Z

    const-string p4, "isCanUseBootID:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p4, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseBootID:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSSID()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSSID:Z

    const-string v0, "isCanUseSSID:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSSID:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseAndroid()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseAndroid:Z

    const-string v0, "isCanUseAndroid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseAndroid:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMEI()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMEI:Z

    const-string v0, "isCanUseIMEI:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMEI:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseMac()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseMac:Z

    const-string v0, "isCanUseMac:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseMac:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMSI()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    const-string v0, "isCanUseIMSI:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseIMSI:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseLocation()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseLocation:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeGDT()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeGDT:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeKS()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeKS:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeBD()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeBD:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeCSJ()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeCSJ:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeQTT()Z

    move-result v0

    sput-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isInitializeQTT:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getSourceTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->sourceTag:Ljava/lang/String;

    const-string v0, "isCanUseLocation:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseLocation:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isCanUseOaid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseOaid()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isCanUseSensor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSensor()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customUserAgent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customIMEI:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomIMEI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customOAID:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomOAID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customAndroidId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customMac:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customLocation:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomLocation()Lcom/fl/saas/adx/base/bean/CustomLocation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->customConfig:Ljava/lang/String;

    invoke-static {p2}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomIMEI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomIMEI()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->deviceImei:Ljava/lang/String;

    sput-boolean p3, Lcom/fl/saas/adx/util/DeviceUtil;->isGetImei:Z

    :cond_3
    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomAndroidId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomAndroidId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->deviceAndroidID:Ljava/lang/String;

    sput-boolean p3, Lcom/fl/saas/adx/util/DeviceUtil;->isGetAndroidID:Z

    :cond_4
    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomMac()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomMac()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->deviceMac:Ljava/lang/String;

    sput-boolean p3, Lcom/fl/saas/adx/util/DeviceUtil;->isGetMac:Z

    :cond_5
    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomUserAgent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomUserAgent()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->userAgent:Ljava/lang/String;

    :cond_6
    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomLocation()Lcom/fl/saas/adx/base/bean/CustomLocation;

    move-result-object p2

    sput-object p2, Lcom/fl/saas/adx/util/DeviceUtil;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    sput-boolean p6, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug:Z

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSensor()Z

    move-result p2

    sput-boolean p2, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSensor:Z

    const/4 p4, 0x0

    if-nez p2, :cond_7

    sput-boolean p4, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    :cond_7
    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseOaid()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p4}, Lcom/fl/saas/adx/util/OaidUtils;->setIsCanUseOAID(Z)V

    invoke-virtual {p5}, Lcom/fl/saas/adx/api/FLParamConfig;->getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->getCustomOAID()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, p2

    :goto_3
    invoke-static {v1}, Lcom/fl/saas/adx/util/OaidUtils;->setOaid(Ljava/lang/String;)V

    :cond_9
    sget-boolean p2, Lcom/fl/saas/adx/api/FLConfig;->hasInit:Z

    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/fl/saas/adx/util/DeviceUtil;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/fl/saas/F0;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fl/saas/S0;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->initUserAgent()V

    sput-boolean p3, Lcom/fl/saas/adx/api/FLConfig;->hasInit:Z

    :cond_a
    return-void
.end method

.method public static isInit()Z
    .locals 1

    sget-boolean v0, Lcom/fl/saas/adx/api/FLConfig;->hasInit:Z

    return v0
.end method


# virtual methods
.method public varargs disableAppListAccess([I)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/api/FLConfig;->disableAppListAccessAdvs:[I

    return-void
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.9.1"

    return-object v0
.end method

.method public hasDisableAppListAccess()Z
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/api/FLConfig;->disableAppListAccessAdvs:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;)V
    .locals 14

    if-eqz p3, :cond_0

    .line 2
    const-string v4, ""

    const/4 v6, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v12

    const-string v11, ""

    const/4 v13, 0x0

    const-string v10, ""

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v13}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V
    .locals 12

    if-eqz p3, :cond_0

    .line 3
    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v10

    const-string v8, ""

    const-string v9, ""

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V
    .locals 12

    if-eqz p4, :cond_0

    .line 5
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v10

    const-string v9, ""

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 6
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V
    .locals 1

    .line 7
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/fl/saas/adx/api/FLConfig;->initConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 8
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/fl/saas/adx/api/FLConfig;->defaultConfig()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v5

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    return-void
.end method

.method public isAppListAccessEnabled(I)Z
    .locals 5

    iget-object v0, p0, Lcom/fl/saas/adx/api/FLConfig;->disableAppListAccessAdvs:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setCustomLocation(Lcom/fl/saas/adx/base/bean/CustomLocation;)V
    .locals 0

    sput-object p1, Lcom/fl/saas/adx/util/DeviceUtil;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    return-void
.end method

.method public setCustomMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->customMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setEnableCollectAppInstallStatus(Z)V
    .locals 0

    sput-boolean p1, Lcom/fl/saas/adx/util/DeviceUtil;->enableCollectAppInstallStatus:Z

    return-void
.end method

.method public setPersonalizedState(Z)V
    .locals 0

    invoke-static {p1}, Lcom/fl/saas/adx/base/manager/AdPersonalizedManager;->updateAdPersonalizedConfig(Z)V

    return-void
.end method

.method public setUserExt(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/fl/saas/adx/util/DeviceUtil;->userExt:Ljava/lang/String;

    :cond_0
    return-void
.end method
