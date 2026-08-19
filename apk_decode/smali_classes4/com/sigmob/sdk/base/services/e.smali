.class public Lcom/sigmob/sdk/base/services/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/services/f$a;


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static final b:Landroid/location/LocationListener;

.field private static volatile c:Landroid/location/LocationManager;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/sigmob/sdk/base/services/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/base/services/e$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/services/e$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->b:Landroid/location/LocationListener;

    const-string v0, "network"

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/e;->e:Lcom/sigmob/sdk/base/services/g;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/services/e;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/location/LocationManager;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sigmob/sdk/base/services/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;

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
    sget-object v0, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;

    sget-object v1, Lcom/sigmob/sdk/base/services/e;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    sget-object v1, Lcom/sigmob/sdk/base/services/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopUpdateLocation: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/services/e;->a()Landroid/location/LocationManager;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->a:Ljava/lang/String;

    const-string v3, "startUpdateLocation"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/services/e;->d:Ljava/lang/String;

    sget-object v7, Lcom/sigmob/sdk/base/services/e;->b:Landroid/location/LocationListener;

    const-wide/16 v4, 0x2710

    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/e;->e:Lcom/sigmob/sdk/base/services/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    sget-object v2, Lcom/sigmob/sdk/base/services/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpdateLocation: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/e;->e:Lcom/sigmob/sdk/base/services/g;

    sget-object v1, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/e;->d()V

    const/4 v0, 0x1

    return v0
.end method

.method public f()Lcom/sigmob/sdk/base/services/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/e;->e:Lcom/sigmob/sdk/base/services/g;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/e;->e:Lcom/sigmob/sdk/base/services/g;

    sget-object v1, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/e;->c()V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/e;->e:Lcom/sigmob/sdk/base/services/g;

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/Error;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
