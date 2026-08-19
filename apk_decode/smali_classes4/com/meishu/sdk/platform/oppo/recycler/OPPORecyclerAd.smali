.class public Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "OPPORecyclerAd"


# instance fields
.field private nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

.field private oppoRecyclerAdLoader:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

.field private showed:Z


# direct methods
.method public constructor <init>(Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)V
    .locals 1

    .line 1
    const-string v0, "OPPO"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->oppoRecyclerAdLoader:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->oppoRecyclerAdLoader:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->showed:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 6
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
    invoke-static {p2}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/meishu/sdk/R$id;->ms_ad_container_tag_recycler:I

    .line 8
    .line 9
    const-string v1, "meishu_ad_container_tag_recycler"

    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p2, v0

    .line 16
    :goto_0
    invoke-static {p2}, Lcom/meishu/sdk/core/ad/recycler/d;->b(Landroid/view/ViewGroup;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/heytap/msp/mobad/api/params/NativeAdvanceContainer;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/heytap/msp/mobad/api/params/NativeAdvanceContainer;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    const/4 v5, -0x1

    .line 47
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v0, v5}, Lcom/heytap/msp/mobad/api/params/NativeAdvanceContainer;->setId(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2, v4}, Lcom/heytap/msp/mobad/api/params/NativeAdvanceContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 67
    .line 68
    new-instance v1, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;

    .line 69
    .line 70
    invoke-direct {v1, p0, p4}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;-><init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v1}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->setInteractListener(Lcom/heytap/msp/mobad/api/listener/INativeAdvanceInteractListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 77
    .line 78
    invoke-interface {p2, p1, v0, p3}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->bindToView(Landroid/content/Context;Lcom/heytap/msp/mobad/api/params/NativeAdvanceContainer;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meishu/sdk/R$layout;->ms_oppo_media_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/meishu/sdk/R$id;->ms_oppo_media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/heytap/msp/mobad/api/params/MediaView;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$2;

    invoke-direct {v2, p0, p2}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$2;-><init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->bindMediaView(Landroid/content/Context;Lcom/heytap/msp/mobad/api/params/MediaView;Lcom/heytap/msp/mobad/api/listener/INativeAdvanceMediaListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->release()V

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

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getCreativeType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    const/16 v0, 0xc

    .line 11
    .line 12
    return v0

    .line 13
    :pswitch_1
    const/4 v0, 0x2

    .line 14
    return v0

    .line 15
    :pswitch_2
    const/16 v0, 0xd

    .line 16
    .line 17
    return v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getDesc()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getDesc()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getLogoFile()Lcom/heytap/msp/mobad/api/params/INativeAdFile;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getLogoFile()Lcom/heytap/msp/mobad/api/params/INativeAdFile;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdFile;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getIconFiles()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getIconFiles()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getIconFiles()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/heytap/msp/mobad/api/params/INativeAdFile;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdFile;->getUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_0
    const-string v0, ""

    .line 40
    .line 41
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getImgFiles()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getImgFiles()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getImgFiles()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getImgFiles()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/heytap/msp/mobad/api/params/INativeAdFile;

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/heytap/msp/mobad/api/params/INativeAdFile;->getUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-object v0

    .line 56
    :cond_1
    const-string v0, ""

    .line 57
    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
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

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->nativeAdvanceData:Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->oppoRecyclerAdLoader:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->oppoRecyclerAdLoader:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

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
