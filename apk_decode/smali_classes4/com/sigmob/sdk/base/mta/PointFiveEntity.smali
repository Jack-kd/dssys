.class public Lcom/sigmob/sdk/base/mta/PointFiveEntity;
.super Lcom/sigmob/sdk/base/mta/PointEntitySigmob;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->P()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "0"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->P()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "0"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
