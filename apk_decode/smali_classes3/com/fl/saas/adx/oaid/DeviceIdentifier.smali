.class public final Lcom/fl/saas/adx/oaid/DeviceIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile androidId:Ljava/lang/String; = null

.field private static volatile clientId:Ljava/lang/String; = null

.field private static volatile guid:Ljava/lang/String; = null

.field private static volatile imei:Ljava/lang/String; = null

.field private static volatile oaid:Ljava/lang/String; = null

.field private static volatile pseudoId:Ljava/lang/String; = null

.field private static volatile registered:Z = false

.field private static volatile widevineId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/oaid/DeviceID;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    return-object p0
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/oaid/DeviceID;->getClientIdMD5()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

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
    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/oaid/DeviceID;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/oaid/DeviceID;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/oaid/DeviceID;->getOAID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier$1;

    invoke-direct {v1}, Lcom/fl/saas/adx/oaid/DeviceIdentifier$1;-><init>()V

    invoke-static {p0, v1}, Lcom/fl/saas/adx/oaid/DeviceID;->getOAID(Landroid/content/Context;Lcom/fl/saas/adx/oaid/IGetter;)V

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    sput-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    :cond_3
    sget-object p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static getPseudoID()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/oaid/DeviceID;->getPseudoID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

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
    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    return-object v0
.end method

.method public static getWidevineID()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/oaid/DeviceID;->getWidevineID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

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
    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    return-object v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->registered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->registered:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/fl/saas/adx/oaid/DeviceID;->register(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->registered:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
