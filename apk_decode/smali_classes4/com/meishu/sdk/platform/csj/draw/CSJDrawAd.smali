.class public Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;
.super Lcom/meishu/sdk/core/ad/draw/DrawAd;
.source "SourceFile"


# instance fields
.field private ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

.field private drawAdListener:Lcom/meishu/sdk/core/ad/draw/a;

.field private sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/ad/draw/a;Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p3, v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->drawAdListener:Lcom/meishu/sdk/core/ad/draw/a;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;->destroy()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getDrawAdListener()Lcom/meishu/sdk/core/ad/draw/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->drawAdListener:Lcom/meishu/sdk/core/ad/draw/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;

    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-direct {v1, v2, v0, p0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 18
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;

    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    iget-object v4, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-direct {v2, v3, v4, p0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->showAd(Landroid/view/ViewGroup;)V

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
