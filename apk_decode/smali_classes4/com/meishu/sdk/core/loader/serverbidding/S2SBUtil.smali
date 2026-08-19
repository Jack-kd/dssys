.class public Lcom/meishu/sdk/core/loader/serverbidding/S2SBUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/loader/serverbidding/S2SBUtil;->gson:Lcom/google/gson/Gson;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static generateGdt(Landroid/content/Context;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;)Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getGDTVersionName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/qq/e/comm/managers/GDTAdSdk;->getGDTAdManger()Lcom/qq/e/comm/managers/IGDTAdManager;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0, v1}, Lcom/qq/e/comm/managers/IGDTAdManager;->getBuyerId(Ljava/util/Map;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Lcom/qq/e/comm/managers/GDTAdSdk;->getGDTAdManger()Lcom/qq/e/comm/managers/IGDTAdManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Lcom/qq/e/comm/managers/IGDTAdManager;->getSDKInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getAppId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setApp_id(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setBuyer_id(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPid()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setPid(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setSdk_info(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPlatform()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setSdk(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/meishu/sdk/core/MSAdConfig;->getWxAppid()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_1

    .line 85
    .line 86
    :try_start_0
    const-string p0, "com.tencent.mm.opensdk.constants.Build"

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "SDK_VERSION_NAME"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setOpensdk_ver(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 121
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setSupport_h265(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->setSupport_splash_zoomout(Z)V

    .line 125
    .line 126
    .line 127
    return-object v1
.end method

.method private static generateKs(Landroid/content/Context;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;)Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getKSVersionName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Lcom/kwad/sdk/api/SdkConfig$Builder;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/kwad/sdk/api/SdkConfig$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getAppId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/SdkConfig$Builder;->appId(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/api/SdkConfig$Builder;->debug(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->build()Lcom/kwad/sdk/api/SdkConfig;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0, v1}, Lcom/kwad/sdk/api/KsAdSDK;->init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Z

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/kwad/sdk/api/KsScene$Builder;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPid()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-direct {p0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1, p0}, Lcom/kwad/sdk/api/KsLoadManager;->getBidRequestToken(Lcom/kwad/sdk/api/KsScene;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v1, Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getAppId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;->setApp_id(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPid()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;->setPid(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPlatform()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;->setSdk(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;->setToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public static getS2SBJson(Landroid/content/Context;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;->getS2sbList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->isValid()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const-string v3, "GDT"

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPlatform()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {p0, v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBUtil;->generateGdt(Landroid/content/Context;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;)Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string v3, "KS"

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->getPlatform()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-static {p0, v2}, Lcom/meishu/sdk/core/loader/serverbidding/S2SBUtil;->generateKs(Landroid/content/Context;Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;)Lcom/meishu/sdk/core/loader/serverbidding/KSS2sbBean;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object p0, Lcom/meishu/sdk/core/loader/serverbidding/S2SBUtil;->gson:Lcom/google/gson/Gson;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object p0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_3
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method
