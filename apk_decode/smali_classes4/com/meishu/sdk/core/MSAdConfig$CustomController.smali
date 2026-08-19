.class public abstract Lcom/meishu/sdk/core/MSAdConfig$CustomController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/MSAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public canReadInstalledPackages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canUseMacAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canUseNetworkState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canUseStoragePermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevImei()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCanUseAndroidId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseImsi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUsePermissionRecordAudio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCsjUsePhoneState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStorageCollectEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
