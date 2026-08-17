.class public Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJTTAdNativeWrapper"


# instance fields
.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field private showed:Z

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->showNativeAd(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$602(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->showed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private getImageBytes(Landroid/content/Context;I)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x1000

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    return-object p1

    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method private handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_root_view:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_app_name:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    sget v1, Lcom/meishu/sdk/R$id;->ms_download_layer_app_version:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    .line 43
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_layer_app_size:I

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/widget/TextView;

    .line 50
    .line 51
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_layer_app_owner:I

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    sget v3, Lcom/meishu/sdk/R$id;->ms_download_layer_app_privacy:I

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/widget/TextView;

    .line 66
    .line 67
    sget v4, Lcom/meishu/sdk/R$id;->ms_download_layer_app_permission:I

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/widget/TextView;

    .line 74
    .line 75
    sget v5, Lcom/meishu/sdk/R$id;->ms_download_layer_app_introduce:I

    .line 76
    .line 77
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;

    .line 105
    .line 106
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/ComplianceInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$6;

    .line 113
    .line 114
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$6;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/ComplianceInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;

    .line 121
    .line 122
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/ComplianceInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 132
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private loadNativeAd()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->getTtAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 40
    .line 41
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private loadNewAd(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0xbb8

    .line 9
    .line 10
    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private showNativeAd(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 8
    .line 9
    sget v4, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v4, v0

    .line 17
    check-cast v4, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_bg:I

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v7, v0

    .line 39
    check-cast v7, Landroid/widget/ImageView;

    .line 40
    .line 41
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 48
    .line 49
    sget v0, Lcom/meishu/sdk/R$id;->ms_native_splash_ad_container:I

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v8, v0

    .line 56
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_shake_img:I

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 65
    .line 66
    :try_start_0
    invoke-direct {v1, v4, v2}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 75
    .line 76
    sget v9, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_1:I

    .line 77
    .line 78
    invoke-static {v0, v9, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/16 v10, 0x10

    .line 87
    .line 88
    const/4 v11, 0x2

    .line 89
    const/4 v12, 0x3

    .line 90
    const/4 v13, 0x4

    .line 91
    const/4 v15, 0x0

    .line 92
    if-eq v9, v12, :cond_0

    .line 93
    .line 94
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eq v9, v11, :cond_0

    .line 99
    .line 100
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eq v9, v13, :cond_0

    .line 105
    .line 106
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-ne v9, v10, :cond_2

    .line 111
    .line 112
    :cond_0
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    if-eqz v9, :cond_2

    .line 117
    .line 118
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    if-lez v16, :cond_2

    .line 123
    .line 124
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 129
    .line 130
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v16

    .line 134
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/TTImage;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/TTImage;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v18

    .line 142
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/TTImage;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    int-to-float v10, v10

    .line 147
    const/high16 v20, 0x3f800000    # 1.0f

    .line 148
    .line 149
    mul-float v10, v10, v20

    .line 150
    .line 151
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/TTImage;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    int-to-float v9, v9

    .line 156
    div-float/2addr v10, v9

    .line 157
    float-to-double v9, v10

    .line 158
    const-wide v20, 0x3fe570a3d70a3d71L    # 0.67

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    cmpg-double v9, v9, v20

    .line 164
    .line 165
    if-gez v9, :cond_1

    .line 166
    .line 167
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 168
    .line 169
    sget v9, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_2:I

    .line 170
    .line 171
    invoke-static {v0, v9, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object/from16 v9, v16

    .line 176
    .line 177
    move/from16 v10, v17

    .line 178
    .line 179
    move/from16 v22, v18

    .line 180
    .line 181
    const/16 v16, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_1
    move-object/from16 v9, v16

    .line 185
    .line 186
    move/from16 v10, v17

    .line 187
    .line 188
    move/from16 v22, v18

    .line 189
    .line 190
    move/from16 v16, v15

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_2
    const-string v16, ""

    .line 194
    .line 195
    move v10, v15

    .line 196
    move/from16 v22, v10

    .line 197
    .line 198
    move-object/from16 v9, v16

    .line 199
    .line 200
    move/from16 v16, v22

    .line 201
    .line 202
    :goto_1
    sget v13, Lcom/meishu/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    .line 203
    .line 204
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    check-cast v13, Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    sget v11, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_ll:I

    .line 211
    .line 212
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    check-cast v11, Landroid/widget/LinearLayout;

    .line 217
    .line 218
    sget v12, Lcom/meishu/sdk/R$id;->layout_native_splash_imageview:I

    .line 219
    .line 220
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    check-cast v12, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 225
    .line 226
    sget v5, Lcom/meishu/sdk/R$id;->layout_native_splash_title:I

    .line 227
    .line 228
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Landroid/widget/TextView;

    .line 233
    .line 234
    sget v15, Lcom/meishu/sdk/R$id;->layout_native_splash_icon:I

    .line 235
    .line 236
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    check-cast v15, Landroid/widget/ImageView;

    .line 241
    .line 242
    const/16 v23, 0x1

    .line 243
    .line 244
    sget v14, Lcom/meishu/sdk/R$id;->layout_native_splash_score:I

    .line 245
    .line 246
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    check-cast v14, Landroid/widget/ImageView;

    .line 251
    .line 252
    move-object/from16 v24, v8

    .line 253
    .line 254
    sget v8, Lcom/meishu/sdk/R$id;->layout_native_splash_desc:I

    .line 255
    .line 256
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    check-cast v8, Landroid/widget/TextView;

    .line 261
    .line 262
    move-object/from16 v25, v9

    .line 263
    .line 264
    sget v9, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo_ll:I

    .line 265
    .line 266
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    check-cast v9, Landroid/widget/LinearLayout;

    .line 271
    .line 272
    sget v9, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo:I

    .line 273
    .line 274
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    check-cast v9, Landroid/widget/ImageView;

    .line 279
    .line 280
    move-object/from16 v26, v9

    .line 281
    .line 282
    sget v9, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 283
    .line 284
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    check-cast v9, Landroid/widget/TextView;

    .line 289
    .line 290
    move-object/from16 v27, v0

    .line 291
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    move-object/from16 v28, v7

    .line 298
    .line 299
    iget-object v7, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 300
    .line 301
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    and-int/lit8 v7, v7, 0x1

    .line 306
    .line 307
    move-object/from16 v29, v12

    .line 308
    .line 309
    move/from16 v12, v23

    .line 310
    .line 311
    if-ne v7, v12, :cond_3

    .line 312
    .line 313
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_3
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :goto_2
    new-instance v7, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$3;

    .line 321
    .line 322
    invoke-direct {v7, v1, v3, v2}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$3;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v2, v11, v0, v0, v7}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_4

    .line 339
    .line 340
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    sget v7, Lcom/meishu/sdk/R$drawable;->ms_shake_angle:I

    .line 347
    .line 348
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iget v7, v6, Landroid/util/DisplayMetrics;->density:F

    .line 353
    .line 354
    const/high16 v12, 0x41f00000    # 30.0f

    .line 355
    .line 356
    mul-float/2addr v7, v12

    .line 357
    float-to-int v7, v7

    .line 358
    const/4 v12, 0x0

    .line 359
    invoke-virtual {v0, v12, v12, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    .line 361
    .line 362
    const/16 v7, 0x3c

    .line 363
    .line 364
    invoke-virtual {v9, v7, v12, v7, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 365
    .line 366
    .line 367
    const/4 v7, 0x0

    .line 368
    invoke-virtual {v9, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_4
    const/4 v12, 0x0

    .line 373
    :goto_3
    new-instance v0, Lcom/meishu/sdk/core/bquery/i;

    .line 374
    .line 375
    invoke-direct {v0, v4}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    const/16 v2, 0x8

    .line 387
    .line 388
    if-nez v7, :cond_5

    .line 389
    .line 390
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_5
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    .line 406
    .line 407
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    if-nez v7, :cond_6

    .line 416
    .line 417
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    goto :goto_5

    .line 428
    :cond_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    if-nez v7, :cond_7

    .line 447
    .line 448
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    iput-object v15, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 452
    .line 453
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    invoke-virtual {v0, v7, v12}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 462
    .line 463
    .line 464
    goto :goto_6

    .line 465
    :cond_7
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 469
    .line 470
    .line 471
    move-result v7

    .line 472
    const/4 v12, -0x2

    .line 473
    const-wide v30, 0x3fb1eb851eb851ecL    # 0.07

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    const-wide v32, 0x3feb851eb851eb85L    # 0.86

    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    const/4 v2, 0x3

    .line 484
    if-eq v7, v2, :cond_a

    .line 485
    .line 486
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    const/4 v7, 0x2

    .line 491
    if-eq v2, v7, :cond_a

    .line 492
    .line 493
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    const/4 v7, 0x4

    .line 498
    if-eq v2, v7, :cond_a

    .line 499
    .line 500
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    const/16 v7, 0x10

    .line 505
    .line 506
    if-ne v2, v7, :cond_8

    .line 507
    .line 508
    goto :goto_7

    .line 509
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    const/16 v5, 0xf

    .line 514
    .line 515
    if-eq v2, v5, :cond_9

    .line 516
    .line 517
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    const/4 v5, 0x5

    .line 522
    if-ne v2, v5, :cond_c

    .line 523
    .line 524
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 529
    .line 530
    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 531
    .line 532
    int-to-double v7, v5

    .line 533
    mul-double v7, v7, v32

    .line 534
    .line 535
    double-to-int v5, v7

    .line 536
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 537
    .line 538
    iput v12, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 539
    .line 540
    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 541
    .line 542
    int-to-double v7, v5

    .line 543
    mul-double v7, v7, v30

    .line 544
    .line 545
    double-to-int v5, v7

    .line 546
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 547
    .line 548
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 549
    .line 550
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 554
    .line 555
    .line 556
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 561
    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_a
    :goto_7
    if-eqz v16, :cond_b

    .line 565
    .line 566
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    .line 572
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 573
    .line 574
    int-to-double v12, v7

    .line 575
    mul-double v12, v12, v32

    .line 576
    .line 577
    double-to-int v7, v12

    .line 578
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 579
    .line 580
    move-wide/from16 v18, v12

    .line 581
    .line 582
    move/from16 v7, v22

    .line 583
    .line 584
    int-to-double v12, v7

    .line 585
    mul-double v12, v12, v18

    .line 586
    .line 587
    move-wide/from16 v18, v12

    .line 588
    .line 589
    int-to-double v12, v10

    .line 590
    div-double v12, v18, v12

    .line 591
    .line 592
    double-to-int v7, v12

    .line 593
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 594
    .line 595
    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 596
    .line 597
    int-to-double v12, v7

    .line 598
    mul-double v12, v12, v30

    .line 599
    .line 600
    double-to-int v7, v12

    .line 601
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 602
    .line 603
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 604
    .line 605
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    .line 607
    .line 608
    const/16 v2, 0x8

    .line 609
    .line 610
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    goto :goto_8

    .line 623
    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 628
    .line 629
    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 630
    .line 631
    int-to-double v7, v5

    .line 632
    mul-double v7, v7, v32

    .line 633
    .line 634
    double-to-int v5, v7

    .line 635
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 636
    .line 637
    iput v12, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 638
    .line 639
    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 640
    .line 641
    int-to-double v7, v5

    .line 642
    mul-double v7, v7, v30

    .line 643
    .line 644
    double-to-int v5, v7

    .line 645
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 646
    .line 647
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 648
    .line 649
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    .line 651
    .line 652
    :goto_8
    new-instance v2, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;

    .line 653
    .line 654
    move-object/from16 v5, v28

    .line 655
    .line 656
    move-object/from16 v12, v29

    .line 657
    .line 658
    invoke-direct {v2, v1, v12, v5}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/meishu/sdk/core/view/gif/GifImageView;Landroid/widget/ImageView;)V

    .line 659
    .line 660
    .line 661
    move-object/from16 v5, v25

    .line 662
    .line 663
    const/4 v12, 0x1

    .line 664
    invoke-static {v5, v2, v12}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 665
    .line 666
    .line 667
    :cond_c
    :goto_9
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    if-eqz v2, :cond_d

    .line 672
    .line 673
    move-object/from16 v2, v26

    .line 674
    .line 675
    const/4 v12, 0x0

    .line 676
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    .line 678
    .line 679
    iput-object v2, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 680
    .line 681
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 686
    .line 687
    instance-of v5, v0, Landroid/widget/ImageView;

    .line 688
    .line 689
    if-eqz v5, :cond_e

    .line 690
    .line 691
    check-cast v0, Landroid/widget/ImageView;

    .line 692
    .line 693
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 694
    .line 695
    .line 696
    goto :goto_a

    .line 697
    :cond_d
    move-object/from16 v2, v26

    .line 698
    .line 699
    const/16 v0, 0x8

    .line 700
    .line 701
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    .line 703
    .line 704
    :cond_e
    :goto_a
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 709
    .line 710
    int-to-double v5, v2

    .line 711
    mul-double v5, v5, v32

    .line 712
    .line 713
    const-wide v7, 0x3fe8a3d70a3d70a4L    # 0.77

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    mul-double/2addr v5, v7

    .line 719
    double-to-int v2, v5

    .line 720
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 721
    .line 722
    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    .line 724
    .line 725
    invoke-interface/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    const/4 v7, 0x4

    .line 730
    if-ne v0, v7, :cond_f

    .line 731
    .line 732
    const-string v0, "\u70b9\u51fb/\u6447\u4e00\u6447\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 733
    .line 734
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    .line 736
    .line 737
    goto :goto_b

    .line 738
    :cond_f
    const-string v0, "\u70b9\u51fb\u6216\u6447\u4e00\u6447\u8df3\u8f6c\u8be6\u60c5\u9875"

    .line 739
    .line 740
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    .line 742
    .line 743
    :goto_b
    const/4 v0, -0x1

    .line 744
    move-object/from16 v2, v24

    .line 745
    .line 746
    move-object/from16 v5, v27

    .line 747
    .line 748
    invoke-virtual {v2, v5, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 749
    .line 750
    .line 751
    invoke-direct {v1, v4, v3}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V

    .line 752
    .line 753
    .line 754
    return-void
.end method

.method private showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->setSkipView(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$9;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$9;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setOnSkipListener(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getAdContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public loadAd()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->isInitSuccess()Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-wide/16 v0, 0x3e8

    .line 36
    .line 37
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :catch_0
    move-exception v0

    .line 45
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 49
    .line 50
    const-string v1, "KEY_AUTO_SHOW"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$1;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$1;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAd_type()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eq v0, v1, :cond_4

    .line 86
    .line 87
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->getTtAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 92
    .line 93
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lez v0, :cond_1

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-lez v0, :cond_1

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    goto :goto_1

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    .line 198
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    .line 206
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-lez v0, :cond_2

    .line 213
    .line 214
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-lez v0, :cond_2

    .line 221
    .line 222
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 231
    .line 232
    .line 233
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    goto :goto_1

    .line 235
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 236
    .line 237
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 252
    .line 253
    if-lez v1, :cond_3

    .line 254
    .line 255
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    .line 257
    if-lez v0, :cond_3

    .line 258
    .line 259
    move v4, v1

    .line 260
    move v1, v0

    .line 261
    move v0, v4

    .line 262
    goto :goto_1

    .line 263
    :catch_1
    :cond_3
    const/16 v0, 0x438

    .line 264
    .line 265
    const/16 v1, 0x780

    .line 266
    .line 267
    :goto_1
    :try_start_4
    const-string v2, "CSJTTAdNativeWrapper"

    .line 268
    .line 269
    const-string v3, "start load csj--------------------"

    .line 270
    .line 271
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 275
    .line 276
    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const/4 v3, 0x1

    .line 292
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 301
    .line 302
    check-cast v3, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    int-to-float v0, v0

    .line 309
    invoke-static {v3, v0}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 314
    .line 315
    check-cast v3, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 316
    .line 317
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    int-to-float v1, v1

    .line 322
    invoke-static {v3, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-direct {p0, v0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->loadNewAd(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 335
    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_4
    invoke-direct {p0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->loadNativeAd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 343
    .line 344
    .line 345
    :goto_3
    return-void
.end method
