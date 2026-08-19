.class Lcom/meishu/sdk/platform/csj/CSJAdConfig$3;
.super Lcom/bytedance/sdk/openadsdk/TTCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/CSJAdConfig;->buildTTConfig(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/CSJAdConfig;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/CSJAdConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/CSJAdConfig$3;->this$0:Lcom/meishu/sdk/platform/csj/CSJAdConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public alist()Z
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
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public getDevImei()Ljava/lang/String;
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
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getDevImei()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
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

.method public getMacAddress()Ljava/lang/String;
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
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getMacAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getMacAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;
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
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public isCanUseAndroidId()Z
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
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseAndroidId()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanUseLocation()Z
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
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public isCanUsePermissionRecordAudio()Z
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
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUsePermissionRecordAudio()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePermissionRecordAudio()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanUsePhoneState()Z
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
    if-eqz v0, :cond_1

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
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCsjUsePhoneState()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUsePhoneState()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public isCanUseWifiState()Z
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
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseWifiState()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isCanUseWriteExternal()Z
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
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method
