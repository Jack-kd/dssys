.class public Lcom/sigmob/windad/WindAds;
.super Ljava/lang/Object;


# static fields
.field public static final ADN_ID:Ljava/lang/String; = "ADN_ID"

.field public static final ADX_ID:Ljava/lang/String; = "_adx_id"

.field public static final AD_SCENE_DESC:Ljava/lang/String; = "scene_desc"

.field public static final AD_SCENE_ID:Ljava/lang/String; = "scene_id"

.field public static final AUCTION_PRICE:Ljava/lang/String; = "AUCTION_PRICE"

.field public static final CNY:Ljava/lang/String; = "CNY"

.field public static final CURRENCY:Ljava/lang/String; = "CURRENCY"

.field public static final HIGHEST_LOSS_PRICE:Ljava/lang/String; = "HIGHEST_LOSS_PRICE"

.field public static final LOSS_REASON:Ljava/lang/String; = "LOSS_REASON"

.field public static final REWARD_TYPE:Ljava/lang/String; = "reward_type"

.field public static final SAAS_OPTIONS:Ljava/lang/String; = "saas_options"

.field public static final SERVER_ARRIVED:Ljava/lang/String; = "server_arrived"

.field public static final TAG:Ljava/lang/String; = "WindAds"

.field public static final TRANS_ID:Ljava/lang/String; = "trans_id"

.field public static final USD:Ljava/lang/String; = "USD"

.field private static volatile a:Lcom/sigmob/windad/WindAds;


# instance fields
.field private volatile b:Z

.field private volatile c:Z

.field private d:Lcom/sigmob/windad/WindAdOptions;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Lcom/sigmob/windad/OnInitializationListener;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Z

.field private final o:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAds;->b:Z

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAds;->h:Z

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAds;->j:Z

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAds;->n:Z

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sigmob/windad/WindAds;->o:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Lcom/sigmob/windad/WindAdOptions;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInitError: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/OnInitializationListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/OnInitializationListener;->onInitializationFail(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyInitSuccess"

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/OnInitializationListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/OnInitializationListener;->onInitializationSuccess()V

    return-void
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcom/sigmob/windad/WindAds;->i:I

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->g()I

    move-result v0

    iput v0, p0, Lcom/sigmob/windad/WindAds;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget v0, p0, Lcom/sigmob/windad/WindAds;->i:I

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getConsentStatus()Lcom/sigmob/windad/consent/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindAds$2;->a:[I

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sigmob/windad/WindAds;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/windad/WindAds;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/i;->c(IZ)V

    return-void
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/sigmob/windad/WindAds;->k:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->c()I

    move-result v0

    iput v0, p0, Lcom/sigmob/windad/WindAds;->k:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    iget v2, p0, Lcom/sigmob/windad/WindAds;->k:I

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/i;->b(IZ)V

    :goto_0
    iget v0, p0, Lcom/sigmob/windad/WindAds;->l:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->b()I

    move-result v0

    iput v0, p0, Lcom/sigmob/windad/WindAds;->l:I

    return-void

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    iget v2, p0, Lcom/sigmob/windad/WindAds;->l:I

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/i;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private e()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->d()V

    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->c()V

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/windad/WindAds;->j:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/i;->b(ZZ)V

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/windad/WindAds;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/i;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPrivacyInfo: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 0

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.25.12"

    return-object v0
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/czhj/sdk/common/ClientMetadata;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static setOAIDCertPem(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    const-string v0, "certPem is unavailable."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/czhj/sdk/common/ClientMetadata;->setOAIDCertPem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget-object p0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    const-string v0, "not support OAID module."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/czhj/sdk/common/ClientMetadata;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static sharedAds()Lcom/sigmob/windad/WindAds;
    .locals 3

    sget-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    if-nez v0, :cond_1

    const-class v0, Lcom/sigmob/windad/WindAds;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sigmob/windad/WindAds;

    invoke-direct {v1}, Lcom/sigmob/windad/WindAds;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/WindAds;->setDebugEnable(Z)V

    sput-object v1, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

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
    sget-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/16 v0, 0x9f

    return v0
.end method

.method public checkAndResGuard(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sig_new_interstitial_layout"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sigmob/windad/WindAds$1;

    invoke-direct {p1, p0}, Lcom/sigmob/windad/WindAds$1;-><init>(Lcom/sigmob/windad/WindAds;)V

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Wind SDK resources may have been obfuscated by AndResGuard. Please add the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to the whitelist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAgeRestrictedStatus()I
    .locals 1

    iget v0, p0, Lcom/sigmob/windad/WindAds;->k:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Lcom/sigmob/windad/WindAdOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Lcom/sigmob/windad/WindAdOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommonVersion()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/Constants;->getVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/16 v0, 0xc6

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->f:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public getOptions()Lcom/sigmob/windad/WindAdOptions;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Lcom/sigmob/windad/WindAdOptions;

    return-object v0
.end method

.method public getSDKToken()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    const-string v2, "getSDKToken: SDK is ready, Retrieving token."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/Sigmob;->getSDKToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->ag()I

    move-result v0

    iget-object v2, p0, Lcom/sigmob/windad/WindAds;->o:Ljava/util/concurrent/CountDownLatch;

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    const-string v2, "getSDKToken(await): SDK is ready, Retrieving token."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/Sigmob;->getSDKToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSDKToken: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    const-string v2, "getSDKToken: SDK is not ready, Cannot retrieve token."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->n:Z

    return v0
.end method

.method public getUserAge()I
    .locals 1

    iget v0, p0, Lcom/sigmob/windad/WindAds;->l:I

    return v0
.end method

.method public getUserGDPRConsentStatus()I
    .locals 1

    iget v0, p0, Lcom/sigmob/windad/WindAds;->i:I

    return v0
.end method

.method public getWindUid()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindUid: error = "

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

.method public init(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;Lcom/sigmob/windad/OnInitializationListener;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/OnInitializationListener;

    iget-boolean p3, p0, Lcom/sigmob/windad/WindAds;->b:Z

    const/4 v0, 0x1

    if-nez p3, :cond_4

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const-string p1, "context is null."

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAds;->a(Ljava/lang/String;)V

    :goto_0
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "WindAdOptions is null."

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAds;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "appId is empty."

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAds;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getCommonVersion()I

    move-result v1

    const/16 v2, 0xc6

    if-ge v1, v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Your COMMON Lib version must be equal or higher than 198, current Version [ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAds;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/sigmob/windad/WindAds;->d:Lcom/sigmob/windad/WindAdOptions;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/windad/WindAds;->m:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAds;->b:Z

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/WindAds;->checkAndResGuard(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->f()V

    :cond_4
    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->b()V

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAdult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->h:Z

    return v0
.end method

.method public isDebugEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->e:Z

    return v0
.end method

.method public isInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->b:Z

    return v0
.end method

.method public isPersonalizedAdvertisingOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->j:Z

    return v0
.end method

.method public setAdult(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->h:Z

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdult: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/i;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public setDebugEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->e:Z

    sget-object v0, Lcom/sigmob/sdk/base/n;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_1
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method public setIsAgeRestrictedUser(I)V
    .locals 2

    iput p1, p0, Lcom/sigmob/windad/WindAds;->k:I

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/i;->b(IZ)V

    :cond_0
    return-void
.end method

.method public setOAIDCertFileName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/czhj/sdk/common/ClientMetadata;->setOaidCertFileName(Ljava/lang/String;)V

    return-void
.end method

.method public setPersonalizedAdvertisingOn(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->j:Z

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPersonalized: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/i;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public setSensorStatus(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->n:Z

    sget-object v0, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSensorStatus: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setUserAge(I)V
    .locals 2

    iput p1, p0, Lcom/sigmob/windad/WindAds;->l:I

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/i;->a(IZ)V

    :cond_0
    return-void
.end method

.method public setUserGDPRConsentStatus(I)V
    .locals 2

    iput p1, p0, Lcom/sigmob/windad/WindAds;->i:I

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/i;->c(IZ)V

    :cond_0
    return-void
.end method

.method public start(Lcom/sigmob/windad/OnStartListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->b:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sigmob/windad/WindAds;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/b;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->e()V

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/Sigmob;->init()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/windad/WindAds;->c:Z

    sget-object v1, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wind SDK Start fail Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sigmob/windad/OnStartListener;->onStartFail(Ljava/lang/String;)V

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/sigmob/windad/WindAds;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object p1, p0, Lcom/sigmob/windad/WindAds;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit p0

    return-void

    :goto_1
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :cond_1
    :goto_2
    if-nez p1, :cond_2

    :goto_3
    monitor-exit p0

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/sigmob/windad/OnStartListener;->onStartSuccess()V

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "Wind SDK Start fail, need Init SDK first."

    invoke-interface {p1, v0}, Lcom/sigmob/windad/OnStartListener;->onStartFail(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
