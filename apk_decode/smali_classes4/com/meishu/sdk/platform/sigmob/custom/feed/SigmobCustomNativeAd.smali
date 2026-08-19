.class public Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;
.super Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

.field private windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;-><init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v5, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;

    .line 6
    .line 7
    invoke-direct {v5, p0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v3, p3

    .line 12
    move-object v1, p2

    .line 13
    move-object v2, p3

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$1;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1, v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindMediaView(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    if-ne v0, v3, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/4 v2, 0x3

    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    const/16 v0, 0xd

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    return v1
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getDescriptionUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getAppName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getPrivacyAgreementUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/sigmob/windad/natives/AdAppInfo;->getAppSize()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    div-int/lit16 v1, v1, 0x400

    .line 27
    .line 28
    mul-int/lit16 v1, v1, 0x400

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "MB"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getVersionName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getDesc()Ljava/lang/String;

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

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getDesc()Ljava/lang/String;

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

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getAuthorName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getIconUrl()Ljava/lang/String;

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

.method public getImgUrls()[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getImageList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getImageList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

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
    check-cast v4, Lcom/sigmob/sdk/base/models/SigImage;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/SigImage;->getImageUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v2, v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    return-object v2

    .line 49
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 50
    .line 51
    invoke-interface {v1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getImageList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-array v2, v0, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    return-object v1

    .line 64
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    .line 68
    .line 69
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getPrivacyAgreement()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getTitle()Ljava/lang/String;

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mute()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->pauseVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public resumeVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->resumeVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->startVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->windNativeAdData:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->stopVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 0

    return-void
.end method
