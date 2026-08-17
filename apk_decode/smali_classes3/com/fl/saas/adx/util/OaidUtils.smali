.class public Lcom/fl/saas/adx/util/OaidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isCanUseOAID:Z = true

.field private static oaid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/fl/saas/adx/util/OaidUtils;->hnid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/OaidUtils;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/fl/saas/adx/util/OaidUtils;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/util/OaidUtils;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method private static hnid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "oaid"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static init()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/r0;->f()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/fl/saas/adx/util/OaidUtils;->isCanUseOAID:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fl/saas/adx/util/OaidUtils;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    const-string v1, "oaid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/util/OaidUtils;->oaid:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-static {v0}, Lcom/fl/saas/adx/util/OaidUtils;->load(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isIsCanUseOAID()Z
    .locals 1

    sget-boolean v0, Lcom/fl/saas/adx/util/OaidUtils;->isCanUseOAID:Z

    return v0
.end method

.method private static load(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/fl/saas/adx/util/OaidUtils$1;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/util/OaidUtils$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/fl/saas/adx/oaid/DeviceID;->getOAID(Landroid/content/Context;Lcom/fl/saas/adx/oaid/IGetter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setIsCanUseOAID(Z)V
    .locals 0

    sput-boolean p0, Lcom/fl/saas/adx/util/OaidUtils;->isCanUseOAID:Z

    return-void
.end method

.method public static setOaid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/fl/saas/adx/util/OaidUtils;->oaid:Ljava/lang/String;

    return-void
.end method
