.class public Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

.field private nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

.field private recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Lcom/huawei/hms/ads/nativead/NativeAd;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 4
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
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

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
    :cond_0
    iput-object p4, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-class p3, Lcom/huawei/hms/ads/nativead/NativeView;

    .line 31
    .line 32
    invoke-static {p2, p1, p3}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x1

    .line 37
    aget-object p2, p1, p2

    .line 38
    .line 39
    check-cast p2, Lcom/huawei/hms/ads/nativead/NativeView;

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    aget-object p1, p1, p2

    .line 45
    .line 46
    new-instance p2, Lcom/huawei/hms/ads/nativead/NativeView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-direct {p2, p3}, Lcom/huawei/hms/ads/nativead/NativeView;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Landroid/view/ViewGroup;

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    const/4 v2, -0x1

    .line 74
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v2, v3}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 90
    .line 91
    invoke-direct {v3, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p2, p1}, Lcom/huawei/hms/ads/nativead/NativeView;->setId(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v2, v1}, Lcom/huawei/hms/ads/nativead/NativeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p2, p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getAdPatternType()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 p3, 0x2

    .line 118
    if-eq p1, p3, :cond_2

    .line 119
    .line 120
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Lcom/huawei/hms/ads/nativead/NativeView;->setNativeAd(Lcom/huawei/hms/ads/nativead/NativeAd;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    move-object p3, p1

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of p4, p4, Lcom/huawei/hms/ads/nativead/NativeView;

    if-eqz p4, :cond_1

    .line 13
    new-instance p4, Lcom/huawei/hms/ads/nativead/MediaView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/huawei/hms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object p5, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    invoke-virtual {p5}, Lcom/huawei/hms/ads/nativead/NativeAd;->getMediaContent()Lcom/huawei/hms/ads/nativead/MediaContent;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/huawei/hms/ads/nativead/MediaView;->setMediaContent(Lcom/huawei/hms/ads/nativead/MediaContent;)V

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1, p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/ads/nativead/NativeView;

    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/ads/nativead/NativeView;->setNativeAd(Lcom/huawei/hms/ads/nativead/NativeAd;)V

    .line 18
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getAdPatternType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/ads/nativead/NativeView;

    invoke-virtual {p1, p4}, Lcom/huawei/hms/ads/nativead/NativeView;->setMediaView(Lcom/huawei/hms/ads/nativead/MediaView;)V

    return-void

    .line 20
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    .line 21
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 2

    move-object p2, p1

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/hms/ads/nativead/NativeView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/huawei/hms/ads/nativead/MediaView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/huawei/hms/ads/nativead/NativeAd;->getMediaContent()Lcom/huawei/hms/ads/nativead/MediaContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/nativead/MediaView;->setMediaContent(Lcom/huawei/hms/ads/nativead/MediaContent;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/ads/nativead/NativeView;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/ads/nativead/NativeView;->setMediaView(Lcom/huawei/hms/ads/nativead/MediaView;)V

    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getAdPatternType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/ads/nativead/NativeView;

    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/ads/nativead/NativeView;->setNativeAd(Lcom/huawei/hms/ads/nativead/NativeAd;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

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

.method public getAdPatternType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getCreativeType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x6a

    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x6c

    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x66

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x67

    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/16 v0, 0xb

    .line 41
    .line 42
    return v0

    .line 43
    :cond_0
    const/16 v0, 0xd

    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    return v1

    .line 47
    :cond_2
    const/16 v0, 0xc

    .line 48
    .line 49
    return v0
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getDescription()Ljava/lang/String;

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

.method public getCustomVideo()Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getDescription()Ljava/lang/String;

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

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

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
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getIcon()Lcom/huawei/hms/ads/Image;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/huawei/hms/ads/Image;->getUri()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/huawei/hms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-array v2, v2, [Ljava/lang/String;

    .line 23
    .line 24
    move v3, v0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/huawei/hms/ads/Image;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/huawei/hms/ads/Image;->getUri()Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    return-object v2

    .line 53
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    .line 57
    .line 58
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatFormEcpm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->nativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getTitle()Ljava/lang/String;

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

.method public isNativeExpress()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v1, 0x30d40

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v1, v0, :cond_0

    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    return v2

    .line 35
    :cond_1
    const v1, 0x186a0

    .line 36
    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    return v3

    .line 41
    :cond_2
    return v2
.end method

.method public mute()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public resumeVideo()V
    .locals 0

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

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public stopVideo()V
    .locals 0

    return-void
.end method

.method public unmute()V
    .locals 0

    return-void
.end method
