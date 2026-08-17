.class public abstract Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

.field private hasExposed:Z

.field private final initAdContainer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;-><init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "CUSTOM"

    invoke-direct {p0, p1, p2, v0}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;-><init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 5
    iput-object p2, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->initAdContainer:Ljava/lang/Class;

    return-void
.end method

.method private getInitAdContainer(Ljava/lang/Class;Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-class v1, Landroid/content/Context;

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public abstract bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
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
.end method

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p4, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    const-class v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    invoke-static {p2, p4, v0}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    move-result-object p2

    const/4 p4, 0x1

    .line 5
    aget-object p4, p2, p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_3

    .line 6
    aget-object p4, p2, v0

    .line 7
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 9
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    new-instance v2, Lcom/meishu/sdk/core/view/TouchAdContainer;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v3, Lcom/meishu/sdk/core/view/TouchPositionListener;

    invoke-direct {v3, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 13
    iget-object v3, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->initAdContainer:Ljava/lang/Class;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->getInitAdContainer(Ljava/lang/Class;Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_2

    .line 14
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/view/View;->setId(I)V

    .line 18
    invoke-virtual {p2, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object p4, v2

    move-object v1, v3

    goto :goto_1

    .line 19
    :cond_3
    instance-of p2, p4, Lcom/meishu/sdk/core/view/TouchAdContainer;

    if-eqz p2, :cond_4

    .line 20
    move-object p2, p4

    check-cast p2, Lcom/meishu/sdk/core/view/TouchAdContainer;

    new-instance v2, Lcom/meishu/sdk/core/view/TouchPositionListener;

    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    invoke-virtual {p2, v2}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 21
    :cond_4
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->initAdContainer:Ljava/lang/Class;

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    .line 24
    :catch_0
    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v1, :cond_7

    move-object p4, v1

    .line 27
    :cond_7
    invoke-virtual {p0, p1, p4, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    return-void
.end method

.method public getAdWraper()Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->adWrapper:Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

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

.method public getCustomVideo()Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaView()Landroid/view/View;
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

    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

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

.method public isHasExposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->hasExposed:Z

    .line 2
    .line 3
    return v0
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
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;->hasExposed:Z

    .line 2
    .line 3
    return-void
.end method
