.class public Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;
.super Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;
.source "SourceFile"


# instance fields
.field private bannerAd:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;-><init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;->bannerAd:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    :cond_1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/view/ViewGroup;)V

    return-void
.end method
