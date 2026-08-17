.class public Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoRecyclerAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

.field private binded:Z

.field private mimoAd:Lcom/miui/zeus/mimo/sdk/TemplateAd;

.field private mimoNativeAd:Lcom/miui/zeus/mimo/sdk/NativeAd;

.field private mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

.field private touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/mimo/sdk/NativeAd;Lcom/miui/zeus/mimo/sdk/NativeAdData;Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V
    .locals 1

    .line 1
    const-string v0, "MIMO"

    invoke-direct {p0, p3, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAd:Lcom/miui/zeus/mimo/sdk/NativeAd;

    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 4
    invoke-direct {p0, p3}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->init(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/zeus/mimo/sdk/TemplateAd;Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V
    .locals 1

    .line 5
    const-string v0, "MIMO"

    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoAd:Lcom/miui/zeus/mimo/sdk/TemplateAd;

    .line 7
    invoke-direct {p0, p2}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->init(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->binded:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method private init(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 2
    .line 3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 11
    .line 12
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v2, -0x2

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0
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
    iget-boolean p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->binded:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoAd:Lcom/miui/zeus/mimo/sdk/TemplateAd;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 11
    .line 12
    new-instance p3, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;

    .line 13
    .line 14
    invoke-direct {p3, p0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;-><init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/miui/zeus/mimo/sdk/TemplateAd;->show(Landroid/view/ViewGroup;Lcom/miui/zeus/mimo/sdk/TemplateAd$TemplateAdInteractionListener;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAd:Lcom/miui/zeus/mimo/sdk/NativeAd;

    .line 22
    .line 23
    new-instance p3, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$2;

    .line 24
    .line 25
    invoke-direct {p3, p0, p4}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$2;-><init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, p3}, Lcom/miui/zeus/mimo/sdk/NativeAd;->registerAdView(Landroid/view/View;Lcom/miui/zeus/mimo/sdk/NativeAd$NativeAdInteractionListener;)V

    .line 29
    .line 30
    .line 31
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
    .locals 0

    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoAd:Lcom/miui/zeus/mimo/sdk/TemplateAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x186a0

    .line 6
    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getAdStyle()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xd4

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0xd6

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/16 v0, 0xc

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x2

    .line 27
    return v0

    .line 28
    :cond_2
    const/16 v0, 0xb

    .line 29
    .line 30
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getDesc()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

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

    .line 1
    const-string v0, "MIMO"

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getAdMark()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getIconUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getImageList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    return-object v1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Ljava/lang/String;

    .line 25
    .line 26
    return-object v0
.end method

.method public getInteractionType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoAd:Lcom/miui/zeus/mimo/sdk/TemplateAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getAdType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
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
    const-string v0, "MIMO"

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getTitle()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

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

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->mimoNativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/miui/zeus/mimo/sdk/NativeAdData;->getVideoUrl()Ljava/lang/String;

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

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNativeExpress()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

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
