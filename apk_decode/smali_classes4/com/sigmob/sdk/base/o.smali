.class public Lcom/sigmob/sdk/base/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/o$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Boolean; = null

.field private static final b:Ljava/lang/String; = "o"

.field private static final c:Ljava/lang/String; = "sdkConfigVer"

.field private static d:Lcom/sigmob/sdk/base/o; = null

.field private static final e:Z = false

.field private static n:Ljava/lang/String; = null

.field private static o:Z = false


# instance fields
.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private j:J

.field private k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

.field private l:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

.field private m:Lcom/sigmob/sdk/base/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4.25.12"

    iput-object v0, p0, Lcom/sigmob/sdk/base/o;->h:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/o;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    iput-object v0, p0, Lcom/sigmob/sdk/base/o;->l:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/o;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/r;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/r;-><init>(Lcom/sigmob/sdk/base/o;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/o;->g:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/o;->i:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ai()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/sigmob/sdk/base/o;
    .locals 2

    .line 1
    const-class v0, Lcom/sigmob/sdk/base/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/base/o;->d:Lcom/sigmob/sdk/base/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/base/o;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/o;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/base/o;->d:Lcom/sigmob/sdk/base/o;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sigmob/sdk/base/o;->d:Lcom/sigmob/sdk/base/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V
    .locals 4

    .line 4
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/utils/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/czhj/wire/Message;->encode(Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sdkConfigVer"

    const-string v3, "4.25.12"

    invoke-static {p1, v1, v0, v3}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method private a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V
    .locals 9

    .line 5
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;->sigmobCommon_config:Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/o;->l:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    const/16 v1, 0x708

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/o;->j:J

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->k()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/d;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/manager/d;->a(J)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/o;->m:Lcom/sigmob/sdk/base/o$a;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/o;->m:Lcom/sigmob/sdk/base/o$a;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/o$a;->onUpdate(Z)V

    :cond_2
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->Z()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/models/Config;->setEnable_okhttp3(Z)V

    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object p1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->an()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/models/Config;->setNetworkTimeout(I)V

    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->ac()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->Y()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->U()I

    move-result v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->I()I

    move-result v6

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->H()I

    move-result v7

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ak()Z

    move-result v8

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/czhj/sdk/common/models/Config;->update(ZZZILjava/lang/String;IIZ)V

    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->G()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/czhj/sdk/common/track/TrackManager;->setRetryInterval(J)V

    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->F()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/czhj/sdk/common/track/TrackManager;->setRetryExpiredTime(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/o;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->aq()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/o;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/o;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V

    return-void
.end method

.method public static synthetic ah()Z
    .locals 1

    sget-boolean v0, Lcom/sigmob/sdk/base/o;->o:Z

    return v0
.end method

.method private ai()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;-><init>()V

    new-instance v2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;-><init>()V

    new-instance v3, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    invoke-direct {v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/base/o;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->native_ad(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    new-instance v3, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;

    invoke-direct {v3}, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config(Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_up_location(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_debug_level(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_boot_mark(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->oaid_api_is_disable(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_permission(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_report_crash(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->common_config(Lcom/sigmob/sdk/base/models/config/SigmobCommon;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->android_config(Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private aj()V
    .locals 2

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->isNetworkConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->al()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->aq()V

    return-void
.end method

.method private ak()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private al()V
    .locals 4

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/network/g;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/o$1;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/o$1;-><init>(Lcom/sigmob/sdk/base/o;)V

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/network/g;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/network/g$a;)V

    if-nez v0, :cond_0

    const-string v0, "queue is null"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->aq()V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    const-string v0, "update sdk config"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private am()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "https://c.etoolads.cn/s/config"

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->config:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private an()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private ao()Z
    .locals 4

    sget-object v0, Lcom/sigmob/sdk/base/o;->a:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/sigmob/sdk/base/o;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/o;->a:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/o;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noncomplianceMark(config) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sigmob/sdk/base/o;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private ap()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/o;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private aq()V
    .locals 6

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ap()V

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/o;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/o;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/o;->j:J

    const-wide/16 v4, 0x7530

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private ar()Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    return-object v0
.end method

.method private as()Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdkVersion=4.25.12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/o;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->am()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/o;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/o;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "?"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sigmob/sdk/base/o;->n:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sigmob/sdk/base/o;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/o;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "https://adservice.sigmob.cn/s/config"

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://adservice.sigmob.cn/s/config?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/sigmob/sdk/base/o;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/o;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/o;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://adservice.sigmob.cn/extconfig?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/sigmob/sdk/base/o;->o:Z

    return p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->aj()V

    return-void
.end method

.method public static n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A()J
    .locals 4

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->as()Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0xafc8

    return-wide v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->ad_load_timeout:Ljava/lang/Integer;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->events:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()I
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->B()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;->interval:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public D()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;->count:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public E()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;->queue_max:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;->count:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x32

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;->queue_max:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method public F()J
    .locals 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    const v1, 0x15180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x15180

    :goto_0
    const-wide/16 v2, 0xb4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public G()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public H()I
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public I()I
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public J()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public L()Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->J()Z

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->K()Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    return-object v0
.end method

.method public N()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public O()J
    .locals 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    return-wide v3
.end method

.method public P()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public R()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    return-object v0
.end method

.method public T()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public U()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public W()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/sigmob/sdk/base/o$a;)Lcom/sigmob/sdk/base/o;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/o;->m:Lcom/sigmob/sdk/base/o$a;

    sget-object p1, Lcom/sigmob/sdk/base/o;->d:Lcom/sigmob/sdk/base/o;

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "tbsasv.sigmob.cn/ad/v4"

    goto :goto_0

    :cond_0
    const-string v1, "adservice.sigmob.cn/ad/v4"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_ads:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ads:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, ""

    :goto_2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p1

    :cond_4
    const/16 p1, 0x3f

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->events:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public aa()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ab()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ac()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ae()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public af()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ag()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    const/16 v1, 0x1f4

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->J()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->K()Z

    move-result v2

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/utils/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "tbsasv.sigmob.cn/hb/v2/ad"

    goto :goto_0

    :cond_0
    const-string v1, "adservice.sigmob.cn/hb/v2/ad"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_hb_ads:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->hb_ads:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, ""

    :goto_2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p1

    :cond_4
    const/16 p1, 0x3f

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    goto :goto_3
.end method

.method public c(Z)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "tbsasv.sigmob.cn/ad/v4"

    goto :goto_0

    :cond_0
    const-string v1, "adservice.sigmob.cn/ad/v4"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_native_ad:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p1, v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->native_ad:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, ""

    :goto_2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p1

    :cond_4
    const/16 p1, 0x3f

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    goto :goto_3
.end method

.method public e()V
    .locals 5

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdkConfigVer"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/utils/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "4.25.12"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    invoke-direct {p0, v1, v3}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catchall_2
    move-exception v1

    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    invoke-direct {p0, v0, v3}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_1
    return-void

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_2
    throw v0

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    invoke-direct {p0, v0, v3}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ap()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/o;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ao()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k()I
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expireMonitorInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sniffingType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->l:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/o;->k:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    :cond_0
    return-object v0
.end method

.method public p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->o()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;->sigmobCommon_config:Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    return-object v0
.end method

.method public q()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->o()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;->sigmobAndroid_config:Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->log:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "https://dc.sigmob.cn/log"

    :goto_2
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    goto :goto_3
.end method

.method public s()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->feedback:Ljava/lang/String;

    const-string v1, "https://adxtool.sigmob.cn/debug/feedback"

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    goto :goto_0
.end method

.method public t()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->p()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    return-object v0
.end method

.method public u()I
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->t()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public v()J
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->t()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0xafc8

    return-wide v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->ad_load_timeout:Ljava/lang/Integer;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public w()Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->t()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;

    return-object v0
.end method

.method public x()I
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ar()Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    move-result-object v0

    const/16 v1, 0x32

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->cacheTop:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public y()J
    .locals 4

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->ar()Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->material_expired_time:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    int-to-long v0, v1

    return-wide v0

    :cond_1
    int-to-long v0, v1

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public z()I
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/o;->as()Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    move-result-object v0

    const/16 v1, 0x32

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->cacheTop:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
