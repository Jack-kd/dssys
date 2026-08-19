.class public Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# instance fields
.field private nativeTemplateAdView:Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

.field private recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "OPPO"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->nativeTemplateAdView:Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 8
    .line 9
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
    iput-object p4, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->nativeTemplateAdView:Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;->destroy()V

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
    .locals 1

    const v0, 0x186a0

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

    const/4 v0, 0x0

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
    const-string v0, "OPPO"

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

.method public getNativeTemplateAdView()Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->nativeTemplateAdView:Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 2
    .line 3
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
    const-string v0, "OPPO"

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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
