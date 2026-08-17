.class Lcom/sigmob/sdk/b$1;
.super Lcom/czhj/sdk/common/mta/DeviceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/b;->b()Lcom/czhj/sdk/common/mta/DeviceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;-><init>()V

    return-void
.end method

.method private a()Lcom/sigmob/windad/WindCustomController;
    .locals 1

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->isPersonalizedAdvertisingOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseSimOperator()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevSimOperatorCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKContext: simOperator = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseSimOperator()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKContext: carrierName = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAds;->isPersonalizedAdvertisingOn()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getImei1()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAds;->isPersonalizedAdvertisingOn()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getImei2()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAds;->isPersonalizedAdvertisingOn()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseOaid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCustomAndroidId()Z
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCustomOaId()Z
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseOaid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomOperatorCode()Z
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseSimOperator()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevSimOperatorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomOperatorName()Z
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseSimOperator()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomPhoneState()Z
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/b$1;->a()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
