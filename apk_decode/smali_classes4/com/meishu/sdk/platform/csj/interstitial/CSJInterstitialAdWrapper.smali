.class public Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;",
        "Lcom/meishu/sdk/core/ad/interstitial/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJInterstitialAdWrappe"


# instance fields
.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->getTtAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadNewInterstitial()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 47
    .line 48
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .line 64
    if-lez v1, :cond_1

    .line 65
    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    if-lez v0, :cond_1

    .line 69
    .line 70
    move v4, v1

    .line 71
    move v1, v0

    .line 72
    move v0, v4

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    :cond_1
    const/16 v0, 0x438

    .line 75
    .line 76
    const/16 v1, 0x780

    .line 77
    .line 78
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 79
    .line 80
    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    int-to-float v0, v0

    .line 96
    int-to-float v1, v1

    .line 97
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 111
    .line 112
    new-instance v2, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 113
    .line 114
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private loadOldInterstitial()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v0, 0x438

    .line 31
    .line 32
    const/16 v1, 0x780

    .line 33
    .line 34
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 49
    .line 50
    const-string v4, "KEY_WIDTH"

    .line 51
    .line 52
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Float;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 59
    .line 60
    const-string v5, "KEY_HEIGHT"

    .line 61
    .line 62
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/Float;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    cmpl-float v6, v6, v5

    .line 78
    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    .line 92
    int-to-float v3, v3

    .line 93
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .line 95
    div-float/2addr v3, v2

    .line 96
    const/high16 v2, 0x40400000    # 3.0f

    .line 97
    .line 98
    mul-float/2addr v3, v2

    .line 99
    const/high16 v2, 0x40800000    # 4.0f

    .line 100
    .line 101
    div-float v2, v3, v2

    .line 102
    .line 103
    :goto_1
    new-instance v3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 104
    .line 105
    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x1

    .line 121
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v2, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 134
    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

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
    const-wide/16 v0, 0x1f4

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
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->loadNewInterstitial()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method

.method public setTtNativeExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    return-void
.end method
