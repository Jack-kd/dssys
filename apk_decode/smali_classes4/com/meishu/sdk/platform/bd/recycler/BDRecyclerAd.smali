.class public Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDRecyclerAd"


# instance fields
.field private adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

.field private adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

.field private bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field private volatile hasExposed:Z

.field private volatile index:I

.field private isExposure:Z

.field private volatile isImpl:Z

.field private nativeAdMediaListener:Lcom/meishu/sdk/meishu_ad/nativ/e;

.field private normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field private recyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

.field private recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/baidu/mobads/sdk/api/FeedNativeView;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V
    .locals 2

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p3, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->index:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isImpl:Z

    .line 10
    .line 11
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->nativeAdMediaListener:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-class v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isNativeExpress()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isVideo()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    new-instance p2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 58
    .line 59
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {p2, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;

    .line 67
    .line 68
    invoke-direct {v1, p0, p3}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAdListener(Lcom/meishu/sdk/meishu_ad/nativ/a;)V

    .line 72
    .line 73
    .line 74
    new-instance p3, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$2;

    .line 75
    .line 76
    invoke-direct {p3, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$2;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnVideoLoadedListener(Lcom/meishu/sdk/meishu_ad/n0$c;)V

    .line 80
    .line 81
    .line 82
    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->nativeAdMediaListener:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getVideoUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b(Z)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x1

    .line 112
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRecycler(Z)V

    .line 113
    .line 114
    .line 115
    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 116
    .line 117
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    check-cast p3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 122
    .line 123
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getIsVideoAutoPlay()Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAutoStart(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setInitMute(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->k()V

    .line 134
    .line 135
    .line 136
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    :cond_1
    return-void

    .line 139
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->recyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method private isVideo()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 29
    .line 30
    .line 31
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/16 v2, 0x25

    .line 33
    .line 34
    if-ne v0, v2, :cond_2

    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :catchall_0
    :cond_2
    return v1
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-class p4, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 35
    .line 36
    invoke-static {p2, p1, p4}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p4, 0x1

    .line 41
    aget-object p1, p1, p4

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    move-object p1, p2

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    const/4 v3, -0x1

    .line 67
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v3, v4}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 83
    .line 84
    invoke-direct {v4, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/meishu/sdk/core/MSAdConfig;->showFeedAdLogo()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 111
    .line 112
    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 113
    .line 114
    .line 115
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    :try_start_1
    new-instance v2, Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 143
    .line 144
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    .line 146
    const/high16 v5, 0x41600000    # 14.0f

    .line 147
    .line 148
    mul-float/2addr p4, v5

    .line 149
    const/high16 v5, 0x3f000000    # 0.5f

    .line 150
    .line 151
    add-float/2addr p4, v5

    .line 152
    float-to-int p4, p4

    .line 153
    const/4 v5, -0x2

    .line 154
    invoke-direct {v4, v5, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .line 156
    .line 157
    const/16 p4, 0x55

    .line 158
    .line 159
    iput p4, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    .line 161
    iget-object p4, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 162
    .line 163
    invoke-interface {p4}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdLogoUrl()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p4

    .line 167
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result p4

    .line 171
    if-nez p4, :cond_2

    .line 172
    .line 173
    new-instance p4, Lcom/meishu/sdk/core/bquery/i;

    .line 174
    .line 175
    invoke-direct {p4, v2}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    iget-object v5, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 179
    .line 180
    invoke-interface {v5}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdLogoUrl()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const/4 v6, 0x0

    .line 185
    invoke-virtual {p4, v5, v6}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :catchall_1
    move-exception p4

    .line 190
    goto :goto_2

    .line 191
    :cond_2
    :goto_1
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_2
    :try_start_2
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    :cond_3
    :goto_3
    iget-object p4, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 199
    .line 200
    invoke-virtual {p4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 201
    .line 202
    .line 203
    move-result-object p4

    .line 204
    check-cast p4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 205
    .line 206
    invoke-virtual {p4}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p4

    .line 210
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 217
    .line 218
    .line 219
    move-result-wide v4

    .line 220
    invoke-static {v3, p4, v4, v5}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    move-object p1, v3

    .line 227
    :cond_4
    :goto_4
    iget-object p4, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 228
    .line 229
    if-eqz p4, :cond_5

    .line 230
    .line 231
    new-instance v0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;

    .line 232
    .line 233
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 240
    .line 241
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 242
    .line 243
    invoke-direct {v0, v1, v2, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;-><init>(Lcom/meishu/sdk/core/ad/recycler/a;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V

    .line 244
    .line 245
    .line 246
    const/4 v1, 0x0

    .line 247
    invoke-interface {p4, p1, p3, v1, v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 251
    .line 252
    if-eqz p1, :cond_6

    .line 253
    .line 254
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_6

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isNativeExpress()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_6

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getAdView()Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_6

    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getAdView()Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    :cond_6
    const-string p1, "meishu_media_view"

    .line 283
    .line 284
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    if-eqz p1, :cond_7

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    if-eqz p2, :cond_7

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    instance-of p2, p2, Landroid/view/ViewGroup;

    .line 301
    .line 302
    if-eqz p2, :cond_7

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    check-cast p2, Landroid/view/ViewGroup;

    .line 309
    .line 310
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    .line 312
    .line 313
    goto :goto_6

    .line 314
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    .line 316
    .line 317
    :cond_7
    :goto_6
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 8
    :try_start_0
    iput-object p5, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->recyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isVideo()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    .line 12
    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 13
    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    .line 15
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 1
    :try_start_0
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->recyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 7
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->index:I

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 19
    .line 20
    :cond_1
    iget v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->index:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    iput v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->index:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void

    .line 34
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 6

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isNativeExpress()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isNativeExpress()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isNativeExpress()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    const v0, 0x186a0

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v2, 0xb

    .line 35
    .line 36
    const/16 v3, 0xd

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    packed-switch v1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :pswitch_0
    return v4

    .line 46
    :pswitch_1
    return v3

    .line 47
    :pswitch_2
    return v2

    .line 48
    :cond_2
    sget-object v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$6;->$SwitchMap$com$baidu$mobads$sdk$api$NativeResponse$MaterialType:[I

    .line 49
    .line 50
    iget-object v5, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 51
    .line 52
    invoke-interface {v5}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    aget v1, v1, v5

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    if-eq v1, v5, :cond_7

    .line 64
    .line 65
    if-eq v1, v4, :cond_3

    .line 66
    .line 67
    return v0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 69
    .line 70
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    return v3

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 78
    .line 79
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 86
    .line 87
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const-string v1, ""

    .line 93
    .line 94
    :goto_1
    iget-object v3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 95
    .line 96
    invoke-interface {v3}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    return v2

    .line 107
    :cond_6
    return v0

    .line 108
    :cond_7
    return v4

    .line 109
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_8
    return v0

    .line 113
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdView()Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedNativeView;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 53
    .line 54
    check-cast v1, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedNativeView;->setAdData(Lcom/baidu/mobads/sdk/api/XAdNativeResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 64
    .line 65
    return-object v0
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPermissionLink()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x400

    .line 17
    .line 18
    div-long/2addr v1, v3

    .line 19
    mul-long/2addr v1, v3

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "Mb"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getCustomVideo()Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Ljava/lang/String;

    .line 26
    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-array v0, v1, [Ljava/lang/String;

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    return-object v0

    .line 56
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->isNeedDownloadApp()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPackage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getPlatFormEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPrivacyLink()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAdValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->bdAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->isAdAvailable(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/a;->isAdValid()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public isHasExposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->hasExposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNativeExpress()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, 0x30d40

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v2, 0x2

    .line 31
    if-ne v2, v1, :cond_0

    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    return v0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const v2, 0x186a0

    .line 38
    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    return v3

    .line 43
    :cond_2
    return v0

    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public mute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getAdPatternType()I

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
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$5;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x12c

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public resumeVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDownloadStatusListener(Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V
    .locals 0

    return-void
.end method

.method public setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    return-void
.end method

.method public setHasExposed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->hasExposed:Z

    .line 2
    .line 3
    return-void
.end method

.method public startVideo()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getAdPatternType()I

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
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$4;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$4;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x12c

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->l()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
