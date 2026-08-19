.class Lcom/meishu/sdk/platform/duomeng/DmInitManager$1;
.super Lcom/domob/sdk/common/config/PermissionConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/duomeng/DmInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/duomeng/DmInitManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/duomeng/DmInitManager;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/duomeng/DmInitManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/duomeng/DmInitManager$1;->this$0:Lcom/meishu/sdk/platform/duomeng/DmInitManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/domob/sdk/common/config/PermissionConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->getAndroidId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->getImei()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getLocation()Landroid/location/Location;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->getLocation()Landroid/location/Location;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isCanGetAndroidId()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseAndroidId()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->isCanGetAndroidId()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanGetAppList()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->canReadInstalledPackages()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->isCanGetAppList()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanGetLocation()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseLocation()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->isCanGetLocation()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanGetOAID()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCanGetPhoneState()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUsePhoneState()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->isCanGetPhoneState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanUseStorage()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->canUseStoragePermission()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/domob/sdk/common/config/PermissionConfig;->isCanUseStorage()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isUsePersonalRecommend()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getCanUseSdkPersonalRecommend()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
