.class public Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# instance fields
.field private final adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

.field private recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 7
    .line 8
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
    iput-object p4, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    instance-of p3, p3, Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p3, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide p3

    .line 58
    invoke-static {p2, p1, p3, p4}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    :cond_1
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

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
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

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
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
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
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
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
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

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatFormEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
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
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
