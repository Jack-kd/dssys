.class public Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJNativeExpressAdDataAdapter"


# instance fields
.field private adListener:Lcom/meishu/sdk/core/ad/recycler/a;

.field private adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

.field private volatile hasExposed:Z

.field private recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

.field private ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 2
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
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 29
    .line 30
    instance-of p3, p1, Landroid/app/Activity;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p1, Landroid/app/Activity;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of p1, p1, Landroid/app/Activity;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_1
    if-eqz p1, :cond_3

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-nez p3, :cond_3

    .line 60
    .line 61
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 62
    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    new-instance v0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerExpressDisLikeCallback;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 68
    .line 69
    invoke-direct {v0, v1, p3, p4}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerExpressDisLikeCallback;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    instance-of p3, p3, Landroid/view/ViewGroup;

    .line 96
    .line 97
    if-eqz p3, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    check-cast p3, Landroid/view/ViewGroup;

    .line 104
    .line 105
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 126
    .line 127
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 132
    .line 133
    .line 134
    move-result-wide p3

    .line 135
    invoke-static {p2, p1, p3, p4}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_4
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

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

.method public getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getImageMode()I

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/16 v2, 0xf

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v1, v2, :cond_3

    .line 15
    .line 16
    if-eq v1, v3, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0xd

    .line 29
    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    const/16 v0, 0xb

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    return v3

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_4
    :goto_0
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

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

.method public getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :cond_1
    return v0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
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
    const-string v0, "CSJ"

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

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

.method public isHasExposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->hasExposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNativeExpress()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0x30d40

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v2, 0x2

    .line 33
    if-ne v2, v1, :cond_0

    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    return v3

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const v2, 0x186a0

    .line 40
    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    return v3

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_3
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setHasExposed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->hasExposed:Z

    .line 2
    .line 3
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
