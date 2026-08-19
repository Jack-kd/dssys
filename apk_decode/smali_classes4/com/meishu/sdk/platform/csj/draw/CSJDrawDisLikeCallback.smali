.class public Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# instance fields
.field private ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

.field private csjDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->csjDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onRefuse()V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;)V
    .locals 0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 16
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->csjDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->csjDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawDisLikeCallback;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
