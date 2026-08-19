.class public Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;",
        "Lcom/meishu/sdk/core/ad/paster/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWPasterAdWrapper"


# instance fields
.field private hwPasterAd:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->initAd(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->hwPasterAd:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 2
    .line 3
    return-object p0
.end method

.method private initAd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ads/instreamad/InstreamAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;->getContainerView()Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/meishu/sdk/R$layout;->ms_layout_hw_paster:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    sget v0, Lcom/meishu/sdk/R$id;->ms_instream_view:I

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 32
    .line 33
    sget v2, Lcom/meishu/sdk/R$id;->ms_instream_skip:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    .line 41
    sget v2, Lcom/meishu/sdk/R$id;->ms_instream_count_down:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/TextView;

    .line 48
    .line 49
    sget v2, Lcom/meishu/sdk/R$id;->ms_instream_ad_flag:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/widget/TextView;

    .line 56
    .line 57
    sget v2, Lcom/meishu/sdk/R$id;->ms_instream_call_to_action:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/huawei/hms/ads/instreamad/InstreamView;->setInstreamAds(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/huawei/hms/ads/instreamad/InstreamView;->setOnInstreamAdClickListener(Lcom/huawei/hms/ads/instreamad/InstreamView$OnInstreamAdClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/huawei/hms/ads/instreamad/InstreamView;->setInstreamMediaStateListener(Lcom/huawei/hms/ads/instreamad/InstreamMediaStateListener;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$4;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$4;-><init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/huawei/hms/ads/instreamad/InstreamView;->setMediaMuteListener(Lcom/huawei/hms/ads/MediaMuteListener;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 93
    .line 94
    invoke-direct {p1, p0, v0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/huawei/hms/ads/instreamad/InstreamView;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->hwPasterAd:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_0

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->hwPasterAd:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 112
    .line 113
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->hwPasterAd:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x1e

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;->setTotalDuration(I)Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;->setMaxCount(I)Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;->setInstreamAdLoadListener(Lcom/huawei/hms/ads/instreamad/InstreamAdLoadListener;)Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader$Builder;->build()Lcom/huawei/hms/ads/instreamad/InstreamAdLoader;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lcom/huawei/hms/ads/AdParam$Builder;

    .line 73
    .line 74
    invoke-direct {v1}, Lcom/huawei/hms/ads/AdParam$Builder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/huawei/hms/ads/AdParam$Builder;->build()Lcom/huawei/hms/ads/AdParam;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/instreamad/InstreamAdLoader;->loadAd(Lcom/huawei/hms/ads/AdParam;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
