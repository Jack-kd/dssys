.class public Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "JDNativeFeedAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

.field private feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

.field private hasExposed:Z

.field private nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "JD"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->hasExposed:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->hasExposed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->hasExposed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 11
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
    const-class v0, Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "JDNativeFeedAd"

    .line 10
    .line 11
    const-string p2, "jd native click need Activity"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-class v1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 45
    .line 46
    invoke-static {p2, v0, v1}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const/4 v0, 0x1

    .line 51
    aget-object v0, p2, v0

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aget-object v0, p2, v0

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/view/ViewGroup;

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    :cond_2
    move-object v7, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    const/4 v4, -0x1

    .line 79
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-direct {v4, v5}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    new-instance v5, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 95
    .line 96
    invoke-direct {v5, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v5}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    move-object v7, v4

    .line 116
    :goto_0
    iget-object v5, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 117
    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    move-object v6, p1

    .line 121
    check-cast v6, Landroid/app/Activity;

    .line 122
    .line 123
    new-instance v10, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;

    .line 124
    .line 125
    invoke-direct {v10, p0, p4}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;-><init>(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 126
    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    move-object v8, p3

    .line 130
    invoke-virtual/range {v5 .. v10}, Lcom/jd/ad/sdk/nativead/JADNative;->registerNativeView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/jd/ad/sdk/nativead/JADNativeInteractionListener;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 2
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jd/ad/sdk/nativead/JADNative;->destroy()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getImageUrls()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getImageUrls()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0xd

    .line 25
    .line 26
    return v0

    .line 27
    :cond_0
    return v1
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

    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getDescription()Ljava/lang/String;

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

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getResource()Ljava/lang/String;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getImageUrls()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getImageUrls()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jd/ad/sdk/nativead/JADNative;->getJADExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/jd/ad/sdk/nativead/JADNative;->getJADExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/jd/ad/sdk/dl/model/IJADExtra;->getPrice()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "JD"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;->getTitle()Ljava/lang/String;

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

.method public isNativeExpress()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->adWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

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

.method public setFeedAd(Lcom/jd/ad/sdk/dl/addata/JADMaterialData;Lcom/jd/ad/sdk/nativead/JADNative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->feedAd:Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->nativeAd:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 4
    .line 5
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
