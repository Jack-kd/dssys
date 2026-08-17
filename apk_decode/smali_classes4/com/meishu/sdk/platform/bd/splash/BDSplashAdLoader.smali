.class public Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;
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
.field private static final TAG:Ljava/lang/String; = "BDSplashAdLoader"


# instance fields
.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field private showed:Z

.field private splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showNativeSplash(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;ZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showNativeLayout(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;ZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private getImageUrl(Lcom/baidu/mobads/sdk/api/NativeResponse;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const-string p1, ""

    .line 43
    .line 44
    return-object p1
.end method

.method private handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_root_view:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_app_name:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    sget v1, Lcom/meishu/sdk/R$id;->ms_download_layer_app_version:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .line 36
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_layer_app_size:I

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/widget/TextView;

    .line 43
    .line 44
    sget v3, Lcom/meishu/sdk/R$id;->ms_download_layer_app_owner:I

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/TextView;

    .line 51
    .line 52
    sget v4, Lcom/meishu/sdk/R$id;->ms_download_layer_app_privacy:I

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/widget/TextView;

    .line 59
    .line 60
    sget v5, Lcom/meishu/sdk/R$id;->ms_download_layer_app_permission:I

    .line 61
    .line 62
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Landroid/widget/TextView;

    .line 67
    .line 68
    sget v6, Lcom/meishu/sdk/R$id;->ms_download_layer_app_introduce:I

    .line 69
    .line 70
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBrandName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppVersion()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    const-wide/16 v9, 0x400

    .line 100
    .line 101
    div-long/2addr v7, v9

    .line 102
    mul-long/2addr v7, v9

    .line 103
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, "Mb"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$4;

    .line 126
    .line 127
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$4;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;

    .line 134
    .line 135
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$6;

    .line 142
    .line 143
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$6;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_0

    .line 152
    :cond_0
    return-void

    .line 153
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private loadExpressAd()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLocalParams()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KEY_SKIP_BUTTON"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLocalParams()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "KEY_AUTO_SHOW"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 38
    .line 39
    invoke-direct {v3, v1, v2, p0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;-><init>(ZLandroid/view/ViewGroup;Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 45
    .line 46
    check-cast v5, Lcom/meishu/sdk/core/ad/splash/d;

    .line 47
    .line 48
    invoke-direct {v4, p0, v5, v3}, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/meishu/sdk/core/ad/splash/d;Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;)V

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    const-string v0, "\u672a\u6307\u5b9a\u5e7f\u544a\u5bb9\u5668"

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->onAdFailed(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    .line 62
    .line 63
    instance-of v1, v0, Landroid/view/View;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    check-cast v0, Landroid/view/View;

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 82
    .line 83
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const/4 v5, 0x1

    .line 95
    const-string v6, "use_dialog_frame"

    .line 96
    .line 97
    if-eq v2, v5, :cond_3

    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    if-eq v2, v5, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "false"

    .line 104
    .line 105
    invoke-virtual {v1, v6, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const-string v2, "true"

    .line 110
    .line 111
    invoke-virtual {v1, v6, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 112
    .line 113
    .line 114
    :goto_0
    new-instance v2, Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 115
    .line 116
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 117
    .line 118
    check-cast v5, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v2, v5, v0, v1, v4}, Lcom/baidu/mobads/sdk/api/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/SplashAdListener;)V

    .line 133
    .line 134
    .line 135
    iput-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v2, v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->setAppSid(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 147
    .line 148
    invoke-virtual {v3, v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->setSplashAD(Lcom/baidu/mobads/sdk/api/SplashAd;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->load()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private loadNativeAd()V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setAppSid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setCacheVideoOnlyWifi(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadFeedAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private showNativeLayout(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;ZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    .line 1
    iget-object v5, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2
    sget v6, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 3
    invoke-virtual {v3, v5}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v6

    check-cast v6, Lcom/meishu/sdk/core/ad/splash/d;

    invoke-interface {v6, v3}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v6

    check-cast v6, Lcom/meishu/sdk/core/ad/splash/d;

    invoke-interface {v6, v3}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 6
    sget v6, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_bg:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 7
    sget v8, Lcom/meishu/sdk/R$id;->ms_skipView:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 8
    sget v8, Lcom/meishu/sdk/R$id;->ms_native_splash_ad_container:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 9
    sget v9, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_shake_img:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 10
    iget-object v9, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    sget v10, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_1:I

    invoke-static {v9, v10, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eqz p4, :cond_0

    .line 11
    iget-object v9, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    sget v10, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_2:I

    invoke-static {v9, v10, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    :cond_0
    const/4 v10, -0x1

    .line 12
    invoke-virtual {v8, v9, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 13
    sget v8, Lcom/meishu/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 14
    sget v11, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_ll:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 15
    sget v12, Lcom/meishu/sdk/R$id;->layout_native_splash_imageview:I

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 16
    sget v13, Lcom/meishu/sdk/R$id;->layout_native_splash_title:I

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 17
    sget v14, Lcom/meishu/sdk/R$id;->layout_native_splash_icon:I

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 18
    sget v15, Lcom/meishu/sdk/R$id;->layout_native_splash_score:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 19
    sget v7, Lcom/meishu/sdk/R$id;->layout_native_splash_desc:I

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 20
    sget v10, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo:I

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 21
    sget v10, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_cid:I

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 22
    sget v3, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v9, 0x8

    .line 23
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    move-result v10

    const/4 v9, 0x2

    if-eq v10, v9, :cond_1

    .line 25
    const-string v9, "\u70b9\u51fb\u6216\u6447\u52a8\u4e86\u89e3\u8be6\u60c5"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 26
    :cond_1
    const-string v9, "\u70b9\u51fb\u4e0b\u8f7d"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_0
    invoke-direct {v1, v5, v2}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    .line 28
    new-instance v3, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {v3, v5}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 29
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_2

    .line 30
    sget v9, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo:I

    invoke-virtual {v3, v9}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v9

    check-cast v9, Lcom/meishu/sdk/core/bquery/i;

    move-object/from16 v16, v5

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v9, v5, v10}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    goto :goto_1

    :cond_2
    move-object/from16 v16, v5

    .line 32
    :goto_1
    iget-object v5, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz p4, :cond_3

    .line 33
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    iget v10, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v10

    const-wide v17, 0x3feb851eb851eb85L    # 0.86

    mul-double v0, v0, v17

    double-to-int v10, v0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v10, p8

    move-wide/from16 v17, v0

    int-to-double v0, v10

    mul-double v0, v0, v17

    move/from16 v10, p7

    move-wide/from16 v17, v0

    int-to-double v0, v10

    div-double v0, v17, v0

    double-to-int v0, v0

    .line 35
    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 36
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v17, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v0, v0, v17

    double-to-int v0, v0

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 37
    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 38
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 39
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_3
    const/16 v0, 0x8

    .line 43
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_2
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 49
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 51
    :cond_5
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :goto_3
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 54
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iput-object v14, v3, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 56
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v3, v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    goto :goto_4

    .line 58
    :cond_6
    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :goto_4
    :try_start_0
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 60
    new-instance v0, Lcom/baidu/mobads/sdk/api/XNativeView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    :try_start_1
    iget-object v3, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/baidu/mobads/sdk/api/XNativeView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeItem(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v3}, Lcom/baidu/mobads/sdk/api/XNativeView;->setUseDownloadFrame(Z)V

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v0, v3}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    .line 64
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->render()V

    .line 65
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_7

    .line 67
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    const/4 v5, -0x1

    .line 68
    :goto_5
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    invoke-virtual {v8, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7

    :cond_8
    move-object/from16 v1, p0

    if-eqz p5, :cond_9

    move-object/from16 v0, p5

    .line 71
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 72
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->getImageUrl(Lcom/baidu/mobads/sdk/api/NativeResponse;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iput-object v12, v3, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v3, v0, v5}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    :goto_6
    if-eqz v4, :cond_a

    .line 75
    iget-object v0, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const/16 v0, 0x14

    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 77
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :cond_a
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v3, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;

    move-object/from16 v4, p2

    invoke-direct {v3, v1, v4}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V

    const/4 v5, 0x0

    invoke-interface {v2, v11, v0, v5, v3}, Lcom/baidu/mobads/sdk/api/NativeResponse;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;)V

    move-object/from16 v5, v16

    .line 81
    invoke-direct {v1, v5, v4}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V

    return-void
.end method

.method private showNativeSplash(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->NORMAL:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 15
    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v0, ""

    .line 62
    .line 63
    :goto_0
    new-instance v1, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    return-void
.end method

.method private showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
    .locals 1

    .line 1
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
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;->setSkipView(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setOnSkipListener(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public loadAd()V
    .locals 5

    .line 1
    const-string v0, "start loadBD"

    .line 2
    .line 3
    const-string v1, "BDSplashAdLoader"

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 9
    .line 10
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 29
    .line 30
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAd_type()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sget-object v3, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->loadNativeAd()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->loadExpressAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 9

    .line 1
    const-string v0, "203"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "isWin="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",price="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "BDSplashAdLoader"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    const-class v1, Lcom/baidu/mobads/sdk/api/SplashAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    const-class v2, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    :try_start_1
    const-string v3, "biddingSuccess"

    .line 40
    .line 41
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/SplashAd;->getECPMLevel()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v3, p2, v4, v5}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    const-string v3, "biddingFail"

    .line 88
    .line 89
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 98
    .line 99
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    const/4 v1, 0x1

    .line 108
    const-string v2, "bid_t"

    .line 109
    .line 110
    const-wide/16 v3, 0x3e8

    .line 111
    .line 112
    const-string v5, "ad_time"

    .line 113
    .line 114
    const-string v6, "ecpm"

    .line 115
    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    :try_start_2
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->getECPMLevel()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iget-object v7, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object v8, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 140
    .line 141
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-static {v0, p2, v7, v8}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    div-long/2addr v6, v3

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 176
    .line 177
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$8;

    .line 178
    .line 179
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$8;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    new-instance p2, Ljava/util/Random;

    .line 199
    .line 200
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 201
    .line 202
    .line 203
    const/16 v6, 0xa

    .line 204
    .line 205
    invoke-virtual {p2, v6}, Ljava/util/Random;->nextInt(I)I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    const-string v6, "adn"

    .line 210
    .line 211
    if-nez p2, :cond_2

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_2
    move v1, p2

    .line 215
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    div-long/2addr v6, v3

    .line 227
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const/4 p2, 0x3

    .line 235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-string p2, "reason"

    .line 243
    .line 244
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 248
    .line 249
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$9;

    .line 250
    .line 251
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$9;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    .line 256
    .line 257
    :catchall_1
    :goto_1
    return-void
.end method
