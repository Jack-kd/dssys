.class public Lcom/czhj/sdk/common/models/ModelBuilderCreator;
.super Ljava/lang/Object;


# static fields
.field private static wxProgramReq:Lcom/czhj/sdk/common/models/WXProgramReq;


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

.method public static createAdSlot()Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 1

    new-instance v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/AdSlot$Builder;-><init>()V

    return-object v0
.end method

.method public static createApp()Lcom/czhj/sdk/common/models/App$Builder;
    .locals 3

    new-instance v0, Lcom/czhj/sdk/common/models/App$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/App$Builder;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->app_package(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->orientation(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/App$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    :cond_1
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->support_http:Ljava/lang/Boolean;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Version$Builder;->build()Lcom/czhj/sdk/common/models/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->app_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;

    :cond_2
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->idfv(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    iget-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getInstallTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->install_time(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/App$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    const-string v2, "App Builder failed"

    invoke-static {v2, v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createDevice()Lcom/czhj/sdk/common/models/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Device$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->device_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->os_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    :try_start_0
    new-instance v1, Lcom/czhj/sdk/common/models/Size$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/Size$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getRealMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/Size$Builder;->height:Ljava/lang/Integer;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getRealMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/Size$Builder;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Size$Builder;->build()Lcom/czhj/sdk/common/models/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->resolution(Lcom/czhj/sdk/common/models/Size;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->battery_level(Ljava/lang/Float;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getBatteryState()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->battery_state(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getBatterySaveEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->battery_save_enabled(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDensityDpi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->dpi(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Version$Builder;->build()Lcom/czhj/sdk/common/models/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->os_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->vendor(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->isRoot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->is_root(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Device$Builder;

    new-instance v1, Lcom/czhj/sdk/common/models/Size$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/Size$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenHeightDip()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Size$Builder;->height(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Size$Builder;

    move-result-object v1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenWidthDip()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Size$Builder;->width(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Size$Builder;

    move-result-object v1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Device$Builder;->model(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Size$Builder;->build()Lcom/czhj/sdk/common/models/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->screen_size(Lcom/czhj/sdk/common/models/Size;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {p0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createGeo(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Geo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/Geo$Builder;->build()Lcom/czhj/sdk/common/models/Geo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->geo(Lcom/czhj/sdk/common/models/Geo;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->device_name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    :cond_2
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getBootSystemTime()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->start_timestamp(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceOSLevel()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->android_api_level(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getSystemTotalMemorySize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->mem_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->total_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->free_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getSDCardPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->sd_total_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->sd_free_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    :cond_3
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getBootId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->boot_mark(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    :cond_4
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getUpdateId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->update_mark(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    :cond_5
    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->getRomInfo()Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->rom_name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/czhj/sdk/common/models/Version$Builder;->version_str(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Version$Builder;->build()Lcom/czhj/sdk/common/models/Version;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Device$Builder;->rom_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/Device$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-object v0

    :goto_2
    const-string v1, "Device Builder failed"

    invoke-static {v1, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createDeviceId()Lcom/czhj/sdk/common/models/DeviceId$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;
    .locals 5

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/models/DeviceId$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/DeviceId$Builder;-><init>()V

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->android_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getUDID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->udid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_2
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->gaid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_3
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->uid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getImei()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->imei(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_6
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceSerial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->android_uuid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_7
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->imsi(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getImei1()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->imei1(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_a
    const/4 v1, 0x1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getImei2()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->imei2(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    :cond_c
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceBrand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->brand(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    if-eqz p0, :cond_e

    :try_start_1
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getOaid()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_5

    :cond_e
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->oaid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :goto_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    :goto_6
    :try_start_3
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID_API()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->oaid_api(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v2

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID_API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    :goto_7
    :try_start_5
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getVAID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->vaid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v2

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVAID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_11
    :goto_8
    if-eqz p0, :cond_12

    :try_start_7
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomPhoneState()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->is_custom_imei(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomOaId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->is_custom_oaid(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomAndroidId()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->is_custom_android_id(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/DeviceId$Builder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    :goto_9
    const-string v1, "DeviceId Builder failed"

    invoke-static {v1, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_a
    return-object v0
.end method

.method public static createGeo()Lcom/czhj/sdk/common/models/Geo$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createGeo(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createGeo(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Geo$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/models/Geo$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Geo$Builder;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Geo$Builder;->country(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Geo$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Geo$Builder;->language(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Geo$Builder;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getLocation()Landroid/location/Location;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Geo$Builder;->lat(Ljava/lang/Float;)Lcom/czhj/sdk/common/models/Geo$Builder;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Geo$Builder;->lon(Ljava/lang/Float;)Lcom/czhj/sdk/common/models/Geo$Builder;

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Geo$Builder;->accuracy(Ljava/lang/Double;)Lcom/czhj/sdk/common/models/Geo$Builder;

    goto :goto_2

    :cond_2
    const-wide v1, 0x407f400000000000L    # 500.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :goto_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Geo$Builder;->timeZone(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Geo$Builder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Geo$Builder;->secondsFromGMT(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Geo$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_3
    const-string v1, "Geo Builder failed"

    invoke-static {v1, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createNetwork()Lcom/czhj/sdk/common/models/Network$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;
    .locals 4

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/models/Network$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Network$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getActiveNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Network$Builder;->connection_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Network$Builder;

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Network$Builder;->ua(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Network$Builder;->mac(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    :cond_1
    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getWifimac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Network$Builder;->wifi_mac(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    :cond_2
    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getWifiName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Network$Builder;->wifi_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    :cond_3
    if-nez p0, :cond_4

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getCarrier()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/models/Network$Builder;->operator(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    :cond_5
    if-nez p0, :cond_6

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Network$Builder;->carrier_name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomOperatorCode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Network$Builder;->is_custom_operator_code(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Network$Builder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomOperatorName()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Network$Builder;->is_custom_operator_name(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Network$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return-object v0

    :goto_3
    const-string v1, "Network Builder failed"

    invoke-static {v1, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static createVersion(III)Lcom/czhj/sdk/common/models/Version$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/Version$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Version$Builder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Version$Builder;->major(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Version$Builder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Version$Builder;->micro(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Version$Builder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Version$Builder;->minor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Version$Builder;

    return-object v0
.end method

.method public static createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;
    .locals 5

    .line 2
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_0
    array-length v2, v1

    if-le v2, v4, :cond_1

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_1
    array-length v2, v1

    if-lez v2, :cond_2

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_1

    :catchall_0
    :cond_2
    move v1, v0

    move v4, v1

    :goto_1
    invoke-static {v0, v1, v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(III)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/models/Version$Builder;->version_str(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createWXProgramReq()Lcom/czhj/sdk/common/models/WXProgramReq;
    .locals 4

    sget-object v0, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->wxProgramReq:Lcom/czhj/sdk/common/models/WXProgramReq;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/czhj/sdk/common/models/WXProgramReq$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/WXProgramReq$Builder;-><init>()V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/czhj/sdk/common/models/ModelBuilderCreator$1;

    invoke-direct {v2, v0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator$1;-><init>(Lcom/czhj/sdk/common/models/WXProgramReq$Builder;)V

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->getFixIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/WXProgramReq$Builder;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/WXProgramReq$Builder;->build()Lcom/czhj/sdk/common/models/WXProgramReq;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->wxProgramReq:Lcom/czhj/sdk/common/models/WXProgramReq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object v0, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->wxProgramReq:Lcom/czhj/sdk/common/models/WXProgramReq;

    return-object v0
.end method
