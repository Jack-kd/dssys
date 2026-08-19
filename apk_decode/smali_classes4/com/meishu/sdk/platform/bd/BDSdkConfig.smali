.class public Lcom/meishu/sdk/platform/bd/BDSdkConfig;
.super Lcom/meishu/sdk/core/b;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BDSdkConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p3, "false"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "BDSdkConfig"

    .line 4
    .line 5
    const-string v1, "bd init---------------"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->getCanUseSdkPersonalRecommend()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setLimitPersonalAds(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :catch_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setLimitPersonalAds(Z)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUsePhoneState()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionReadDeviceID(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseLocation()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionLocation(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->canUseStoragePermission()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionStorage(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->canReadInstalledPackages()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionAppList(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionReadDeviceID(Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionLocation(Z)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionStorage(Z)V

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionAppList(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_2
    new-instance v1, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 90
    .line 91
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p2}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setAppsid(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance v1, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;->setDlDialogType(I)Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;->setDlDialogAnimStyle(I)Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;->build()Lcom/baidu/mobads/sdk/api/BDDialogParams;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p2, v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setDialogParams(Lcom/baidu/mobads/sdk/api/BDDialogParams;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    const-string v0, "pk_change_rc"

    .line 130
    .line 131
    invoke-virtual {p2, v0, p3}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->putExtraParam(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v1, "mi market rc"

    .line 136
    .line 137
    invoke-virtual {v0, v1, p3}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->putExtraParam(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_1
    move-exception p3

    .line 142
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_3
    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->build(Landroid/content/Context;)Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->init()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_5
    return-void
.end method
